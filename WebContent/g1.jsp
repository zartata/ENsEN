<%@page import="java.io.IOException"%>
<%@page import="java.net.MalformedURLException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#gb {
	font: 13px/27px Arial, sans-serif;
	height: 102px
}

#gbz,#gbg {
	position: absolute;
	white-space: nowrap;
	top: 0;
	height: 30px;
	z-index: 1000
}

#gbz {
	left: 0;
	padding-left: 4px
}

#gbg {
	right: 0;
	padding-right: 5px
}

#gbs {
	background: transparent;
	position: absolute;
	top: -999px;
	visibility: hidden;
	z-index: 998
}

.gbto #gbs {
	background: #fff
}

#gbx3,#gbx4 {
	background-color: #2d2d2d;
	background-image: none;
	_background-image: none;
	background-position: 0 -138px;
	background-repeat: repeat-x;
	border-bottom: 1px solid #000;
	font-size: 24px;
	height: 29px;
	_height: 30px;
	opacity: 1;
	filter: alpha(opacity = 100);
	position: absolute;
	top: 0;
	width: 100%;
	z-index: 990
}

#gbx3 {
	left: 0
}

#gbx4 {
	right: 0
}

#gbb {
	position: relative
}

#gbbw {
	left: 0;
	position: absolute;
	top: 102px;
	width: 100%
}

.gbtcb {
	position: absolute;
	visibility: hidden
}

#gbz .gbtcb {
	right: 0
}

#gbg .gbtcb {
	left: 0
}

.gbxx {
	display: none !important
}

.gbxo {
	opacity: 0 !important;
	filter: alpha(opacity = 0) !important
}

.gbm {
	position: absolute;
	z-index: 999;
	top: -999px;
	visibility: hidden;
	text-align: left;
	border: 1px solid #bebebe;
	background: #fff;
	-moz-box-shadow: -1px 1px 1px rgba(0, 0, 0, .2);
	-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	box-shadow: 0 2px 4px rgba(0, 0, 0, .2)
}

.gbrtl .gbm {
	-moz-box-shadow: 1px 1px 1px rgba(0, 0, 0, .2)
}

.gbto .gbm,.gbto #gbs {
	top: 51px;
	visibility: visible
}

#gbz .gbm,#gbz #gbs {
	left: 0
}

#gbg .gbm,#gbg #gbs {
	right: 0
}

.gbxms {
	background-color: #ccc;
	display: block;
	position: absolute;
	z-index: 1;
	top: -1px;
	left: -2px;
	right: -2px;
	bottom: -2px;
	opacity: .4;
	-moz-border-radius: 3px;
	filter: progid:DXImageTransform.Microsoft.Blur(pixelradius=5 );
	*opacity: 1;
	*top: -2px;
	*left: -5px;
	*right: 5px;
	*bottom: 4px;
	-ms-filter: "progid:DXImageTransform.Microsoft.Blur(pixelradius=5)";
	opacity: 1\0/;
	top: -4px\0/;
	left: -6px\0/;
	right: 5px\0/;
	bottom: 4px\0/
}

.gbma {
	position: relative;
	top: -1px;
	border-style: solid dashed dashed;
	border-color: transparent;
	border-top-color: #c0c0c0;
	display: -moz-inline-box;
	display: inline-block;
	font-size: 0;
	height: 0;
	line-height: 0;
	width: 0;
	border-width: 3px 3px 0;
	padding-top: 1px;
	left: 4px
}

#gbztms1,#gbi4m1,#gbi4s,#gbi4t {
	zoom: 1
}

.gbtc,.gbmc,.gbmcc {
	display: block;
	list-style: none;
	margin: 0;
	padding: 0
}

.gbmc {
	background: #fff;
	padding: 10px 0;
	position: relative;
	z-index: 2;
	zoom: 1
}

.gbt {
	position: relative;
	display: -moz-inline-box;
	display: inline-block;
	line-height: 27px;
	padding: 0;
	vertical-align: top
}

.gbt {
	*display: inline
}

.gbto {
	box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	-moz-box-shadow: 0 2px 4px rgba(0, 0, 0, .2);
	-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .2)
}

.gbzt,.gbgt {
	cursor: pointer;
	display: block;
	text-decoration: none !important
}

span#gbg6,span#gbg4 {
	cursor: default
}

.gbts {
	border-left: 1px solid transparent;
	border-right: 1px solid transparent;
	display: block;
	*display: inline-block;
	padding: 0 5px;
	position: relative;
	z-index: 1000
}

.gbts {
	*display: inline
}

.gbzt .gbts {
	display: inline;
	zoom: 1
}

.gbto .gbts {
	background: #fff;
	border-color: #bebebe;
	color: #36c;
	padding-bottom: 1px;
	padding-top: 2px
}

.gbz0l .gbts {
	color: #fff;
	font-weight: bold
}

.gbtsa {
	padding-right: 9px
}

#gbz .gbzt,#gbz .gbgt,#gbg .gbgt {
	color: #ccc !important
}

.gbtb2 {
	display: block;
	border-top: 2px solid transparent
}

.gbto .gbzt .gbtb2,.gbto .gbgt .gbtb2 {
	border-top-width: 0
}

.gbtb .gbts {
	background: url(//ssl.gstatic.com/gb/images/h_bedf916a.png);
	_background: url(//ssl.gstatic.com/gb/images/h8_3dd87cd8.png);
	background-position: -27px -22px;
	border: 0;
	font-size: 0;
	padding: 29px 0 0;
	*padding: 27px 0 0;
	width: 1px
}

.gbzt:hover,.gbzt:focus,.gbgt-hvr,.gbgt:focus {
	background-color: transparent;
	background-image: none;
	_background-image: none;
	background-position: 0 -102px;
	background-repeat: repeat-x;
	outline: none;
	text-decoration: none !important
}

.gbpdjs .gbto .gbm {
	min-width: 99%
}

.gbz0l .gbtb2 {
	border-top-color: transparent !important
}

#gbi4s,#gbi4s1 {
	font-weight: bold
}

#gbg6.gbgt-hvr,#gbg6.gbgt:focus {
	background-color: transparent;
	background-image: none
}

.gbg4a {
	font-size: 0;
	line-height: 0
}

.gbg4a .gbts {
	padding: 27px 5px 0;
	*padding: 25px 5px 0
}

.gbto .gbg4a .gbts {
	padding: 29px 5px 1px;
	*padding: 27px 5px 1px
}

#gbi4i,#gbi4id {
	left: 5px;
	border: 0;
	height: 24px;
	position: absolute;
	top: 1px;
	width: 24px
}

.gbto #gbi4i,.gbto #gbi4id {
	top: 3px
}

.gbi4p {
	display: block;
	width: 24px
}

#gbi4id {
	background-position: -44px -101px
}

#gbmpid {
	background-position: 0 0
}

#gbmpi,#gbmpid {
	border: none;
	display: inline-block;
	height: 48px;
	width: 48px
}

#gbmpiw {
	display: inline-block;
	line-height: 9px;
	padding-left: 20px;
	margin-top: 10px;
	position: relative
}

#gbmpi,#gbmpid,#gbmpiw {
	*display: inline
}

#gbg5 {
	font-size: 0
}

#gbgs5 {
	padding: 5px !important
}

.gbto #gbgs5 {
	padding: 7px 5px 6px !important
}

#gbi5 {
	background: url(//ssl.gstatic.com/gb/images/h_bedf916a.png);
	_background: url(//ssl.gstatic.com/gb/images/h8_3dd87cd8.png);
	background-position: 0 0;
	display: block;
	font-size: 0;
	height: 17px;
	width: 16px
}

.gbto #gbi5 {
	background-position: -6px -22px
}

.gbn .gbmt,.gbn .gbmt:visited,.gbnd .gbmt,.gbnd .gbmt:visited {
	color: #dd8e27 !important
}

.gbf .gbmt,.gbf .gbmt:visited {
	color: #900 !important
}

.gbmt,.gbml1,.gbmlb,.gbmt:visited,.gbml1:visited,.gbmlb:visited {
	color: #36c !important;
	text-decoration: none !important
}

.gbmt,.gbmt:visited {
	display: block
}

.gbml1,.gbmlb,.gbml1:visited,.gbmlb:visited {
	display: inline-block;
	margin: 0 10px
}

.gbml1,.gbmlb,.gbml1:visited,.gbmlb:visited {
	*display: inline
}

.gbml1,.gbml1:visited {
	padding: 0 10px
}

.gbml1-hvr,.gbml1:focus {
	outline: none;
	text-decoration: underline !important
}

#gbpm .gbml1 {
	display: inline;
	margin: 0;
	padding: 0;
	white-space: nowrap
}

.gbmlb,.gbmlb:visited {
	line-height: 27px
}

.gbmlb-hvr,.gbmlb:focus {
	outline: none;
	text-decoration: underline !important
}

.gbmlbw {
	color: #ccc;
	margin: 0 10px
}

.gbmt {
	padding: 0 20px
}

.gbmt:hover,.gbmt:focus {
	background: #eee;
	cursor: pointer;
	outline: 0 solid black;
	text-decoration: none !important
}

.gbm0l,.gbm0l:visited {
	color: #000 !important;
	font-weight: bold
}

.gbmh {
	border-top: 1px solid #bebebe;
	font-size: 0;
	margin: 10px 0
}

#gbd4 .gbmc {
	background: #f5f5f5;
	padding-top: 0
}

#gbd4 .gbsbic::-webkit-scrollbar-track:vertical {
	background-color: #f5f5f5;
	margin-top: 2px
}

