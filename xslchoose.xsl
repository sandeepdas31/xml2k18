<?xml version = "1.0" encoding = "UTF-8"?>
<xsl:stylesheet version = "1.0"
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
<xsl:template match = "/">
<html>
<body>
<h2>Student Table</h2>
<table border = "2">
<tr bgcolor = "yellow">
<th>ID</th>
<th>Name</th>
<th>email</th>

<th>Score</th>
<th>Comments</th>
</tr>

<xsl:for-each select = "class/employee">

<tr>
<td><xsl:value-of select = "@id"/></td>
<td><xsl:value-of select = "name"/></td>
<td><xsl:value-of select = "email"/></td>

<td><xsl:value-of select = "score"/></td>

<td>
<xsl:choose>
<xsl:when test = "score > 80">
Above Average
</xsl:when>

<xsl:when test = "score > 60">
Average
</xsl:when>

<xsl:otherwise>
Below Average
</xsl:otherwise>
</xsl:choose>
</td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
