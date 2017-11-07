<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" 
xmlns:stock = "http://www.ineasysteps.com/xsd" >

<xsl:template match="/">
<html>
<body>
	<table>
		<tr>
			<th style="background-color:#black; color:white">Symbol</th>
			<th style="background-color:#black; color:white">Price</th>
			<th style="background-color:#black; color:white">CEO</th>
		</tr>
		<xsl:for-each select="stock:item">
			<tr>
				<td><xsl:value-of select="stock:item/stock:symbol"/></td>
				<td><xsl:value-of select="stock:item/stock:price"/></td>
				<td><xsl:value-of select="stock:item/stock:ceo"/></td>

			</tr>
		</xsl:for-each>
	</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>