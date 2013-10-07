/**
 * Copyright 2011 Pablo Mendes, Max Jakob, Joachim Daiber
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.dbpedia.spotlight.model;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.StopAnalyzer;
import org.dbpedia.spotlight.exceptions.ConfigurationException;

import java.io.*;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.*;

/**
 * Holds all configuration parameters needed to run the DBpedia Spotlight Server
 * Reads values from a config file
 * (TODO) and should make tests to validate if the inputs are acceptable, failing gracefully and early.
 *
 * @author pablomendes
 */
public class SpotlightConfiguration {

	private static Log LOG = LogFactory.getLog(SpotlightConfiguration.class);

	public final static String DEFAULT_TEXT = "";
	public final static String DEFAULT_CONFIDENCE = "0.5";
	public final static String DEFAULT_SUPPORT = "30";
	public final static String DEFAULT_TYPES = "";
	public final static String DEFAULT_SPARQL = "";
	public final static String DEFAULT_POLICY = "whitelist";
	public final static String DEFAULT_COREFERENCE_RESOLUTION = "true";

    public enum DisambiguationPolicy { Document,Occurrences,CuttingEdge,Default }

    public String language;

	protected String contextIndexDirectory = "";
    protected String candidateMapDirectory = "";

	protected List<Double> similarityThresholds;
	protected String similarityThresholdsFile = "similarity-thresholds.txt";
    protected String taggerFile = "";

    protected String stopWordsFile = "";
    protected Set<String> stopWords = new HashSet<String>();

	protected String serverURI       = "http://localhost:2222/rest/";
	protected String sparqlMainGraph = "http://dbpedia.org/sparql";
	protected String sparqlEndpoint  = "http://dbpedia.org";

    protected long maxCacheSize = Long.MAX_VALUE;

	public String getServerURI() {
		return serverURI;
	}

	public String getContextIndexDirectory() {
		return contextIndexDirectory;
	}

    public String getCandidateIndexDirectory() {
        return candidateMapDirectory;
    }

	public List<Double> getSimilarityThresholds() {
		return similarityThresholds;
	}

	public String getSparqlMainGraph() {
		return sparqlMainGraph;
	}

	public String getSparqlEndpoint() {
		return sparqlEndpoint;
	}

	public String getTaggerFile() {
		return taggerFile;
	}

    public Set<String> getStopWords() {
        return stopWords;
    }

    public long getMaxCacheSize() {
		return maxCacheSize;
	}

    DBpediaResourceFactory dbpediaResourceFactory = null;
    public DBpediaResourceFactory getDBpediaResourceFactory() {
        return dbpediaResourceFactory;
    }

    public void createDBpediaResourceFactory(String driver, String connector, String user, String password) {
        dbpediaResourceFactory = new DBpediaResourceFactorySQL(driver, connector, user, password);
    }

	Analyzer analyzer = null;

	/**
	 * The Spotter configuration is read with the SpotlightConfiguration.
	 * However, to make the configuration more modular and readable, the
	 * configuration for Spotter and spot selection are stored in this object.
	 */
	protected SpotterConfiguration spotterConfiguration;

	public SpotterConfiguration getSpotterConfiguration() {
		return spotterConfiguration;
	}


    public Analyzer getAnalyzer() {
        return analyzer;
    }