#gbmpdv {
	background: #fff;
	border-bottom: 1px solid #bebebe;
	-moz-box-shadow: 0 2px 4px rgba(0, 0, 0, .12);
	-o-box-shadow: 0 2px 4px rgba(0, 0, 0, .12);
	-webkit-box-shadow: 0 2px 4px rgba(0, 0, 0, .12);
	box-shadow: 0 2px 4px rgba(0, 0, 0, .12);
	position: relative;
	z-index: 1
}

#gbd4 .gbmh {
	margin: 0
}

.gbmtc {
	padding: 0;
	margin: 0;
	line-height: 27px
}

.GBMCC:last-child:after,#GBMPAL:last-child:after {
	content: '\0A\0A';
	white-space: pre;
	position: absolute
}

#gbmps {
	*zoom: 1
}

#gbd4 .gbpc,#gbmpas .gbmt {
	line-height: 17px
}

#gbd4 .gbpgs .gbmtc {
	line-height: 27px
}

#gbd4 .gbmtc {
	border-bottom: 1px solid #bebebe
}

#gbd4 .gbpc {
	display: inline-block;
	margin: 16px 0 10px;
	padding-right: 50px;
	vertical-align: top
}

#gbd4 .gbpc {
	*display: inline
}

.gbpc .gbps,.gbpc .gbps2 {
	display: block;
	margin: 0 20px
}

#gbmplp.gbps {
	margin: 0 10px
}

.gbpc .gbps {
	color: #000;
	font-weight: bold
}

.gbpc .gbpd {
	margin-bottom: 5px
}

.gbpd .gbmt,.gbpd .gbps {
	color: #666 !important
}

.gbpd .gbmt {
	opacity: .4;
	filter: alpha(opacity = 40)
}

.gbps2 {
	color: #666;
	display: block
}

.gbp0 {
	display: none
}

.gbp0 .gbps2 {
	font-weight: bold
}

#gbd4 .gbmcc {
	margin-top: 5px
}

.gbpmc {
	background: #fef9db
}

.gbpmc .gbpmtc {
	padding: 10px 20px
}

#gbpm {
	border: 0;
	*border-collapse: collapse;
	border-spacing: 0;
	margin: 0;
	white-space: normal
}

#gbpm .gbpmtc {
	border-top: none;
	color: #000 !important;
	font: 11px Arial, sans-serif
}

#gbpms {
	*white-space: nowrap
}

.gbpms2 {
	font-weight: bold;
	white-space: nowrap
}

#gbmpal {
	*border-collapse: collapse;
	border-spacing: 0;
	border: 0;
	margin: 0;
	white-space: nowrap;
	width: 100%
}

.gbmpala,.gbmpalb {
	font: 13px Arial, sans-serif;
	line-height: 27px;
	padding: 10px 20px 0;
	white-space: nowrap
}

.gbmpala {
	padding-left: 0;
	text-align: left
}

.gbmpalb {
	padding-right: 0;
	text-align: right
}

#gbmpasb .gbps {
	color: #000
}

#gbmpal .gbqfbb {
	margin: 0 20px
}

.gbp0 .gbps {
	*display: inline
}

a.gbiba {
	margin: 8px 20px 10px
}

.gbmpiaw {
	display: inline-block;
	padding-right: 10px;
	margin-bottom: 6px;
	margin-top: 10px
}

.gbxv {
	visibility: hidden
}

.gbmpiaa {
	display: block;
	margin-top: 10px
}

.gbmpia {
	border: none;
	display: block;
	height: 48px;
	width: 48px
}

.gbmpnw {
	display: inline-block;
	height: auto;
	margin: 16px 0 18px;
	vertical-align: top
}

.gbqfb,.gbqfba,.gbqfbb {
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	cursor: default !important;
	display: inline-block;
	font-weight: bold;
	height: 29px;
	line-height: 29px;
	min-width: 54px;
	*min-width: 70px;
	padding: 0 8px;
	text-align: center;
	text-decoration: none !important;
	-moz-user-select: none;
	-webkit-user-select: none
}

.gbqfb:focus,.gbqfba:focus,.gbqfbb:focus {
	border: 1px solid #4d90fe;
	-moz-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.5);
	-webkit-box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.5);
	box-shadow: inset 0 0 0 1px rgba(255, 255, 255, 0.5);
	outline: none
}

.gbqfb-hvr:focus,.gbqfba-hvr:focus,.gbqfbb-hvr:focus {
	-webkit-box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0, 0, 0, .1);
	-moz-box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0, 0, 0, .1);
	box-shadow: inset 0 0 0 1px #fff, 0 1px 1px rgba(0, 0, 0, .1)
}

.gbqfb-no-focus:focus {
	border: 1px solid #3079ed;
	-moz-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none
}

.gbqfb-hvr,.gbqfba-hvr,.gbqfbb-hvr {
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .1)
}

.gbqfb::-moz-focus-inner,.gbqfba::-moz-focus-inner,.gbqfbb::-moz-focus-inner
	{
	border: 0
}

.gbqfba,.gbqfbb {
	border: 1px solid #dcdcdc;
	border-color: rgba(0, 0, 0, .1);
	color: #444 !important;
	font-size: 11px
}

.gbqfb {
	background-color: #4d90fe;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#4d90fe),
		to(#4787ed) );
	background-image: -webkit-linear-gradient(top, #4d90fe, #4787ed);
	background-image: -moz-linear-gradient(top, #4d90fe, #4787ed);
	background-image: -ms-linear-gradient(top, #4d90fe, #4787ed);
	background-image: -o-linear-gradient(top, #4d90fe, #4787ed);
	background-image: linear-gradient(top, #4d90fe, #4787ed);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#4d90fe',
		EndColorStr='#4787ed' );
	border: 1px solid #3079ed;
	color: #fff !important;
	margin: 0 0
}

.gbqfb-hvr {
	border-color: #2f5bb7
}

.gbqfb-hvr:focus {
	border-color: #2f5bb7
}

.gbqfb-hvr,.gbqfb-hvr:focus {
	background-color: #357ae8;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#4d90fe),
		to(#357ae8) );
	background-image: -webkit-linear-gradient(top, #4d90fe, #357ae8);
	background-image: -moz-linear-gradient(top, #4d90fe, #357ae8);
	background-image: -ms-linear-gradient(top, #4d90fe, #357ae8);
	background-image: -o-linear-gradient(top, #4d90fe, #357ae8);
	background-image: linear-gradient(top, #4d90fe, #357ae8)
}

.gbqfb:active {
	background-color: inherit;
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3)
}

.gbqfba {
	background-color: #f5f5f5;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f5f5f5, #f1f1f1);
	background-image: -moz-linear-gradient(top, #f5f5f5, #f1f1f1);
	background-image: -ms-linear-gradient(top, #f5f5f5, #f1f1f1);
	background-image: -o-linear-gradient(top, #f5f5f5, #f1f1f1);
	background-image: linear-gradient(top, #f5f5f5, #f1f1f1);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f5f5f5',
		EndColorStr='#f1f1f1' )
}

.gbqfba-hvr,.gbqfba-hvr:active {
	background-color: #f8f8f8;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #f1f1f1);
	background-image: -moz-linear-gradient(top, #f8f8f8, #f1f1f1);
	background-image: -ms-linear-gradient(top, #f8f8f8, #f1f1f1);
	background-image: -o-linear-gradient(top, #f8f8f8, #f1f1f1);
	background-image: linear-gradient(top, #f8f8f8, #f1f1f1);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',
		EndColorStr='#f1f1f1' )
}

.gbqfbb {
	background-color: #fff;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#fbfbfb) );
	background-image: -webkit-linear-gradient(top, #fff, #fbfbfb);
	background-image: -moz-linear-gradient(top, #fff, #fbfbfb);
	background-image: -ms-linear-gradient(top, #fff, #fbfbfb);
	background-image: -o-linear-gradient(top, #fff, #fbfbfb);
	background-image: linear-gradient(top, #fff, #fbfbfb);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff',
		EndColorStr='#fbfbfb' )
}

.gbqfbb-hvr,.gbqfbb-hvr:active {
	background-color: #fff;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#fff),
		to(#f8f8f8) );
	background-image: -webkit-linear-gradient(top, #fff, #f8f8f8);
	background-image: -moz-linear-gradient(top, #fff, #f8f8f8);
	background-image: -ms-linear-gradient(top, #fff, #f8f8f8);
	background-image: -o-linear-gradient(top, #fff, #f8f8f8);
	background-image: linear-gradient(top, #fff, #f8f8f8);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff',
		EndColorStr='#f8f8f8' )
}

.gbqfba-hvr,.gbqfba-hvr:active,.gbqfbb-hvr,.gbqfbb-hvr:active {
	border-color: #c6c6c6;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	color: #222 !important
}

.gbqfba:active,.gbqfbb:active {
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1)
}

#gbql,#gbgsi,#gbgsa,.gbqfi,.gbmai,.gbp0i,.gbmppci,.gbqfh #gbql {
	background-image: url('//ssl.gstatic.com/gb/images/k1_a31af7ac.png');
	background-size: 294px 45px
}

@media screen and (min-resolution:1.25dppx) , screen and
		(-o-min-device-pixel-ratio:5/4) , screen and
		(-webkit-min-device-pixel-ratio:1.25) , screen and
	(min-device-pixel-ratio:1.25) {
	#gbql,#gbgsi,#gbgsa,.gbqfi,.gbmai,.gbp0i,.gbmppci,.gbqfh #gbql {
		background-image: url('//ssl.gstatic.com/gb/images/k2_aca6bcc6.png')
	}
}

#gbd1,#gbd1 .gbmc {
	width: 440px;
	height: 190px
}

#gbd3,#gbd3 .gbmc {
	width: 440px;
	height: 8em
}

#gb {
	height: 102px;
	-moz-user-select: -moz-none;
	-o-user-select: none;
	-webkit-user-select: none;
	user-select: none
}

#gbbw {
	top: 102px;
	min-width: 980px;
}

#gb.gbet #gbbw,#gb.gbeti #gbbw {
	min-width: 836px;
}

#gb.gbeu #gbbw,#gb.gbeui #gbbw {
	min-width: 780px;
}

.gbxx {
	display: none !important
}

#gbq,#gbu {
	position: absolute;
	top: 0px;
	white-space: nowrap
}

#gbu {
	height: 71px
}

#gbu,#gbq1,#gbq3 {
	z-index: 987
}

#gbq {
	left: 0;
	_overflow: hidden;
	width: 100%;
	z-index: 986
}

#gbq2 {
	top: 0px;
	z-index: 986
}

#gbu {
	right: 0;
	height: 30px;
	margin-right: 28px;
	padding-bottom: 0;
	padding-top: 20px
}

#gbx1,#gbx2 {
	background: #f1f1f1;
	background: -webkit-gradient(radial, 100 36, 0, 100 -40, 120, from(#fafafa),
		to(#f1f1f1) ), #f1f1f1;
	border-bottom: 1px solid #666;
	border-color: #e5e5e5;
	height: 71px;
	position: absolute;
	top: 0px;
	width: 100%;
	z-index: 985;
	min-width: 980px;
}

#gb.gbet #gbx1,#gb.gbeti #gbx1 {
	min-width: 836px;
}

#gb.gbeu #gbx1,#gb.gbeui #gbx1 {
	min-width: 780px;
}

#gbx1.gbxngh,#gbx2.gbxngh {
	background: -webkit-gradient(radial, 100 36, 0, 100 -40, 120, from(#ffffff),
		to(#f1f1f1) ), #f1f1f1
}

#gbx1 {
	left: 0
}

#gbx2 {
	right: 0
}

#gbq1 {
	left: 0;
	margin: 0;
	padding: 0;
	margin-left: 16px;
	position: absolute
}

.gbes#gbq1 {
	margin-left: 0
}

#gbq3 {
	left: 126px;
	padding-bottom: 0;
	padding-top: 20px;
	position: absolute;
	top: 0px
}

#gbql {
	background-repeat: no-repeat;
	background-position: -63px 0;
	display: block;
	height: 37px;
	width: 95px
}

.gbqla {
	display: inline-block;
	outline: none;
	position: relative
}

.gbqla2 {
	outline: none
}

.gbqlca {
	cursor: pointer;
	cursor: hand;
	height: 100%;
	position: absolute;
	top: 0;
	width: 100%;
	left: 0
}

#gbqlt {
	border: 0;
	border-collapse: collapse;
	border-spacing: 0;
	margin: 0
}

#gbqlw {
	display: table-cell;
	height: 71px;
	padding: 0;
	padding-right: 16px;
	position: relative;
	vertical-align: middle
}

#gbqld {
	border: none;
	display: block
}

.gbqldr {
	max-height: 71px;
	max-width: 160px
}

#gog {
	height: 99px
}

.gbh {
	border-top: none
}

.gbpl,.gbpr,#gbpx1,#gbpx2 {
	border-top: none !important;
	top: 102px !important
}

.gbpl,.gbpr {
	margin-top: 4px
}

.gbi5t {
	color: #666;
	display: block;
	margin: 1px 15px;
	text-shadow: none
}

#gbq2 {
	display: block;
	margin-left: 126px;
	padding-bottom: 0;
	padding-top: 20px
}

