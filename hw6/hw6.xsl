<?xml version = "1.0" encoding = "UTF-8" ?>

	<xsl:stylesheet version = "1.0"
		xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
		xmlns:stock = "http://www.ineasysteps.com/xsd">

	<xsl:output method = "html" encoding = "UTF-8" />

	<xsl:template match = "stock:doc" >
		<html>
			<body>
				<table>
					<tr style = "color:white; background-color:black">
						<th>Symbol</th><th>Price</th><th>CEO</th>
					</tr>
					<xsl:for-each select = "stock:item">
						<xsl:if test = "stock:price &gt; 70.00" >
							<xsl:choose>
									<xsl:when test="position() mod 2=1">
										<tr style = "background-color:cyan">
											<td><xsl:value-of select = "stock:symbol" /></td>
											<td>$<xsl:value-of select = "stock:price" /></td>
											<td><xsl:value-of select = "stock:ceo" /></td>
										</tr>
									</xsl:when>
									<xsl:otherwise>
										<tr style = "background-color:LightGray">
											<td><xsl:value-of select = "stock:symbol" /></td>
											<td>$<xsl:value-of select = "stock:price" /></td>
											<td><xsl:value-of select = "stock:ceo" /></td>
										</tr>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:if>	
					</xsl:for-each>
						<div>
							The total of stocks that cost more than $70.00 is
							<xsl:value-of select = "count(/stock:doc/stock:item[stock:price > 70])" />!
						</div>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>