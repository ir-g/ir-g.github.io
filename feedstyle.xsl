<?xml version="1.0" encoding="utf-8"?><!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">

]>
<!-- via https://osric.com/chris/accidental-developer/2008/12/create-an-xsl-stylesheet-for-your-rss-or-atom-feeds/ -->
<xsl:stylesheet version="1.0" 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:atom="http://www.w3.org/2005/Atom">
<xsl:output method="html" indent="yes" version="4.0"/>
<xsl:template match="/">
	<xsl:apply-templates select="rss/channel"/>
</xsl:template>

<xsl:template match="rss/channel">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><xsl:value-of select="atom:title"/></title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<div id="box">
<div id="all">
<div id="header">
<a href="https://ir-g.uk/"><h1 class="site-title">I<span>saac</span> R<span>eid</span>-G<span>uest</span></h1></a>
  <div class="nav">
    <a class="nav-item" style="background-color: #fe4902;" href="/">Home</a>
  </div>
</div>
<div id="content">
<h2><a href="#" style="color: inherit; text-decoration: inherit; background-color: #4caf50; color:white; padding: 5px;">RSS Feed</a></h2>
Add this RSS feed to your reader of choice.
<hr />
<xsl:apply-templates select="item"/>
</div>
</div>
</div>
</body>
</html>
</xsl:template>

<xsl:template match="item">
	<h2><a href="{link}"><xsl:apply-templates select="title"/></a></h2>
	<p><xsl:apply-templates select="description"/></p>
	<hr/>
</xsl:template>

<xsl:template match="title">
	<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="description">
	<xsl:value-of select="."/>
</xsl:template>

<xsl:template match="atom:link">
	<a href="{.}"><xsl:value-of select="."/></a>
</xsl:template>

<xsl:template match="link">
	<a href="{.}"><xsl:value-of select="."/></a>
</xsl:template>


</xsl:stylesheet>