#gbqf {
	display: block;
	margin: 0;
	max-width: 572px;
	min-width: 572px;
	white-space: nowrap
}

.gbexxl#gbq2 #gbqf,.gbexxli#gb #gbqf,.gbexl#gbq2 #gbqf,.gbexli#gb #gbqf
	{
	max-width: 572px
}

.gbet#gbq2 #gbqf,.gbeti#gb #gbqf {
	max-width: 434px;
	min-width: 434px
}

.gbeu#gbqf,.gbeui#gb #gbqf {
	max-width: 319px;
	min-width: 319px
}

.gbqff {
	border: none;
	display: inline-block;
	margin: 0;
	padding: 0;
	vertical-align: top;
	width: 100%
}

.gbqff {
	*display: inline
}

.gbqfqw,#gbqfb,.gbqfwa {
	vertical-align: top
}

#gbqfaa,#gbqfab,#gbqfqwb {
	position: absolute
}

#gbqfaa {
	left: 0
}

#gbqfab {
	right: 0
}

.gbqfqwb,.gbqfqwc {
	right: 0;
	left: 0
}

.gbqfqwb {
	padding: 0 8px
}

#gbqfbw {
	margin: 0 15px;
	display: inline-block;
	vertical-align: top
}

#gbqfbw {
	*display: inline
}

.gbqfi {
	background-position: -33px 0;
	display: inline-block;
	height: 13px;
	margin: 7px 19px;
	width: 14px
}

.gbqfi {
	*display: inline
}

.gbqfqw {
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	-moz-border-radius: 1px;
	-webkit-border-radius: 1px;
	border-radius: 1px;
	height: 27px;
}

#gbqfqw {
	position: relative
}

.gbqfqw-hvr {
	border: 1px solid #b9b9b9;
	border-top: 1px solid #a0a0a0;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1)
}

.gbqfwa {
	display: inline-block;
	width: 100%
}

.gbqfwa {
	*display: inline
}

.gbqfwb {
	width: 40%
}

.gbqfwc {
	width: 60%
}

.gbqfwb .gbqfqw {
	margin-left: 10px
}

.gbqfqw:active,.gbqfqwf {
	border: 1px solid #4d90fe;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	outline: none
}

#gbqfq,#gbqfqb,#gbqfqc {
	background: transparent;
	border: none;
	height: 19px;
	margin-top: 4px;
	padding: 0;
	vertical-align: top;
	width: 100%
}

#gbqfq:focus,#gbqfqb:focus,#gbqfqc:focus {
	outline: none
}

.gbqfif,.gbqfsf {
	font: 16px arial, sans-serif
}

#gbqfbwa {
	display: none;
	text-align: center;
	height: 0
}

#gbqfbwa .gbqfba {
	margin: 16px 8px
}

#gbqfsa,#gbqfsb {
	font: bold 11px/27px Arial, sans-serif !important;
	vertical-align: top
}

.gbqfh #gbql {
	background-repeat: no-repeat;
	display: block;
	margin-bottom: 21px;
	margin-top: 25px
}

.gbqfh#gbpr .gbqpa {
	width: 71px
}

.gbqfh .gbes#gbql,.gbesi#gb .gbqfh #gbql {
	margin-bottom: 14px;
	margin-top: 18px
}

.gbqfh#gbq2 {
	z-index: 985
}

.gbqfh#gbq2 {
	margin: 0;
	margin-left: 0 !important;
	padding-top: 0;
	top: 281px
}

.gbqfh #gbqf {
	margin: auto;
	min-width: 534px;
	padding: 0 223px !important
}

.gbqfh #gbqfbw {
	display: none
}

.gbqfh #gbqfbwa {
	display: block
}

.gbqfh#gbq2 {
	padding-top: 0;
	top: 281px
}

.gbem .gbqfh#gbq2,.gbemi#gb .gbqfh#gbq2 {
	padding-top: 0;
	top: 281px
}

.gbes .gbqfh#gbq2,.gbesi#gb .gbqfh#gbq2 {
	padding-top: 0;
	top: 281px
}

#gbu .gbm,#gbu #gbs {
	right: 5px
}

.gbpdjs #gbu .gbm,.gbpdjs #gbu #gbs {
	right: 0
}

.gbpdjs #gbu #gbd4 {
	right: 5px
}

#gbu .gbgt,#gbu .gbgt:active {
	color: #666
}

#gbu .gbt {
	margin-left: 15px
}

#gbu .gbto {
	box-shadow: none;
	-moz-box-shadow: none;
	-webkit-box-shadow: none
}

#gbg4 {
	padding-right: 16px
}

#gbd1 .gbmc,#gbd3 .gbmc {
	padding: 0
}

#gbns {
	display: none
}

.gbmwc {
	right: 0;
	position: absolute;
	top: -999px;
	width: 440px;
	z-index: 999
}

#gbwc.gbmwca {
	top: 0
}

.gbmsg {
	display: none
}

.gbmab,.gbmac,.gbmad,.gbmae {
	left: 5px;
	border-style: dashed dashed solid;
	border-color: transparent;
	border-bottom-color: #bebebe;
	border-width: 0 10px 10px;
	cursor: default;
	display: -moz-inline-box;
	display: inline-block;
	font-size: 0;
	height: 0;
	line-height: 0;
	position: absolute;
	top: 0;
	width: 0;
	z-index: 1000
}

.gbmab,.gbmac {
	visibility: hidden
}

.gbmac {
	border-bottom-color: #fff
}

.gbto .gbmab,.gbto .gbmac {
	visibility: visible
}

.gbmai {
	background-position: -163px -40px;
	opacity: .8;
	font-size: 0;
	line-height: 0;
	position: absolute;
	height: 4px;
	width: 7px
}

.gbgt-hvr .gbmai {
	opacity: 1;
	filter: alpha(opacity = 100)
}

#gbgs3 {
	background-color: #f8f8f8;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -moz-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -ms-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -o-linear-gradient(top, #f8f8f8, #ececec);
	background-image: linear-gradient(top, #f8f8f8, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',
		EndColorStr='#ececec' );
	border: 1px solid #c6c6c6;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	padding: 0 10px;
	position: relative
}