    public SpotlightConfiguration(String fileName) throws ConfigurationException {

		//read config properties
		Properties config = new Properties();
		try {
			config.load(new FileInputStream(new File(fileName)));
		} catch (IOException e) {
			throw new ConfigurationException("Cannot find configuration file "+fileName,e);
		}

		//Read the spotter configuration from the properties file
		spotterConfiguration = new SpotterConfiguration(fileName);

		//set spotterFile, indexDir...
		contextIndexDirectory = config.getProperty("org.dbpedia.spotlight.index.dir","").trim();
		if(contextIndexDirectory==null || !new File(contextIndexDirectory).isDirectory()) {
			throw new ConfigurationException("Cannot find index directory "+ contextIndexDirectory);
		}

		//TODO use separate candidate map
		candidateMapDirectory = config.getProperty("org.dbpedia.spotlight.candidateMap.dir","").trim();
		if(candidateMapDirectory==null || !new File(candidateMapDirectory).isDirectory()) {
			LOG.info("Could not use candidateMap.dir, using index.dir both for context and candidate searching.");
            candidateMapDirectory = contextIndexDirectory;
		}

		try {
			BufferedReader r = new BufferedReader(new FileReader(new File(contextIndexDirectory, similarityThresholdsFile)));
			String line;
			similarityThresholds = new ArrayList<Double>();
			while((line = r.readLine()) != null) {
				similarityThresholds.add(Double.parseDouble(line));
			}
		} catch (FileNotFoundException e) {
			throw new ConfigurationException("Similarity threshold file '"+similarityThresholdsFile+"' not found in index directory "+ contextIndexDirectory,e);
		} catch (NumberFormatException e) {
			throw new ConfigurationException("Error parsing similarity value in '"+ contextIndexDirectory +"/"+similarityThresholdsFile,e);
		} catch (IOException e) {
			throw new ConfigurationException("Error reading '"+ contextIndexDirectory +"/"+similarityThresholdsFile,e);
		}

        taggerFile = config.getProperty("org.dbpedia.spotlight.tagging.hmm","").trim();
        if(taggerFile==null || !new File(taggerFile).isFile()) {
            throw new ConfigurationException("Cannot find POS tagger model file "+taggerFile);
        }

        language = config.getProperty("org.dbpedia.spotlight.data.stopWords", "English");

        stopWordsFile = config.getProperty("org.dbpedia.spotlight.data.stopWords."+language.toLowerCase(),"").trim();
        if( (stopWordsFile==null) || !new File(stopWordsFile.trim()).isFile()) {
            LOG.warn("Cannot find stopwords file '"+stopWordsFile+"'. Using default Lucene English StopWords.");
            stopWords = StopAnalyzer.ENGLISH_STOP_WORDS_SET;
        } else {
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(stopWordsFile.trim()));
                String line = null;
                while ((line = bufferedReader.readLine()) != null) {
                    stopWords.add(line.trim());
                }
                bufferedReader.close();
            } catch (Exception e1) {
                LOG.error("Could not read stopwords file.");
                stopWords = StopAnalyzer.ENGLISH_STOP_WORDS_SET;
            }
        }

        analyzer = Factory.analyzer().from(config.getProperty("org.dbpedia.spotlight.lucene.analyzer","SnowballAnalyzer"), language, stopWords);

		serverURI = config.getProperty("org.dbpedia.spotlight.web.rest.uri","").trim();
		if (serverURI!=null && !serverURI.endsWith("/")) {
			serverURI = serverURI.concat("/");
		}
		try {
			new URI(serverURI);
		} catch (URISyntaxException e) {
			throw new ConfigurationException("Server URI not valid.",e);
		}

		sparqlEndpoint = config.getProperty("org.dbpedia.spotlight.sparql.endpoint","").trim(); //TODO how to fail gracefully for endpoint?
		sparqlMainGraph = config.getProperty("org.dbpedia.spotlight.sparql.graph","").trim();;

        String maxCacheSizeString = config.getProperty("jcs.default.cacheattributes.MaxObjects","").trim();
        try {
            maxCacheSize = new Long(maxCacheSizeString.trim());
        } catch (Exception ignored) { LOG.error(ignored); }


        /**
         * These configuration parameters are for an alternative way to load DBpediaResources (from an in-memory database instead of Lucene)
         */
        String coreDbType = config.getProperty("org.dbpedia.spotlight.core.database", "").trim();
        String coreJdbcDriver = config.getProperty("org.dbpedia.spotlight.core.database.jdbcdriver","").trim();
		String coreDbConnector  = config.getProperty("org.dbpedia.spotlight.core.database.connector","").trim();
		String coreDbUser = config.getProperty("org.dbpedia.spotlight.core.database.user","").trim();
		String coreDbPassword = config.getProperty("org.dbpedia.spotlight.core.database.password","").trim();
        try {
            if (coreDbType.equals("jdbc")) {
                LOG.info("Core database from JDBC: "+coreDbConnector);
                createDBpediaResourceFactory(coreJdbcDriver,coreDbConnector,coreDbUser,coreDbPassword);
            } else {
                //else we leave the factory null, in that case, lucene will be used in BaseSearcher
                LOG.info("Core database from Lucene: "+contextIndexDirectory);
            }
        } catch (Exception e) {
            LOG.warn("Tried to use core database provided, but failed. Will use Lucene index as core database.",e);
        }
		//...

	}



}