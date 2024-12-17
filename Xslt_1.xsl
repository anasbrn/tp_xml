<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Releve</title>
                <style>
                    table {border-collapse: collapse; width: 100%;}
                    th, td {border: 1px solid black; padding: 8px; text-align: left;}
                    th {background-color: #f2f2f2;}
                </style>
            </head>
            <body>
                <h1>Releve</h1>
                <xsl:for-each select="releve">
                    <ul>
                        <li>RIB: <xsl:value-of select="@RIB" /></li>
                        <li>Date de releve: <xsl:value-of select="dateReleve" /></li>
                        <li>Solde: <xsl:value-of select="solde" /></li>
                    </ul>
                    <h2>Les opérations: </h2>
                    <xsl:for-each select="operations">
                        <ul>
                            <li>Date de début: <xsl:value-of select="@dateDebut" /></li>
                            <li>Date de fin: <xsl:value-of select="@dateFin" /></li>
                        </ul>
                        <table border="1" width="90%">
                            <thead>
                              <tr>
                                  <th>Numéro</th>
                                  <th>Type</th>
                                  <th>Date</th>
                                  <th>Montant</th>
                                  <th>Decription</th>
                              </tr>
                            </thead>
                           <tbody>
                               <xsl:for-each select="operation">
                                   <tr>
                                       <td><xsl:value-of select="position()"/></td>
                                       <td><xsl:value-of select="@type"/></td>
                                       <td><xsl:value-of select="@date"/></td>
                                       <td><xsl:value-of select="@montant"/></td>
                                       <td><xsl:value-of select="@description"/></td>
                                   </tr>
                               </xsl:for-each>
                               <tr>
                                   <td colspan="4">Total des opération de débit</td>
                                   <xsl:value-of select="count(operation[@type='DEBIT'])"/>
                               </tr>
                               <tr>
                                   <td colspan="4">Total des opération de crédit</td>
                                   <xsl:value-of select="count(operation[@type='CREDIT'])"/>
                               </tr>
                           </tbody>
                     </table>
                 </xsl:for-each>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>