#gbgsi {
	background-position: -163px 0;
	height: 10px;
	opacity: .8;
	position: absolute;
	top: 8px;
	_top: 10px;
	width: 10px;
	left: 10px
}

#gbgsa {
	background-position: -163px -15px;
	height: 11px;
	position: absolute;
	top: 8px;
	width: 10px;
	left: 100%
}

.gbgt-hvr #gbgsa {
	background-position: -18px -32px
}

#gbg3:active #gbgsa {
	background-position: 0 0
}

.gbgt-hvr #gbgsi {
	opacity: 1;
	filter: alpha(opacity = 100)
}

#gbgss {
	display: inline-block;
	width: 18px
}

.gbsbc #gbgss {
	width: 7px
}

#gbi3 {
	zoom: 1
}

.gbsbc #gbi3 {
	display: none
}

.gbgt-hvr #gbgs3,#gbg3:focus #gbgs3,#gbg3:active #gbgs3 {
	background-color: #ffffff;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #ffffff, #ececec);
	background-image: -moz-linear-gradient(top, #ffffff, #ececec);
	background-image: -ms-linear-gradient(top, #ffffff, #ececec);
	background-image: -o-linear-gradient(top, #ffffff, #ececec);
	background-image: linear-gradient(top, #ffffff, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff',
		EndColorStr='#ececec' );
	border-color: #bbb
}

#gbg3:active #gbgs3 {
	border-color: #b6b6b6
}

#gbg3:active #gbgs3 {
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .2)
}

#gbgs3 .gbmab {
	margin: 40px 0 0
}

#gbgs3 .gbmac {
	margin: 41px 0 0
}

.gbsr #gbgs3 .gbmac {
	border-bottom-color: #f5f5f5
}

.gbsr #gbd3,.gbsr #gbd3 .gbmc {
	background: #f5f5f5;
	min-height: 268px;
	width: 480px
}

#gbgs1 {
	display: block;
	overflow: hidden;
	position: relative
}

.gbg1t {
	top: 0
}

.gbg1ta {
	-o-transition: top .218s ease-out;
	-moz-transition: top .218s ease-out;
	-webkit-transition: top .218s ease-out;
	transition: top .218s ease-out
}

.gbg1tb {
	-o-transition: top .13s ease-in;
	-moz-transition: top .13s ease-in;
	-webkit-transition: top .13s ease-in;
	transition: top .13s ease-in
}

.gbg1tc {
	-o-transition: top .13s ease-out;
	-moz-transition: top .13s ease-out;
	-webkit-transition: top .13s ease-out;
	transition: top .13s ease-out
}

#gbi1a {
	background-color: #d14836;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#d14836) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #d14836);
	background-image: -moz-linear-gradient(top, #dd4b39, #d14836);
	background-image: -ms-linear-gradient(top, #dd4b39, #d14836);
	background-image: -o-linear-gradient(top, #dd4b39, #d14836);
	background-image: linear-gradient(top, #dd4b39, #d14836);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#dd4b39',
		EndColorStr='#d14836' );
	border: 1px solid #c13828;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	display: block;
	height: 27px;
	width: 27px
}

.gbgt-hvr #gbi1a {
	background-color: #c53727;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#c53727) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #c53727);
	background-image: -moz-linear-gradient(top, #dd4b39, #c53727);
	background-image: -ms-linear-gradient(top, #dd4b39, #c53727);
	background-image: -o-linear-gradient(top, #dd4b39, #c53727);
	background-image: linear-gradient(top, #dd4b39, #c53727);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#dd4b39',
		EndColorStr='#c53727' );
	border-color: #b0281a;
	border-bottom-color: #af301f;
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .2);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .2)
}

#gbg1:focus #gbi1a,#gbg1:active #gbi1a {
	background-color: #b0281a;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#b0281a) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -moz-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -ms-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -o-linear-gradient(top, #dd4b39, #b0281a);
	background-image: linear-gradient(top, #dd4b39, #b0281a);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#dd4b39',
		EndColorStr='#b0281a' );
	border-color: #992a1b;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3)
}

.gbid#gbi1a {
	background-color: #f8f8f8;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -moz-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -ms-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -o-linear-gradient(top, #f8f8f8, #ececec);
	background-image: linear-gradient(top, #f8f8f8, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',
		EndColorStr='#ececec' );
	border-color: #c6c6c6
}

.gbgt-hvr .gbid#gbi1a,#gbg1:focus .gbid#gbi1a,#gbg1:active .gbid#gbi1a {
	background-color: #ffffff;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #ffffff, #ececec);
	background-image: -moz-linear-gradient(top, #ffffff, #ececec);
	background-image: -ms-linear-gradient(top, #ffffff, #ececec);
	background-image: -o-linear-gradient(top, #ffffff, #ececec);
	background-image: linear-gradient(top, #ffffff, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff',
		EndColorStr='#ececec' );
	border-color: #bbb
}

#gbg1:active .gbid#gbi1a {
	border-color: #b6b6b6;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3)
}

#gbi1,#gbi1c {
	left: 0;
	bottom: 1px;
	color: #fff;
	display: block;
	font-size: 14px;
	font-weight: bold;
	position: absolute;
	text-align: center;
	text-shadow: 0 1px rgba(0, 0, 0, .1);
	-moz-transition-property: bottom;
	-moz-transition-duration: 0;
	-o-transition-property: bottom;
	-o-transition-duration: 0;
	-webkit-transition-property: bottom;
	-webkit-transition-duration: 0;
	-moz-user-select: none;
	-o-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	width: 100%
}

.gbgt-hvr #gbi1,#gbg1:focus #gbi1 {
	text-shadow: 0 1px rgba(0, 0, 0, .3)
}

.gbids#gbi1,.gbgt-hvr .gbids#gbi1,#gbg1:focus .gbids#gbi1,#gbg1:active .gbids#gbi1
	{
	color: #999;
	text-shadow: none
}

#gbg1 .gbmab {
	margin: 41px 0 0
}

#gbg1 .gbmac {
	margin: 42px 0 0
}

.gb_gbsh .gbmab,.gb_gbsh .gbmac {
	left: 9px;
	border-width: 0 6px 6px
}

.gb_gbsh #gbg1 .gbmab {
	margin: 31px 0 0
}

.gb_gbsh #gbg1 .gbmac {
	margin: 32px 0 0
}

.gb_gbsh .gbtn.gbto #gbd1,.gb_gbsh .gbtn.gbto #gbs {
	top: 37px;
	transform: translateX(-354px);
	-webkit-transform: translateX(-354px);
	-o-transform: translateX(-354px);
	-moz-transform: translateX(0)
}

.gb_gbsh.gb_gbshc .gbtn.gbto #gbd1,.gb_gbsh.gb_gbshc .gbtn.gbto #gbs {
	transform: translateX(-144px);
	-webkit-transform: translateX(-144px);
	-o-transform: translateX(-144px);
	-moz-transform: translateX(0)
}

.gb_gbsh #gbdw,.gb_gbsh #gb .gbes#gbu,.gb_gbsh #gb #gbu,.gb_gbsh .gbtn {
	position: fixed;
	transform: translateZ(0);
	-moz-transform: translateZ(0);
	-o-transform: translateZ(0);
	-webkit-transform: translateZ(0);
	z-index: 987
}

.gb_gbsh.gb_gbsf #gb #gbu {
	position: absolute
}

.gbtn {
	transition: right.218s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-moz-transition: right.218s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-o-transition: right.218s cubic-bezier(0.175, 0.885, 0.320, 1.275);
	-webkit-transition: right.218s cubic-bezier(0.175, 0.885, 0.320, 1.275)
}

.gb_gbsh #gb .gbes#gbu,.gb_gbsh #gb #gbu {
	top: 0
}

.gb_gbsh.gb_gbsf #gb #gbu {
	top: 102px
}

.gb_gbsh.gb_gbsf #gb .gbes#gbu {
	top: 70px
}

.gb_gbsh .gbt {
	display: none
}

.gb_gbsh .gbtn {
	display: block
}

@
-webkit-keyframes gb__sn { 0%,49%{
	opacity: 0
}

50%{
opacity
:
1;top
:
-30px
}
100%{
opacity
:
1;top
:
7px
}
}
@
-moz-keyframes gb__sn { 0%,49%{
	opacity: 0
}

50%{
opacity
:
1;top
:
-30px
}
100%{
opacity
:
1;top
:
7px
}
}
@
-o-keyframes gb__sn { 0%,49%{
	opacity: 0
}

50%{
opacity
:
1;top
:
-30px
}
100%{
opacity
:
1;top
:
7px
}
}
@
keyframes gb__sn { 0%,49%{
	opacity: 0
}

50%{
opacity
:
1;top
:
-30px
}
100%{
opacity
:
1;top
:
7px
}
}
.gb_gbsh .gbtn {
	right: 60px;
	animation: gb__sn .218s;
	-webkit-animation: gb__sn .218s;
	-moz-animation: gb__sn .218s;
	-o-animation: gb__sn .218s;
	top: 7px
}

.gb_gbsh.gb_gbshc .gbtn {
	right: 270px
}

#gbi4t {
	display: block;
	margin: 1px 0;
	overflow: hidden;
	text-overflow: ellipsis
}

#gbg6 #gbi4t,#gbg4 #gbgs4d {
	color: #666;
	text-shadow: none
}

#gb_70,#gb_71 {
	margin-right: 15px;
	display: inline-block
}

#gb_70 .gbit,#gb_71 .gbit,#gbg7 .gbit {
	margin: 0 15px;
	display: block
}

