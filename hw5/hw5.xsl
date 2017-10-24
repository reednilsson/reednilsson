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
							<tr>
								<td style = "background-color:cyan"><xsl:value-of select = "stock:symbol" /></td>
								<td style = "background-color:light gray"><xsl:value-of select = "stock:price" /></td>
								<td style = "background-color:cyan"><xsl:value-of select = "stock:ceo" /></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>