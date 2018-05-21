<?xml version="1.0"?>
<stylesheet version="1.0"
	xmlns="http://www.w3.org/1999/XSL/Transform"
	xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">
	<output method="text"/>
	<template match="/">
		<apply-templates select="/rss/channel/item"/>
	</template>
	<template match="item">
  <!-- URL attribute from the enclosure node -->
    <value-of select="enclosure/@url"/><text>,</text>
  <!-- Podcast title -->
    <value-of select="/rss/channel/title"/><text>,</text>
  <!-- Season number; formatted as "s00" -->
		<text>s</text><value-of select="format-number(itunes:season,'00')"/>
  <!-- Episode number; formatted as "e00" -->
    <text>e</text><value-of select="format-number(itunes:episode,'00')"/><text>,</text>
  <!-- Episode title -->
    <value-of select="title"/>
  <!-- carriage return -->
    <text>&#10;</text>
	</template>
</stylesheet>