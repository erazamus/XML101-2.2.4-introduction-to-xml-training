<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
  <html>
  <head>
    <title>Beatles</title>
  </head>
  <body>
    <h1>Functions and Operators</h1>
    <table>
      <thead>
        <tr>
          <th>Function</th>
          <th>Example</th>
          <th>XPath Expression</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><code>count()</code></td>
          <td><code>count(beatles/beatle):</code></td>
          <td><strong><xsl:value-of select="count(beatles/beatle)"/></strong></td>
        </tr>
        <tr>
          <td rowspan="2"><code>contains()</code></td>
          <td><code>contains(//beatle[last()]/@link,'webucator'):</code></td>
          <td><strong><xsl:value-of select="contains(//beatle[last()]/@link,'webucator')"/></strong></td>
        </tr>
        <tr>
          <td><code>contains(//beatle[last()]/@link,'ringostarr'):</code></td>
          <td><strong><xsl:value-of select="contains(//beatle[last()]/@link,'ringostarr')"/></strong></td>
        </tr>
        <tr>
          <td><code>=</code></td>
          <td><code>beatles/beatle[ @real = 'no' ]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ @real = 'no' ]//firstname"/></strong></td>
        </tr>
        <tr>
          <td><code>!=</code></td>
          <td><code>beatles/beatle[ @real != 'no' ]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ @real != 'no' ]//firstname"/></strong></td>
        </tr>
        <tr>
          <td><code>not()</code></td>
          <td><code>beatles/beatle[ not(@real) ][2]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ not(@real) ][2]//firstname"/></strong></td>
        </tr>
        <tr>
          <td><code>last()</code></td>
          <td><code>beatles/beatle[ not(@real) ][last()]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ not(@real) ][last()]//firstname"/></strong></td>
        </tr>
        <tr>
          <td><code>not() &amp; =</code></td>
          <td><code>beatles/beatle[ not(@real='no') ][2]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ not(@real='no') ][2]//firstname"/></strong></td>
        </tr>
        <tr>
          <td><code>not() &amp; = &amp; last()</code></td>
          <td><code>beatles/beatle[ not(@real='no') ][last()]//firstname:</code></td>
          <td><strong><xsl:value-of select="beatles/beatle[ not(@real='no') ][last()]//firstname"/></strong></td>
        </tr>
      </tbody>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>