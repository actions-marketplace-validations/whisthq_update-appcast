<?xml version="1.0" encoding="UTF-8"?>

<!--
template.xsl
Template appcast.xml for distributing Whist Browser updates via Sparkle.

Copyright 2022 Whist Technologies, Inc.
-->

<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle">
  <xsl:param name="version" />
  <xsl:param name="short-version" />
  <xsl:param name="download-link" />
  <xsl:param name="sparkle:edSignature" />
  <xsl:param name="length" />

  <xsl:template match="/">
    <rss xmlns:sparkle="http://www.andymatuschak.org/xml-namespaces/sparkle">
      <channel>
	<title>Whist Browser Updates</title>
	<link>http://whist.com/</link>
	<description>Whist Browser latest version metadata</description>
	<item>
	  <title>Latest</title>
	  <sparkle:version>
	    <xsl:value-of select="$version" />
	  </sparkle:version>
	  <sparkle:shortVersionString>
	    <xsl:value-of select="$short-version" />
	  </sparkle:shortVersionString>
	  <enclosure type="application/octet-stream">
	    <xsl:attribute name="url">
	      <xsl:value-of select="$download-link" />
	    </xsl:attribute>
	    <xsl:attribute name="sparkle:edSignature">
	      <xsl:value-of select="$sparkle:edSignature" />
	    </xsl:attribute>
	    <xsl:attribute name="length">
	      <xsl:value-of select="$length" />
	    </xsl:attribute>
	  </enclosure>
	</item>
      </channel>
    </rss>
  </xsl:template>
</xsl:transform>
