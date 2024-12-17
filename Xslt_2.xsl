<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Opérations de type CREDIT</title>
                <style>
                    table {border-collapse: collapse; width: 100%;}
                    th, td {border: 1px solid black; padding: 8px; text-align: left;}
                    th {background-color: #f2f2f2;}
                </style>
            </head>
            <body>
                <h1>Opérations de type CREDIT</h1>
                <table>
                    <tr>
                        <th>Date</th>
                        <th>Montant</th>
                        <th>Description</th>
                    </tr>
                    
                    <xsl:for-each select="//operation[@type='CREDIT']">
                        <tr>
                            <td><xsl:value-of select="@date"/></td>
                            <td><xsl:value-of select="@montant"/></td>
                            <td><xsl:value-of select="@description"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>
