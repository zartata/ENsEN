package ensen.test;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.LinkedList;
import java.util.List;

import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.methods.GetMethod;
import org.dbpedia.spotlight.exceptions.AnnotationException;
import org.dbpedia.spotlight.model.DBpediaResource;
import org.dbpedia.spotlight.model.Text;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import ensen.entities.EnsenDBpediaResource;
import ensen.org.dbpedia.spotlight.evaluation.external.AnnotationClient;

/**
 * Simple web service-based annotation client for DBpedia Spotlight.
 *
 * @author Mazen ALSAREM
 */

public class MazenClient extends AnnotationClient {

	//private final static String API_URL = "http://jodaiber.dyndns.org:2222/";
	//private final static String API_URL = "http://http://localhost:2222/";	
	private final static String API_URL = "http://spotlight.dbpedia.org/";

	private static final double CONFIDENCE = 0.0;
	private static final int SUPPORT = 0;
	public boolean allCandidates = false;

	@Override
	public List<DBpediaResource> extract(Text text) throws AnnotationException {

		LOG.info("Querying API.");
		String spotlightResponse;
		try {
			GetMethod getMethod = new GetMethod(API_URL + "rest/annotate/?" + /*rest/candidates*/
			"confidence=" + CONFIDENCE + "&support=" + SUPPORT + "&text=" + URLEncoder.encode(text.text(), "utf-8"));
			getMethod.addRequestHeader(new Header("Accept", "application/json"));

			spotlightResponse = request(getMethod);
		} catch (UnsupportedEncodingException e) {
			throw new AnnotationException("Could not encode text.", e);
		}

		assert spotlightResponse != null;

		JSONObject resultJSON = null;
		JSONArray entities = null;

		try {
			resultJSON = new JSONObject(spotlightResponse);
			entities = resultJSON.getJSONArray("Resources");
		} catch (JSONException e) {
			throw new AnnotationException("Received invalid response from DBpedia Spotlight API.");
		}

		LinkedList<DBpediaResource> resources = new LinkedList<DBpediaResource>();
		for (int i = 0; i < entities.length(); i++) {
			try {
				JSONObject entity = entities.getJSONObject(i);
				resources.add(new DBpediaResource(entity.getString("@URI"), Integer.parseInt(entity.getString("@support"))));

			} catch (JSONException e) {
				LOG.error("JSON exception " + e);
			}

		}

		return resources;
	}

	public static void main(String[] args) throws Exception {

		/*
		        DBpediaSpotlightClient c = new DBpediaSpotlightClient ();

		//        File input = new File("/home/pablo/eval/manual/AnnotationText.txt");
		//        File output = new File("/home/pablo/eval/manual/systems/Spotlight.list");

		        //File input = new File("/home/pablo/eval/cucerzan/cucerzan.txt");
		        //File output = new File("/home/pablo/eval/cucerzan/systems/cucerzan-Spotlight.set");

		//        File input = new File("/home/pablo/eval/wikify/gold/WikifyAllInOne.txt");
		//        File output = new File("/home/pablo/eval/wikify/systems/Spotlight.list");

		        File input = new File("/home/pablo/eval/csaw/gold/paragraphs.txt");
		        File output = new File("/home/pablo/eval/csaw/systems/Spotlight.list");

		        c.evaluate(input, output);


		//        SpotlightClient c = new SpotlightClient(api_key);
		//        List<DBpediaResource> response = c.extract(new Text(text));
		//        PrintWriter out = new PrintWriter(manualEvalDir+"AnnotationText-Spotlight.txt.set");
		//        System.out.println(response);

		   */}

	@Override
	public List<EnsenDBpediaResource> ensenExtract(Text text) throws AnnotationException {
		// TODO Auto-generated method stub
		return null;
	}

}