#gbgs4,.gbgs {
	background-color: #f8f8f8;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -moz-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -ms-linear-gradient(top, #f8f8f8, #ececec);
	background-image: -o-linear-gradient(top, #f8f8f8, #ececec);
	background-image: linear-gradient(top, #f8f8f8, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#f8f8f8',
		EndColorStr='#ececec' );
	border: 1px solid #c6c6c6;
	display: block;
	-moz-border-radius: 2px;
	-o-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	position: relative
}

#gbu #gb_70 {
	color: #fff;
	font-size: 11px;
	font-weight: bold;
	text-transform: uppercase
}

#gb_70 .gbgs {
	background-color: #d14836;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#d14836) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #d14836);
	background-image: -moz-linear-gradient(top, #dd4b39, #d14836);
	background-image: -ms-linear-gradient(top, #dd4b39, #d14836);
	background-image: -o-linear-gradient(top, #dd4b39, #d14836);
	background-image: linear-gradient(top, #dd4b39, #d14836);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#dd4b39',
		EndColorStr='#d14836' );
	border: 1px solid transparent
}

#gb_70.gbgt-hvr .gbgs {
	background-color: #c53727;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#c53727) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #c53727);
	background-image: -moz-linear-gradient(top, #dd4b39, #c53727);
	background-image: -ms-linear-gradient(top, #dd4b39, #c53727);
	background-image: -o-linear-gradient(top, #dd4b39, #c53727);
	background-image: linear-gradient(top, #dd4b39, #c53727);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#dd4b39',
		EndColorStr='#c53727' );
	border-color: #b0281a;
	border-bottom-color: #af301f;
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, .1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, .1)
}

#gb_70:active .gbgs,#gb_70.gbgt-hvr:active .gbgs {
	background-color: #b0281a;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#b0281a) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -moz-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -ms-linear-gradient(top, #dd4b39, #b0281a);
	background-image: -o-linear-gradient(top, #dd4b39, #b0281a);
	background-image: linear-gradient(top, #dd4b39, #b0281a);
	border-color: #992a1b;
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .1)
}

#gbgs4d {
	display: inline-block;
	position: relative;
	z-index: 1000
}

#gbgs4dn {
	display: inline-block;
	overflow: hidden;
	text-overflow: ellipsis
}

.gbgt-hvr #gbgs4d {
	background-color: transparent;
	background-image: none
}

.gbg4p {
	margin-top: 0px
}

#gbg4 #gbgs4 {
	height: 27px;
	position: relative;
	width: 27px
}

.gbgt-hvr #gbgs4,#gbg4:focus #gbgs4,#gbg4:active #gbgs4,#gbg_70:focus .gbgs,#gbg_71:focus .gbgs,#gbg_70:active .gbgs,#gbg_71:active .gbgs,#gbg7:focus .gbgs,#gbg7:active .gbgs
	{
	background-color: #ffffff;
	background-image: -webkit-gradient(linear, left top, left bottom, from(#ffffff),
		to(#ececec) );
	background-image: -webkit-linear-gradient(top, #ffffff, #ececec);
	background-image: -moz-linear-gradient(top, #ffffff, #ececec);
	background-image: -ms-linear-gradient(top, #ffffff, #ececec);
	background-image: -o-linear-gradient(top, #ffffff, #ececec);
	background-image: linear-gradient(top, #ffffff, #ececec);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorStr='#ffffff',
		EndColorStr='#ececec' );
	border-color: #bbb
}

#gbg4:active #gbgs4,#gb_70:active .gbgs,#gb_71:active .gbgs,#gbg7:active .gbgs
	{
	border-color: #b6b6b6;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, .3)
}

#gbi4i,#gbi4id,#gbi4ip {
	left: 0;
	height: 27px;
	position: absolute;
	top: 0;
	width: 27px
}

#gbmpi,#gbmpid {
	margin-right: 0;
	height: 96px;
	width: 96px
}

#gbi4id {
	background-position: 0 -101px
}

.gbem #gbi4id,.gbemi #gbi4id {
	background-position: 0 -101px
}

.gbes #gbi4id,.gbesi #gbi4id {
	background-position: 0 -101px
}

.gbto #gbi4i,.gbto #gbi4ip,.gbto #gbi4id {
	top: 0
}

#gbgs4 .gbmai {
	left: 33px;
	top: 12px
}

#gbgs4d .gbmai {
	left: 100%;
	margin-left: 5px;
	top: 12px
}

#gbgs4 .gbmab,#gbgs4 .gbmac {
	left: 5px
}

#gbgs4 .gbmab {
	margin: 40px 0 0
}

#gbgs4 .gbmac {
	margin: 41px 0 0;
	border-bottom-color: #fff
}

.gbemi .gbg4p,.gbem.gbg4p {
	margin-top: 0px
}

.gbesi .gbg4p,.gbes.gbg4p {
	margin-top: 0px
}

.gbemi #gbg4 #gbgs4,.gbem #gbg4 #gbgs4,.gbemi #gbg4 #gbi4i,.gbem #gbg4 #gbi4i,.gbemi #gbg4 #gbi4id,.gbem #gbg4 #gbi4id,.gbemi #gbg4 #gbi4ip,.gbem #gbg4 #gbi4ip
	{
	height: 27px;
	width: 27px
}

.gbesi #gbg4 #gbgs4,.gbes #gbg4 #gbgs4,.gbesi #gbi4i,.gbes #gbi4i,.gbesi #gbi4id,.gbes #gbi4id,.gbesi #gbi4ip,.gbes #gbi4ip
	{
	height: 27px;
	width: 27px
}

.gbemi #gbgs4 .gbmai,.gbem #gbgs4 .gbmai {
	left: 33px;
	top: 12px
}

.gbesi #gbgs4 .gbmai,.gbes #gbgs4 .gbmai {
	left: 33px;
	top: 12px
}

.gbemi#gb #gbg4 #gbgs4 .gbmab,.gbem#gbg4 #gbgs4 .gbmab {
	left: 5px;
	margin: 40px 0 0
}

.gbemi#gb #gbg4 #gbgs4 .gbmac,.gbem#gbg4 #gbgs4 .gbmac {
	left: 5px;
	margin: 41px 0 0
}

.gbesi#gb #gbg4 #gbgs4 .gbmab,.gbes#gbg4 #gbgs4 .gbmab {
	left: 5px;
	margin: 40px 0 0
}

.gbesi#gb #gbg4 #gbgs4 .gbmac,.gbes#gbg4 #gbgs4 .gbmac {
	left: 5px;
	margin: 41px 0 0
}

#gbgs4d .gbmab {
	margin: 41px 0 0
}

#gbgs4d .gbmac {
	margin: 42px 0 0;
	border-bottom-color: #fff
}

#gbgs4d .gbmab,#gbgs4d .gbmac {
	left: 50%;
	margin-left: -5px
}

#gbmppc {
	position: relative
}

#gbmppc .gbmt {
	padding-left: 55px;
	padding-bottom: 10px;
	padding-top: 10px
}

.gbmppci {
	left: 20px;
	background-position: -33px -18px;
	height: 25px;
	position: absolute;
	top: 11px;
	width: 25px
}

.gbem#gb,.gbemi#gb {
	height: 102px
}

.gbes#gb,.gbesi#gb {
	height: 102px
}

.gbem#gbx1,.gbem#gbx2,.gbem#gbqlw,.gbemi#gb #gbx1,.gbemi#gb #gbx2,.gbemi#gb #gbqlw
	{
	height: 71px
}

.gbem#gb #gbbw,.gbemi#gb #gbbw {
	top: 102px
}

.gbem#gbu,.gbem#gbq2,.gbem#gbq3,.gbemi#gb #gbu,.gbemi#gb #gbq2,.gbemi#gb #gbq3
	{
	padding-top: 20px
}

.gbem#gbq2,.gbemi#gb #gbq2 {
	margin-left: 126px;
	padding-bottom: 0
}

.gbexl#gbq2,.gbexli#gb #gbq2,.gbexxl#gbq2,.gbexxli#gb #gbq2 {
	margin-left: 126px
}

.gbem#gbq3,.gbemi#gb #gbq3 {
	left: 126px
}

.gbes#gbx1,.gbes#gbx2,.gbes#gbqlw,.gbesi#gb #gbx1,.gbesi#gb #gbx2,.gbesi#gb #gbqlw
	{
	height: 57px
}

.gbes#gb #gbbw,.gbesi#gb #gbbw {
	top: 102px
}

.gbes#gbu,.gbes#gbq2,.gbes#gbq3,.gbesi#gb #gbu,.gbesi#gb #gbq2,.gbesi#gb #gbq3
	{
	padding-top: 8px
}

.gbet#gbq2,.gbeti#gb #gbq2,.gbes#gbq2,.gbesi#gb #gbq2 {
	margin-left: 126px;
	padding-bottom: 0
}

.gbeu#gbq2,.gbeui#gb #gbq2 {
	margin-left: 126px;
	padding-bottom: 0
}

.gbemi#gb .gbto #gbd1,.gbemi#gb .gbto #gbd3,.gbemi#gb .gbto #gbd4,.gbemi#gb .gbto #gbs,.gbto .gbem#gbd1,.gbto .gbem#gbd3,.gbto .gbem#gbd4,.gbto .gbem#gbs
	{
	top: 51px
}

.gbesi#gb .gbto #gbd1,.gbesi#gb .gbto #gbd3,.gbesi#gb .gbto #gbd4,.gbesi#gb .gbto #gbs,.gbto .gbes#gbd1,.gbto .gbes#gbd3,.gbto .gbes#gbd4,.gbto .gbes#gbs
	{
	top: 42px
}

