---
layout: null
---
<!--rss2.xsl via https://osric.com/chris/accidental-developer/2008/12/create-an-xsl-stylesheet-for-your-rss-or-atom-feeds/-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom" version="1.0">
<!--<xsl:output method="xml" version="1.0" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"/>-->
<xsl:output method="html" indent="yes" version="4.0"/>
<xsl:template match="/">
<xsl:apply-templates select="rss/channel"/>
</xsl:template>
<xsl:template match="rss/channel">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>
<xsl:value-of select="atom:title"/>
</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<div id="box"><div id="all">
<div id="header">
<a href="https://ir-g.uk/"><h1 class="site-title">I<span>saac</span> R<span>eid</span>-G<span>uest</span></h1></a>
  <div class="nav">
    <a class="nav-item" style="background-color: #fe4902;" href="/">Home</a>
    <a class="nav-item" style="background-color: #4caf50;" href="/blog/">Blog</a> 
    <a class="nav-item" style="background-color: #2196F3;" href="/contact/">Contact</a>
  </div>
</div>
<div id="content">
  <h2><a href="#" style="color: inherit; text-decoration: inherit; background-color: #4caf50; color:white; padding: 5px;">Blog</a></h2>
  <h1>
  <xsl:apply-templates select="title"/>
  </h1>
  <p>
  This RSS feed provides the latest posts from
  <xsl:apply-templates select="title"/>
  .
  </p>
  <xsl:apply-templates select="item"/>
</div>
</div></div>
</body>
</html>
</xsl:template>
<xsl:template match="item">
<xsl:output method="html" indent="yes" version="4.0"/>
<h2>
<a href="{link}">
<xsl:value-of select="title"/>
<!--<xsl:apply-templates select="title"/>-->
</a>
</h2>
<p>
<xsl:value-of select="description"/>
<!--<xsl:apply-templates select="description"/>-->
</p>
<hr/>
</xsl:template>
  <!--
<xsl:template match="title">
<xsl:value-of select="."/>
</xsl:template>
<xsl:template match="description">
<xsl:value-of select="."/>
</xsl:template>-->
<xsl:template match="atom:link">
<a href="{.}">
<xsl:value-of select="."/>
</a>
</xsl:template>
<xsl:template match="link">
<a href="{.}">
<xsl:value-of select="."/>
</a>
</xsl:template>
</xsl:stylesheet>
