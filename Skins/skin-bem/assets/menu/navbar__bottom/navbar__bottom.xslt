<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>
	<xsl:template match="root">
	<nav class="_navbar navbar--bottom" id="@id">
		<ul class="_navbar__list navbar__list--bottom">
			<xsl:apply-templates select="node" />
		</ul>
	</nav>
	</xsl:template>
	<xsl:template match="node">
		<li class="_navbar__item">
			<xsl:attribute name="class">_navbar__item _navbar__item--bottom 
			<xsl:if test="@selected = 1"><xsl:text>&#32;</xsl:text>_navbar__item--active</xsl:if> 
			<xsl:if test="@last = 1"><xsl:text>&#32;</xsl:text>_navbar__item--last</xsl:if> 
			<xsl:if test="node"><xsl:text>&#32;</xsl:text>_navbar__item--children</xsl:if>
			<xsl:if test="@icon"><xsl:text>&#32;</xsl:text>_navbar__item--largeicon</xsl:if>
			</xsl:attribute>
			<xsl:choose>
				<xsl:when test="@enabled = 1">
					

					   <xsl:choose>
							<xsl:when test="node">
								<div class="_navbar__container-link-submenu _navbar__container-link-submenu--bottom">
									<a class="_navbar__link _navbar__link--bottom" href="{@url}">
										<xsl:if test="@icon">
											<img src="{@icon}" />
										</xsl:if>
										<xsl:if test="@target">
											<xsl:attribute name="target"><xsl:value-of select="@target" /></xsl:attribute>
										</xsl:if>
										<xsl:value-of select="@text" />
										<!-- subpageIFdesk -->
										<span id="sub-page" class="_navbar__btn-page-desk _navbar__btn-page _navbar__btn-page--bottom"><iconify-icon icon="uil:angle-down"></iconify-icon></span>
									</a>
									<!-- subpageIFmobile -->
									<span id="sub-page" class="_navbar__btn-page-mobile _navbar__btn-page _navbar__btn-page--bottom"><iconify-icon icon="uil:angle-down"></iconify-icon></span>
								</div>
							</xsl:when>
							<xsl:otherwise>
								<a class="_navbar__link _navbar__link--bottom" href="{@url}">
									<xsl:if test="@icon">
										<img src="{@icon}" />
									</xsl:if>
									<xsl:if test="@target">
										<xsl:attribute name="target"><xsl:value-of select="@target" /></xsl:attribute>
									</xsl:if>
									<xsl:value-of select="@text" />
								</a>							
							</xsl:otherwise>
						</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@text" />
				</xsl:otherwise>
			</xsl:choose>
			<xsl:if test="node">
				<ul class="_navbar__submenu _navbar__submenu--bottom">
					<xsl:apply-templates select="node" />
				</ul>
			</xsl:if>
		</li>
	</xsl:template>
</xsl:stylesheet>