.gbes#gbq3,.gbesi#gb #gbq3 {
	left: 126px
}

.gbem#gbq1,.gbemi#gb #gbq1 {
	margin-left: 16px
}

.gbem#gbql,.gbemi#gb #gbql,.gbes#gbql,.gbesi#gb #gbql,.gbet#gbql,.gbeti#gb #gbql,.gbeu#gbql,.gbeui#gb #gbql
	{
	background-position: -63px 0;
	height: 37px;
	width: 95px
}

.gbet#gbq1,.gbeti#gb #gbq1,.gbes#gbq1,.gbesi#gb #gbq1 {
	margin-left: 16px
}

.gbeu#gbq1,.gbeui#gb #gbq1 {
	margin-left: 16px
}

.gbemi#gb .gbqldr,.gbem#gbqlw .gbqldr {
	max-height: 71px;
	max-width: 160px
}

.gbem#gbu,.gbemi#gb #gbu {
	margin-right: 12px
}

.gbet#gbu,.gbeti#gb #gbu,.gbeu#gbu,.gbeui#gb #gbu,.gbes#gbu,.gbesi#gb #gbu
	{
	margin-right: 0px
}

.gbeu#gbu .gbt,.gbeui#gb #gbu .gbt,.gbet#gbu .gbt,.gbeti#gb #gbu .gbt,.gbes#gbu .gbt,.gbesi#gb #gbu .gbt
	{
	margin-left: 6px
}

.gbeti#gb .gbqldr,.gbet#gbqlw .gbqldr,.gbesi#gb .gbqldr,.gbes#gbqlw .gbqldr
	{
	max-height: 57px;
	max-width: 144px
}

.gbeui#gb .gbqldr,.gbeu#gbqlw .gbqldr {
	max-height: 57px;
	max-width: 124px
}

.gbemi#gb #gbpr,.gbem#gbpr {
	left: 28px
}

.gbemi#gb .gbqpa,.gbem#gbpr .gbqpa,.gbesi#gb .gbqpa,.gbes#gbpr .gbqpa {
	width: 71px
}

.gbesi#gb #gbpr,.gbes#gbpr {
	left: 16px
}

.gbemi#gb #gbgs4d .gbmab,.gbem#gbg4 #gbgs4d .gbmab {
	margin: 41px 0 0
}

.gbesi#gb #gbgs4d .gbmab,.gbes#gbg4 #gbgs4d .gbmab {
	margin: 33px 0 0
}

.gbemi#gb #gbgs4d .gbmac,.gbem#gbg4 #gbgs4d .gbmac {
	margin: 42px 0 0
}

.gbesi#gb #gbgs4d .gbmac,.gbes#gbg4 #gbgs4d .gbmac {
	margin: 34px 0 0
}

.gbemi#gb #gbgs4d .gbmac,.gbem#gbg4 #gbgs4d .gbmac,.gbesi#gb #gbgs4d .gbmac,.gbes#gbg4 #gbgs4d .gbmac,.gbemi#gb #gbgs4d .gbmab,.gbem#gbg4 #gbgs4d .gbmab,.gbesi#gb #gbgs4d .gbmab,.gbes#gbg4 #gbgs4d .gbmab
	{
	margin-left: -5px
}

#gb #gbx1,#gb #gbx3 {
	left: 0
}

#gbx1,#gb #gbx1,#gbq,#gbu,#gb #gbq,#gb #gbu {
	top: 30px
}

#gb #gbu {
	top: 30px
}

#gbzw #gbz {
	padding-left: 0;
	z-index: 991
}

#gbz .gbto #gbd,#gbz .gbto #gbs {
	top: 29px
}

#gbx3 {
	min-width: 980px;
	border-color: #000;
	background-color: #2d2d2d;
	opacity: 1;
	filter: alpha(opacity = 100)
}

#gbz .gbzt,#gbz .gbgt {
	color: #bbb !important;
	font-weight: bold
}

#gbq .gbgt-hvr,#gbq .gbgt:focus,#gbz .gbz0l .gbts,#gbz .gbzt:hover,#gbz .gbzt:focus,#gbz .gbgt-hvr,#gbz .gbgt:focus,#gbu .gbz0l .gbts,#gbu .gbzt:hover,#gbu .gbzt:focus,#gbu .gbgt-hvr,#gbu .gbgt:focus
	{
	background-color: transparent;
	background-image: none
}

#gbz .gbz0l .gbts,#gbz .gbzt:hover,#gbz .gbzt:focus,#gbz .gbgt-hvr,#gbz .gbgt:focus
	{
	color: #fff !important
}

#gbz .gbma {
	border-top-color: #aaa
}

#gbz .gbzt:hover .gbma,#gbz .gbzt:focus .gbma,#gbz .gbgt-hvr .gbma,#gbz .gbgt:focus .gbma
	{
	border-top-color: #fff
}

#gbq1.gbto {
	-moz-box-shadow: none;
	-o-box-shadow: none;
	-webkit-box-shadow: none;
	box-shadow: none
}

#gbz .gbto .gbma,#gbz .gbto .gbzt:hover .gbma,#gbz .gbto .gbzt:focus .gbma,#gbz .gbto .gbgt-hvr .gbma,#gbz .gbto .gbgt:focus .gbma
	{
	border-top-color: #000
}

#gbz .gbto .gbts,#gbd .gbmt {
	color: #000 !important;
	font-weight: bold
}

#gbd .gbmt:hover,#gbd .gbmt:focus {
	background-color: #f5f5f5
}

#gbz .gbts {
	padding: 0 9px;
	z-index: 991
}

#gbz .gbto .gbts {
	padding-bottom: 1px;
	padding-top: 2px;
	z-index: 1000
}

#gbqlw {
	cursor: pointer
}

#gbzw {
	left: 0;
	height: 30px;
	margin-left: 6px;
	position: absolute;
	top: 0;
	z-index: 991
}

#gbz {
	height: 30px
}

.gbemi#gb #gbzw,.gbem#gbzw {
	height: 30px;
	margin-left: 6px
}

.gbeui#gb #gbzw,.gbeu#gbzw,.gbeti#gb #gbzw,.gbet#gbzw,.gbesi#gb #gbzw,.gbes#gbzw
	{
	height: 30px;
	margin-left: 6px
}

.gbeui#gb #gbzw,.gbeu#gbzw {
	margin-left: 2px
}

.gbemi#gb #gbzw #gbz,.gbem#gbzw #gbz {
	height: 30px
}

.gbemi#gb #gbx3,.gbem#gbx3 {
	height: 29px
}

.gbesi#gb #gbzw #gbz,.gbes#gbzw #gbz {
	height: 30px
}

.gbesi#gb #gbx3,.gbes#gbx3 {
	height: 29px
}

#gb.gbet #gbx3,#gb.gbeti #gbx3 {
	min-width: 836px;
}

#gb.gbeu #gbx3,#gb.gbeui #gbx3 {
	min-width: 780px;
}

#gbzw .gbt {
	line-height: 27px
}

.gbemi#gb #gbzw .gbt .gbem#gbzw .gbt {
	line-height: 27px
}

.gbesi#gb #gbzw .gbt,.gbes#gbzw .gbt {
	line-height: 27px
}

.gbqfh#gbq1 {
	display: none
}

.gbqfh#gbx1,.gbqfh#gbx2,.gbem#gb .gbqfh#gbx1,.gbem#gb .gbqfh#gbx2,.gbemi#gb .gbqfh#gbx1,.gbemi#gb .gbqfh#gbx2,.gbes#gb .gbqfh#gbx1,.gbes#gb .gbqfh#gbx2,.gbesi#gb .gbqfh#gbx1,.gbesi#gb .gbqfh#gbx2,.gbet#gb .gbqfh#gbx1,.gbet#gb .gbqfh#gbx2,.gbeti#gb .gbqfh#gbx1,.gbeti#gb .gbqfh#gbx2,.gbeu#gb .gbqfh#gbx1,.gbeu#gb .gbqfh#gbx2,.gbeui#gb .gbqfh#gbx1,.gbeui#gb .gbqfh#gbx2
	{
	border-bottom-width: 0;
	height: 0
}

.gbes#gb,.gbesi#gb {
	height: 102px
}

.gbes#gbx1,.gbes#gbx2,.gbes#gbqlw,.gbesi#gb #gbx1,.gbesi#gb #gbx2,.gbesi#gb #gbqlw
	{
	height: 71px
}

#gb .gbes#gbx1,#gb .gbes#gbx2,.gbesi#gb #gbx1,.gbesi#gb #gbx2,#gb .gbes#gbq,#gb .gbes#gbu,.gbesi#gb #gbq,.gbesi#gb #gbu
	{
	top: 30px
}

.gbes#gb #gbbw,.gbesi#gb #gbbw {
	top: 102px !important
}

.gbpro.gbes#gb #gbbw,.gbpro.gbesi#gb #gbbw {
	top: 132px !important
}

.gbes#gbu,.gbes#gbq2,.gbes#gbq3,.gbesi#gb #gbu,.gbesi#gb #gbq2,.gbesi#gb #gbq3
	{
	padding-top: 20px
}

.gbes#gbq2,.gbesi#gb #gbq2 {
	padding-bottom: 0
}

.gbesi#gb .gbto #gbd1,.gbesi#gb .gbto #gbd3,.gbesi#gb .gbto #gbd4,.gbesi#gb .gbto #gbs,.gbto .gbes#gbd1,.gbto .gbes#gbd3,.gbto .gbes#gbd4,.gbes#gbu .gbto #gbs
	{
	top: 51px
}

.gbemi#gb #gbd,.gbem#gbzw #gbd,.gbemi#gb #gbzw .gbto #gbs,.gbem#gbzw .gbto #gbs
	{
	top: 29px
}

.gbesi#gb #gbd,.gbes#gbzw #gbd,.gbesi#gb #gbzw .gbto #gbs,.gbes#gbzw .gbto #gbs
	{
	top: 29px
}

.gbesi#gb #gbzw .gbto .gbts,.gbes#gbzw .gbto .gbts {
	padding-bottom: 3px
}

.gbesi#gb #gbg3 .gbmab,.gbes#gbg3 .gbmab,.gbesi#gb #gbgs4 .gbmab,.gbes#gbg4 .gbmab
	{
	margin: 40px 0 0
}

.gbesi#gb #gbg1 .gbmab,.gbes#gbg1 .gbmab {
	margin: 41px 0 0
}

.gbesi#gb #gbg1 .gbmac,.gbes#gbg1 .gbmac {
	margin: 42px 0 0
}

.gbesi#gb #gbg3 .gbmac,.gbes#gbg3 .gbmac,.gbesi#gb #gbgs4 .gbmac,.gbes#gbg4 .gbmac
	{
	margin: 41px 0 0
}

.gbesi#gb #gbgs4d .gbmab,.gbes#gbg4 #gbgs4d .gbmab {
	margin: 41px 0 0
}

.gbesi#gb #gbgs4d .gbmac,.gbes#gbg4 #gbgs4d .gbmac {
	margin: 42px 0 0
}

#gbmpicb,#gbmpicp {
	bottom: 0;
	color: #fff;
	display: block;
	font-size: 9px;
	font-weight: bold;
	position: absolute;
	text-align: center;
	text-decoration: none !important;
	-moz-transition: opacity .218s ease-in-out;
	-o-transition: opacity .218s ease-in-out;
	-webkit-transition: opacity .218s ease-in-out;
	transition: opacity .218s ease-in-out;
	white-space: normal;
	width: 96px
}

#gbmpicb {
	background-color: #4d90fe;
	opacity: .7;
	filter: alpha(opacity = 70);
	padding: 7px 0;
	-moz-transition: background-color .218s ease-in-out;
	-o-transition: background-color .218s ease-in-out;
	-webkit-transition: background-color .218s ease-in-out;
	transition: background-color .218s ease-in-out
}

#gbmpicp {
	padding: 12px 0 7px 0
}

#gbmpas {
	max-height: 276px
}

#gbmm {
	max-height: 530px
}

.gbsb {
	-webkit-box-sizing: border-box;
	display: block;
	position: relative;
	*zoom: 1
}

.gbsbic {
	overflow: auto
}

.gbsbis .gbsbt,.gbsbis .gbsbb {
	-webkit-mask-box-image: -webkit-gradient(linear, left top, right top, color-stop(0, rgba(0, 0, 0
		, .1) ), color-stop(.5, rgba(0, 0, 0, .8) ),
		color-stop(1, rgba(0, 0, 0, .1) ) );
	left: 0;
	margin-right: 0;
	opacity: 0;
	position: absolute;
	width: 100%
}

.gbsb .gbsbt:after,.gbsb .gbsbb:after {
	content: "";
	display: block;
	height: 0;
	left: 0;
	position: absolute;
	width: 100%
}

.gbsbis .gbsbt {
	background: -webkit-gradient(linear, left top, left bottom, from(rgba(0, 0, 0, .2)
		), to(rgba(0, 0, 0, 0) ) );
	background-image: -webkit-linear-gradient(top, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -moz-linear-gradient(top, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -ms-linear-gradient(top, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -o-linear-gradient(top, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: linear-gradient(top, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	height: 6px;
	top: 0
}

.gbsb .gbsbt:after {
	border-top: 1px solid #ebebeb;
	border-color: rgba(0, 0, 0, .3);
	top: 0
}

.gbsb .gbsbb {
	-webkit-mask-box-image: -webkit-gradient(linear, left top, right top, color-stop(0, rgba(0, 0, 0
		, .1) ), color-stop(.5, rgba(0, 0, 0, .8) ),
		color-stop(1, rgba(0, 0, 0, .1) ) );
	background: -webkit-gradient(linear, left bottom, left top, from(rgba(0, 0, 0, .2)
		), to(rgba(0, 0, 0, 0) ) );
	background-image: -webkit-linear-gradient(bottom, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -moz-linear-gradient(bottom, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -ms-linear-gradient(bottom, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: -o-linear-gradient(bottom, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	background-image: linear-gradient(bottom, rgba(0, 0, 0, .2),
		rgba(0, 0, 0, 0) );
	bottom: 0;
	height: 4px
}

.gbsb .gbsbb:after {
	border-bottom: 1px solid #ebebeb;
	border-color: rgba(0, 0, 0, .3);
	bottom: 0
}

.gbsbic::-webkit-scrollbar {
	height: 16px;
	width: 16px
}

.gbsbic::-webkit-scrollbar-button {
	height: 0;
	width: 0
}

.gbsbic::-webkit-scrollbar-button:start:decrement,.gbsbic::-webkit-scrollbar-button:end:increment
	{
	display: block
}

.gbsbic::-webkit-scrollbar-button:vertical:start:increment,.gbsbic::-webkit-scrollbar-button:vertical:end:decrement
	{
	display: none
}

.gbsbic::-webkit-scrollbar-track:vertical,.gbsbic::-webkit-scrollbar-track:horizontal,.gbsbic::-webkit-scrollbar-thumb:vertical,.gbsbic::-webkit-scrollbar-thumb:horizontal,.gbsbis .gbsbic::-webkit-scrollbar-track:vertical,.gbsbis .gbsbic::-webkit-scrollbar-track:horizontal,.gbsbis .gbsbic::-webkit-scrollbar-thumb:vertical,.gbsbis .gbsbic::-webkit-scrollbar-thumb:horizontal
	{
	border-style: solid;
	border-color: transparent
}

.gbsbic::-webkit-scrollbar-track:vertical {
	background-clip: padding-box;
	background-color: #fff;
	border-left-width: 5px;
	border-right-width: 0
}

.gbsbic::-webkit-scrollbar-track:horizontal {
	background-clip: padding-box;
	background-color: #fff;
	border-bottom-width: 0;
	border-top-width: 5px
}

.gbsbic::-webkit-scrollbar-thumb {
	-webkit-box-shadow: inset 1px 1px 0 rgba(0, 0, 0, .1), inset 0 -1px 0
		rgba(0, 0, 0, .07);
	background-clip: padding-box;
	background-color: rgba(0, 0, 0, .2);
	min-height: 28px;
	padding-top: 100px
}

.gbsbic::-webkit-scrollbar-thumb:hover {
	-webkit-box-shadow: inset 1px 1px 1px rgba(0, 0, 0, .25);
	background-color: rgba(0, 0, 0, .4)
}

.gbsbic::-webkit-scrollbar-thumb:active {
	-webkit-box-shadow: inset 1px 1px 3px rgba(0, 0, 0, .35);
	background-color: rgba(0, 0, 0, .5)
}

.gbsbic::-webkit-scrollbar-thumb:vertical {
	border-width: 0;
	border-left-width: 5px
}

.gbsbic::-webkit-scrollbar-thumb:horizontal {
	border-width: 0;
	border-top-width: 5px
}

.gbsbis .gbsbic::-webkit-scrollbar-track:vertical {
	border-left-width: 6px;
	border-right-width: 1px
}

.gbsbis .gbsbic::-webkit-scrollbar-track:horizontal {
	border-bottom: 1px;
	border-top: 6px
}

.gbsbis .gbsbic::-webkit-scrollbar-thumb:vertical {
	border-width: 0;
	border-left-width: 6px;
	border-right-width: 1px
}

.gbsbis .gbsbic::-webkit-scrollbar-thumb:horizontal {
	border-width: 0;
	border-bottom: 1px;
	border-top: 6px
}

.gbsbic::-webkit-scrollbar-track:hover {
	-webkit-box-shadow: inset 1px 0 0 rgba(0, 0, 0, .1);
	background-color: rgba(0, 0, 0, .05)
}

.gbsbic::-webkit-scrollbar-track:active {
	-webkit-box-shadow: inset 1px 0 0 rgba(0, 0, 0, .14), inset -1px -1px 0
		rgba(0, 0, 0, .07);
	background-color: rgba(0, 0, 0, .05)
}

#sfcnt {
	display: none
}

#subform_ctrl {
	display: none
}
</style>
<style id="gstyle">
body {
	margin: 0;
}

.hp {
	height: 100%;
	min-height: 500px;
	overflow-y: auto;
	position: absolute;
	width: 100%
}

.noscrl {
	overflow: hidden
}

#gog {
	padding: 3px 8px 0
}

.gac_m td {
	line-height: 17px
}

body,td,a,p,.h {
	font-family: arial, sans-serif
}

.h {
	color: #12c;
	font-size: 20px
}

.q {
	color: #00c
}

.ts td {
	padding: 0
}

.ts {
	border-collapse: collapse
}

em {
	font-weight: bold;
	font-style: normal
}

.lst {
	height: 20px;
	width: 496px
}

.ds {
	display: inline-block
}

span.ds {
	margin: 3px 0 4px;
	margin-left: 4px
}

.ctr-p {
	margin: 0 auto;
	min-width: 980px
}

.jhp input[type="submit"] {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f5f5f5, #f1f1f1);
	-webkit-border-radius: 2px;
	-webkit-user-select: none;
	background-color: #f5f5f5;
	background-image: linear-gradient(top, #f5f5f5, #f1f1f1);
	background-image: -o-linear-gradient(top, #f5f5f5, #f1f1f1);
	border: 1px solid #dcdcdc;
	border: 1px solid rgba(0, 0, 0, 0.1);
	border-radius: 2px;
	color: #666;
	cursor: default;
	font-family: arial, sans-serif;
	font-size: 11px;
	font-weight: bold;
	height: 29px;
	line-height: 27px;
	margin: 11px 6px;
	min-width: 54px;
	padding: 0 8px;
	text-align: center
}

.jhp input[type="submit"]:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #f1f1f1);
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	background-color: #f8f8f8;
	background-image: linear-gradient(top, #f8f8f8, #f1f1f1);
	background-image: -o-linear-gradient(top, #f8f8f8, #f1f1f1);
	border: 1px solid #c6c6c6;
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #333
}

.jhp input[type="submit"]:focus {
	border: 1px solid #4d90fe;
	outline: none
}

a.gb1,a.gb2,a.gb3,a.gb4 {
	color: #11c !important
}

body {
	background: #fff;
	color: #222
}

a {
	color: #12c;
	text-decoration: none
}

a:hover,a:active {
	text-decoration: underline
}

.fl a {
	color: #12c
}

a:visited {
	color: #609
}

a.gb1,a.gb4 {
	text-decoration: underline
}

a.gb3:hover {
	text-decoration: none
}

#ghead a.gb2:hover {
	color: #fff !important
}

.sblc {
	padding-top: 5px
}

.sblc a {
	display: block;
	margin: 2px 0;
	margin-left: 13px;
	font-size: 11px;
}

.lsbb {
	height: 30px;
	display: block
}

.ftl,#footer a {
	color: #666;
	margin: 2px 10px 0
}

#footer a:active {
	color: #dd4b39
}

.lsb {
	border: none;
	color: #000;
	cursor: pointer;
	height: 30px;
	margin: 0;
	outline: 0;
	font: 15px arial, sans-serif;
	vertical-align: top
}

.lst:focus {
	outline: none
}

#addlang a {
	padding: 0 3px
}

body,html {
	font-size: small
}

h1,ol,ul,li {
	margin: 0;
	padding: 0
}

.nojsb {
	display: none
}

.nojsv {
	visibility: hidden
}

#body,#footer {
	display: block
}

#footer {
	font-size: 10pt;
	min-height: 49px;
	position: absolute;
	bottom: 0;
	width: 100%
}

#flci {
	float: left;
	margin-left: -260px;
	text-align: left;
	width: 260px
}

#fll {
	float: right;
	text-align: right;
	width: 100%
}

#epbar {
	text-align: left;
	clear: left;
	line-height: 25px;
	padding-bottom: 5px
}

#epbar #epb-notice {
	color: #666;
	display: inline-block;
	margin: 3px 5px 0 0
}

#ftby {
	padding-left: 260px
}

#ftby>div,#fll>div,#footer a {
	display: inline-block
}

@media only screen and (min-width:1222px) {
	#ftby {
		margin: 0 44px
	}
}

.nojsb {
	display: none
}

.nojsv {
	visibility: hidden
}

.nbcl {
	background: url(/images/nav_logo123.png) no-repeat -140px -230px;
	height: 11px;
	width: 11px
}
</style>
<style>
.lst-t {
	width: 100%;
}

.kpbb,.kprb,.kpgb,.kpgrb {
	-webkit-border-radius: 2px;
	border-radius: 2px;
	color: #fff
}

.kpbb:hover,.kprb:hover,.kpgb:hover,.kpgrb:hover {
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.1);
	color: #fff
}

.kpbb:active,.kprb:active,.kpgb:active,.kpgrb:active {
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.3)
}

.kpbb {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#4d90fe),
		to(#4787ed) );
	background-image: -webkit-linear-gradient(top, #4d90fe, #4787ed);
	background-color: #4d90fe;
	background-image: linear-gradient(top, #4d90fe, #4787ed);
	border: 1px solid #3079ed
}

.kpbb:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#4d90fe),
		to(#357ae8) );
	background-image: -webkit-linear-gradient(top, #4d90fe, #357ae8);
	background-color: #357ae8;
	background-image: linear-gradient(top, #4d90fe, #357ae8);
	border: 1px solid #2f5bb7
}

a.kpbb:link,a.kpbb:visited {
	color: #fff
}

.kprb {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#d14836) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #d14836);
	background-color: #dd4b39;
	background-image: linear-gradient(top, #dd4b39, #d14836);
	border: 1px solid #dd4b39
}

.kprb:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#c53727) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #c53727);
	background-color: #c53727;
	background-image: linear-gradient(top, #dd4b39, #c53727);
	border: 1px solid #b0281a;
	border-bottom-color: #af301f
}

.kprb:active {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#dd4b39),
		to(#b0281a) );
	background-image: -webkit-linear-gradient(top, #dd4b39, #b0281a);
	background-color: #b0281a;
	background-image: linear-gradient(top, #dd4b39, #b0281a);
}

.kpgb {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#3d9400),
		to(#398a00) );
	background-image: -webkit-linear-gradient(top, #3d9400, #398a00);
	background-color: #3d9400;
	background-image: linear-gradient(top, #3d9400, #398a00);
	border: 1px solid #29691d;
}

.kpgb:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#3d9400),
		to(#368200) );
	background-image: -webkit-linear-gradient(top, #3d9400, #368200);
	background-color: #368200;
	background-image: linear-gradient(top, #3d9400, #368200);
	border: 1px solid #2d6200
}

.kpgrb {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f5f5f5),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f5f5f5, #f1f1f1);
	background-color: #f5f5f5;
	background-image: linear-gradient(top, #f5f5f5, #f1f1f1);
	border: 1px solid #dcdcdc;
	color: #555
}

.kpgrb:hover {
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f8f8f8),
		to(#f1f1f1) );
	background-image: -webkit-linear-gradient(top, #f8f8f8, #f1f1f1);
	background-color: #f8f8f8;
	background-image: linear-gradient(top, #f8f8f8, #f1f1f1);
	border: 1px solid #dcdcdc;
	color: #333
}

a.kpgrb:link,a.kpgrb:visited {
	color: #555
}

#gbqfq {
	padding: 1px 0 0 9px
}

#pocs {
	background: #fff1a8;
	color: #000;
	font-size: 10pt;
	margin: 0;
	padding: 5px 7px 0px
}

#pocs.sft {
	background: transparent;
	color: #777
}

#pocs a {
	color: #11c
}

#pocs.sft a {
	color: #36c
}

#pocs>div {
	margin: 0;
	padding: 0
}

.gl {
	white-space: nowrap
}

.big .tsf-p {
	padding-left: 126px;
	padding-right: 352px
}

.tsf-p {
	padding-left: 126px;
	padding-right: 46px
}

.fade #center_col,.fade #rhs,.fade #leftnav {
	filter: alpha(opacity = 33.3);
	opacity: 0.333
}

.fade-hidden #center_col,.fade-hidden #rhs,.fade-hidden #leftnav {
	visibility: hidden
}

.flyr-o,.flyr-w {
	position: absolute;
	background-color: #fff;
	z-index: 3;
	display: block
}

.flyr-o {
	filter: alpha(opacity = 66.6);
	opacity: 0.666;
}

.flyr-w {
	filter: alpha(opacity = 20.0);
	opacity: 0.2;
}

.flyr-h {
	filter: alpha(opacity = 0);
	opacity: 0
}

.flyr-c {
	display: none
}

.flt,.flt u,a.fl {
	text-decoration: none
}

.flt:hover,.flt:hover u,a.fl:hover {
	text-decoration: underline
}

#knavm {
	color: #4273db;
	display: inline;
	font: 11px arial, sans-serif !important;
	left: -13px;
	position: absolute;
	top: 2px;
	z-index: 2
}

#pnprev #knavm {
	bottom: 1px;
	top: auto
}

#pnnext #knavm {
	bottom: 1px;
	left: 40px;
	top: auto
}

a.noline {
	outline: 0
}
</style>
</head>
<body>
	<%
		String html = "";
		try {
			URL url = new URL("http://www.google.com/search?q=" + request.getParameter("q").replace(" ", "%20"));//%20
			URLConnection conn = url.openConnection();
			conn.setRequestProperty("User-Agent", "Mozilla/5.0 (X11; U; Linux x86_64; fr-FR; rv:1.8.1.6) Gecko/20070723 Iceweasel/2.0.0.6 (Debian-2.0.0.6-0etch1)");
			BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String str;

			while ((str = in.readLine()) != null) {
				html += str;
			}
			html = html.replace("src=\"/", "src=\"http://www.google.com/");
			html = html.replace("href=\"/", "href=\"http://www.google.com/");
			html = html.replace("/images/nav_logo124.png", "http://www.google.com/images/nav_logo123.png");
			html = html.replace("\"\"", "\"");
			html = html.replace("no-repeat 0 -245px", "no-repeat -100px -275px");

			in.close();
		} catch (MalformedURLException e) {
		} catch (IOException e) {
		}
		
		int index = 0;
		String html1 = "<ol>";

		while (index != -1) {
			index = html.indexOf("<li class=\"g\"><h3 class=\"r\"><a href=\"http://www.google.com/url", index);
			if (index != -1) {
				int index2 = html.indexOf("</li", index);
				String node = html.substring(index, index2 + 5);
				html1 += node + "</br>";
				index = index + node.length();
			} else
				break;
		}
		html1 += "</ol>";

		html = html.replaceAll("<div(.*)</div>", "").replaceAll("<table(.*)</table>", "").replace("</body>", "");
		html += html1;
		out.print(html);
	%>
</body>
</html>