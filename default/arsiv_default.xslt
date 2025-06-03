<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:param name="param_logo"/>
	<xsl:variable name="var_logo"/>
	<xsl:param name="param_Imza"/>
	<xsl:variable name="var_Imza"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<style type="text/css">
					
					body {
					background-color: #FFFFFF;
					font-family: 'Tahoma', "Times New Roman", Times, serif;
					font-size: 11px;
					color: #666666;
					}

					h1, h2 {
					padding-bottom: 3px;
					padding-top: 3px;
					margin-bottom: 5px;
					text-transform: uppercase;
					font-family: Arial, Helvetica, sans-serif;
					}

					h1 {
					font-size: 1.4em;
					text-transform:none;
					}

					h2 {
					font-size: 1em;
					color: brown;
					}

					h3 {
					font-size: 1em;
					color: #333333;
					text-align: justify;
					margin: 0;
					padding: 0;
					}

					h4 {
					font-size: 1.1em;
					font-style: bold;
					font-family: Arial, Helvetica, sans-serif;
					color: #000000;
					margin: 0;
					padding: 0;
					}

					hr{
					height:2px;
					color: #000000;
					background-color: #000000;
					border-bottom: 1px solid #000000;
					}

					p, ul, ol {
					margin-top: 1.5em;
					}

					ul, ol {
					margin-left: 3em;
					}

					blockquote {
					margin-left: 3em;
					margin-right: 3em;
					font-style: italic;
					}

					a {
					text-decoration: none;
					color: #70A300;
					}

					a:hover {
					border: none;
					color: #70A300;
					}

					#despatchTable{
					border-collapse:collapse;
					font-size:11px;
					float:right;
					border-color:gray;

					}

					#ettnTable{
					border-collapse:collapse;
					font-size:11px;
					border-color:gray;
					}

					#customerPartyTable{
					border-width: 0px;
					border-spacing: ;
					border-style: inset;
					border-color: gray;
					border-collapse: collapse;
					background-color:
					}

					#customerIDTable{
					border-width: 2px;
					border-spacing: ;
					border-style: inset;
					border-color: gray;
					border-collapse: collapse;
					background-color:
					}

					#customerIDTableTd{
					border-width: 2px;
					border-spacing: ;
					border-style: inset;
					border-color: gray;
					border-collapse: collapse;
					background-color:
					}

					#lineTable{
					border-width:2px;
					border-spacing: ;
					border-style: inset;
					border-color: black;
					border-collapse: collapse;
					background-color: ;
					}

					#lineTableTd{
					border-width: 1px;
					padding: 1px;
					border-style: inset;
					border-color: black;
					background-color: white;
					}

					#lineTableTr{
					border-width: 1px;
					padding: 0px;
					border-style: inset;
					border-color: black;
					background-color: white;
					-moz-border-radius: ;
					}

					#lineTableDummyTd {
					border-width: 1px;
					border-color:white;
					padding: 1px;
					border-style: inset;
					border-color: black;
					background-color: white;
					}

					#lineTableBudgetTd{
					border-width: 2px;
					border-spacing:0px;
					padding: 1px;
					border-style: inset;
					border-color: black;
					background-color: white;
					-moz-border-radius: ;
					}

					#notesTable{

					border-width: 2px;
					border-spacing: ;
					border-style: inset;
					border-color: black;
					border-collapse: collapse;
					background-color:
					}

					#notesTableTd{


					border-width: 0px;
					border-spacing: ;
					border-style: inset;
					border-color: black;
					border-collapse: collapse;
					background-color:
					}

					table{

					border-spacing:0px;

					}

					#budgetContainerTable{

					border-width: 0px;
					border-spacing: 0px;
					border-style: inset;
					border-color: black;
					border-collapse: collapse;
					background-color: ;

					}

					td{
					border-color:gray;
					}
					
				</style>
				<title>e-Arşiv Fatura</title>
			</head>
			<body style="margin:10px;">
				<xsl:for-each select="$XML">
					<table>
						<tr>
							<td>
								<table style="width:980px;" border="0" cellspacing="0" width="980" cellpadding="0">
									<tbody>
										<tr valign="top">
											<td width="40%">
												<br/>
												<hr/>
												<table align="center" border="0" width="100%">
													<tbody>
														<tr align="left">
															<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
																<td align="left">
																	<xsl:if test="cac:PartyName">
																		<xsl:value-of select="cac:PartyName/cbc:Name"/>
																		<br/>
																	</xsl:if>
																	<xsl:for-each select="cac:Person">
																		<xsl:for-each select="cbc:Title">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:FirstName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:MiddleName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:FamilyName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:NameSuffix">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</tr>
														<tr align="left">
															<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
																<td align="left">
																	<xsl:for-each select="cac:PostalAddress">
																		<xsl:for-each select="cbc:District">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:StreetName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cbc:BuildingName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:if test="not(normalize-space(cbc:Region)='')">
																			<xsl:for-each select="cbc:Region">
																				<xsl:apply-templates/>
																				<xsl:text>&#160;</xsl:text>
																			</xsl:for-each>
																		</xsl:if>
																		<xsl:if test="not(normalize-space(cbc:BuildingNumber)='')">
																			<xsl:for-each select="cbc:BuildingNumber">
																				<xsl:text>No:&#160;</xsl:text>
																				<xsl:apply-templates/>
																				<xsl:text>&#160;</xsl:text>
																			</xsl:for-each>
																		</xsl:if>
																		<xsl:if test="not(normalize-space(cbc:Room)='')">
																			<xsl:for-each select="cbc:Room">
																				<xsl:text>/</xsl:text>
																				<xsl:apply-templates/>
																				<xsl:text>&#160;</xsl:text>
																			</xsl:for-each>
																		</xsl:if>
																		<xsl:if test="not(normalize-space(cbc:PostalZone)='')">
																			<xsl:for-each select="cbc:PostalZone">
																				<xsl:text>PK:&#160;</xsl:text>
																				<xsl:apply-templates/>
																				<xsl:text>&#160;</xsl:text>
																			</xsl:for-each>
																		</xsl:if>
																		<br/>
																		<xsl:for-each select="cbc:CitySubdivisionName">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																		<xsl:text>&#160;/&#160;</xsl:text>
																		<xsl:for-each select="cbc:CityName">
																			<xsl:apply-templates/>
																			<xsl:text>&#160;/&#160;</xsl:text>
																		</xsl:for-each>
																		<xsl:for-each select="cac:Country/cbc:Name">
																			<xsl:apply-templates/>
																			<xsl:text/>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</xsl:for-each>
														</tr>
														<xsl:if test="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
															<tr align="left">
																<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
																	<td align="left">
																		<xsl:for-each select="cac:Contact">
																			<xsl:if test="cbc:Telephone">
																				<xsl:text>Tel:&#160;</xsl:text>
																				<xsl:for-each select="cbc:Telephone">
																					<xsl:apply-templates/>
																					<xsl:text>&#160;</xsl:text>
																				</xsl:for-each>
																			</xsl:if>
																			<xsl:if test="not(normalize-space(cbc:Telefax)='')">
																				<xsl:text>&#160;Fax:&#160;</xsl:text>
																				<xsl:for-each select="cbc:Telefax">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:if>
																			<xsl:text/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</tr>
														</xsl:if>
														<xsl:if test="not(normalize-space(//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI)='')">
															<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cbc:WebsiteURI">
																<tr align="left">
																	<td>
																		<xsl:text>Web Sitesi:&#160;</xsl:text>
																		<xsl:value-of select="."/>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:if>
														<xsl:if test="not(normalize-space(//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail)='')">
															<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
																<tr align="left">
																	<td>
																		<xsl:text>E-Posta:&#160;</xsl:text>
																		<xsl:value-of select="."/>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:if>
														<xsl:if test="not(normalize-space(n1:Invoice/cac:AccountingSupplierParty/cac:Party)='')">
															<tr align="left">
																<xsl:for-each select="n1:Invoice/cac:AccountingSupplierParty/cac:Party">
																	<td align="left">
																		<xsl:text>Vergi Dairesi:&#160;</xsl:text>
																		<xsl:for-each select="cac:PartyTaxScheme">
																			<xsl:for-each select="cac:TaxScheme">
																				<xsl:for-each select="cbc:Name">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																			<xsl:text/>
																		</xsl:for-each>
																	</td>
																</xsl:for-each>
															</tr>
														</xsl:if>
														<xsl:for-each select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification">
															<tr align="left">
																<td>
																	<xsl:value-of select="cbc:ID/@schemeID"/>
																	<xsl:text>:&#160;</xsl:text>
																	<xsl:value-of select="cbc:ID"/>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
												<hr/>
											</td>
											<td width="20%" align="center" valign="middle" rowspan="2">
												<br/>
												<br/>
												<img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/png;base64,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"/>
												<h1 align="center">
													<span style="font-weight:bold;color:black;">
														<xsl:text>e-Arşiv Fatura</xsl:text>
													</span>
												</h1>
												<table>
													<tr id="Imza">
														<td>
															<img alt="Imza_Custom" style="max-width:150px;max-height:90px;" src="data:image/png;base64,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"/>
														</td>
													</tr>
												</table>
											</td>
											<td width="20%" align="middle" valign="middle">
												<img alt="Logo_Custom" style="max-width:250px;max-height:150px;" src="data:image/jpg;base64,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"/>
											</td>
											<!-- 07-08-2023 qr code regülasyonu sovos -->
											<td width="20%" align="right">
												<img src="{$QRSOVOS}" alt="qrcode" width="175px" align="right"/>
											</td>
											<!-- 07-08-2023 qr code regülasyonu sovos -->
										</tr>
										<tr style="height:118px; " valign="top">
											<td width="40%" align="right" valign="bottom">
												<table id="customerPartyTable" align="left" border="0" height="50%">
													<tbody>
														<tr style="height:71px; ">
															<td>
																<hr/>
																<table align="center" border="0">
																	<tbody>
																		<tr>
																			<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																				<td style="width:469px; " align="left">
																					<span style="font-weight:bold; ">
																						<xsl:text>SAYIN</xsl:text>
																					</span>
																				</td>
																			</xsl:for-each>
																		</tr>
																		<tr>
																			<xsl:choose>
																				<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																					<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																						<xsl:call-template name="Party_Title">
																							<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																						</xsl:call-template>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
																					<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																						<xsl:call-template name="Party_Title">
																							<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																						</xsl:call-template>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																						<xsl:call-template name="Party_Title">
																							<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																						</xsl:call-template>
																					</xsl:for-each>
																				</xsl:otherwise>
																			</xsl:choose>
																		</tr>
																		<xsl:choose>
																			<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																				<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																					<tr>
																						<xsl:call-template name="Party_Adress">
																							<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																						</xsl:call-template>
																					</tr>
																					<xsl:call-template name="Party_Other">
																						<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																					</xsl:call-template>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:when test="n1:Invoice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='EXPORT']">
																				<xsl:for-each select="n1:Invoice/cac:BuyerCustomerParty/cac:Party">
																					<tr>
																						<xsl:call-template name="Party_Adress">
																							<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																						</xsl:call-template>
																					</tr>
																					<xsl:call-template name="Party_Other">
																						<xsl:with-param name="PartyType">EXPORT</xsl:with-param>
																					</xsl:call-template>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<xsl:for-each select="n1:Invoice/cac:AccountingCustomerParty/cac:Party">
																					<tr>
																						<xsl:call-template name="Party_Adress">
																							<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																						</xsl:call-template>
																					</tr>
																					<xsl:call-template name="Party_Other">
																						<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																					</xsl:call-template>
																				</xsl:for-each>
																			</xsl:otherwise>
																		</xsl:choose>
																	</tbody>
																</table>
																<hr/>
															</td>
														</tr>
													</tbody>
												</table>
												<br/>
											</td>
											<td width="60%" align="center" valign="bottom" colspan="2">
												<table width="100%" border="1" id="despatchTable">
													<tbody>
														<tr>
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Özelleştirme No</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice/cbc:CustomizationID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Senaryo</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice/cbc:ProfileID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Fatura Tipi</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice/cbc:InvoiceTypeCode">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Fatura No</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice/cbc:ID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Fatura Tarihi</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice/cbc:IssueDate">
																	<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Fatura Saati</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice">
																	<xsl:for-each select="cbc:IssueTime">
																		<xsl:value-of select="substring(.,0,9)"/>
																	</xsl:for-each>
																</xsl:for-each>
															</td>
														</tr>
														<tr style="height:13px; ">
															<td align="left">
																<span style="font-weight:bold; ">
																	<xsl:text>Muhasebe Fatura No</xsl:text>
																</span>
															</td>
															<td align="left">
																<xsl:for-each select="n1:Invoice">
																	<xsl:for-each select="cac:AdditionalDocumentReference">
																		<xsl:if test="cbc:DocumentTypeCode = 'CUST_INV_ID'">
																			<xsl:value-of select="cbc:ID"/>
																		</xsl:if>
																	</xsl:for-each>
																</xsl:for-each>
															</td>
														</tr>
														<xsl:for-each select="n1:Invoice/cac:DespatchDocumentReference">
															<tr style="height:13px; ">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>İrsaliye No</xsl:text>
																	</span>
																	<xsl:text> </xsl:text>
																</td>
																<td align="left">
																	<xsl:value-of select="cbc:ID"/>
																</td>
															</tr>
															<tr style="height:13px; ">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>İrsaliye Tarihi</xsl:text>
																	</span>
																</td>
																<td align="left">
																	<xsl:for-each select="cbc:IssueDate">
																		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
														<xsl:if test="//n1:Invoice/cac:OrderReference">
															<tr style="height:13px">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>Sipariş No</xsl:text>
																	</span>
																</td>
																<td align="left">
																	<xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:ID">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:if>
														<xsl:if test="//n1:Invoice/cac:OrderReference/cbc:IssueDate">
															<tr style="height:13px">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>Sipariş Tarihi</xsl:text>
																	</span>
																</td>
																<td align="left">
																	<xsl:for-each select="n1:Invoice/cac:OrderReference/cbc:IssueDate">
																		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:if>
														<xsl:if test="n1:Invoice/cac:InvoicePeriod/cbc:StartDate">
															<tr style="height:13px; ">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>Dönem Başlangıcı</xsl:text>
																	</span>
																</td>
																<td align="left">
																	<xsl:for-each select="n1:Invoice">
																		<xsl:for-each select="cac:InvoicePeriod">
																			<xsl:if test="cbc:StartDate">
																				<xsl:value-of select="cbc:StartDate"/>
																			</xsl:if>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:if>
														<xsl:if test="n1:Invoice/cac:InvoicePeriod/cbc:EndDate">
															<tr style="height:13px; ">
																<td align="left">
																	<span style="font-weight:bold; ">
																		<xsl:text>Dönem Bitişi</xsl:text>
																	</span>
																</td>
																<td align="left">
																	<xsl:for-each select="n1:Invoice">
																		<xsl:for-each select="cac:InvoicePeriod">
																			<xsl:if test="cbc:EndDate">
																				<xsl:value-of select="cbc:EndDate"/>
																			</xsl:if>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:if>
													</tbody>
												</table>
											</td>
										</tr>
										<tr align="left">
											<td>
												<table id="ettnTable">
													<tr style="height:13px;">
														<td align="left" valign="top">
															<span style="font-weight:bold; ">
																<xsl:text>ETTN:</xsl:text>
															</span>
														</td>
														<td align="left" width="240px">
															<xsl:for-each select="n1:Invoice">
																<xsl:for-each select="cbc:UUID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</td>
													</tr>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<div id="lineTableAligner">
									<span>
										<xsl:text>&#160;</xsl:text>
									</span>
								</div>
								<table border="1" id="lineTable" width="980">
									<tbody>
										<tr class="lineTableTr">
											<td class="lineTableTd" width="1%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>Sıra No</xsl:text>
												</span>
											</td>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification">
												<td class="lineTableTd" align="center" width="5%">
													<span style="font-weight:bold;" align="center">
														<xsl:text>Alıcı Ürün Kodu</xsl:text>
													</span>
												</td>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:SellersItemIdentification">
												<td class="lineTableTd" align="center" width="5%">
													<span style="font-weight:bold;" align="center">
														<xsl:text>Gönderici Ürün Kodu</xsl:text>
													</span>
												</td>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:ManufacturersItemIdentification">
												<td class="lineTableTd" align="center" width="5%">
													<span style="font-weight:bold;" align="center">
														<xsl:text>Üretici Ürün Kodu</xsl:text>
													</span>
												</td>
											</xsl:if>
											<td class="lineTableTd" width="44%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>Mal Hizmet</xsl:text>
												</span>
											</td>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cbc:Note">
												<td class="lineTableTd" width="13%" align="center">
													<span style="font-weight:bold;">
														<xsl:text>Açıklama</xsl:text>
													</span>
												</td>
											</xsl:if>
											<td class="lineTableTd" width="8%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>Miktar</xsl:text>
												</span>
											</td>
											<td class="lineTableTd" width="8%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>Birim Fiyat</xsl:text>
												</span>
											</td>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric and //n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric !=0">
												<td class="lineTableTd" width="5%" align="center">
													<span style="font-weight:bold;">
														<xsl:text>İskonto Oranı</xsl:text>
													</span>
												</td>
											</xsl:if>
											<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount !=0">
												<td class="lineTableTd" width="8%" align="center">
													<span style="font-weight:bold;">
														<xsl:text>İskonto Tutarı</xsl:text>
													</span>
												</td>
											</xsl:if>
											<td class="lineTableTd" width="5%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>KDV Oranı</xsl:text>
												</span>
											</td>
											<td class="lineTableTd" width="8%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>KDV Tutarı</xsl:text>
												</span>
											</td>
											<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode !='0015' or //n1:Invoice/cac:InvoiceLine/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
												<td class="lineTableTd" width="5%" align="center">
													<span style="font-weight:bold;">
														<xsl:text>Diğer Vergiler</xsl:text>
													</span>
												</td>
											</xsl:if>
											<td class="lineTableTd" width="10%" align="center">
												<span style="font-weight:bold;">
													<xsl:text>Mal Hizmet Tutarı</xsl:text>
												</span>
											</td>
											<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='OZELMATRAH'">
												<td class="lineTableTd" style="width:auto" align="center">
													<span style="font-weight:bold;">
														<xsl:text>Özel Matrah Nedeni</xsl:text>
													</span>
												</td>
												<td class="lineTableTd" width="5%" align="center">
													<span style="font-weight:bold;">
														<xsl:text>Özel Matrah Tutarı</xsl:text>
													</span>
												</td>
											</xsl:if>
										</tr>
										<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
											<xsl:apply-templates select="."/>
										</xsl:for-each>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								<table id="budgetContainerTable" style="margin-top:10px;" width="980px">
									<tr align="right">
										<td/>
										<td class="lineTableBudgetTd" align="right" width="213">
											<span style="font-weight:bold; ">
												<xsl:text>Mal Hizmet Toplam Tutarı</xsl:text>
											</span>
										</td>
										<td class="lineTableBudgetTd" style="width:80px; " align="right">
											<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
												<xsl:call-template name="Curr_Type"/>
											</xsl:for-each>
										</td>
									</tr>
									<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
										<xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
											<tr align="right">
												<td/>
												<td class="lineTableBudgetTd" align="right" width="213">
													<span style="font-weight:bold; ">
														<xsl:text>Teslim Bedeli</xsl:text>
													</span>
												</td>
												<td class="lineTableBudgetTd" style="width:80px; " align="right">
													<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount">
														<xsl:call-template name="Curr_Type"/>
													</xsl:for-each>
												</td>
											</tr>
										</xsl:if>
									</xsl:for-each>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount !=0">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" align="right" width="213">
												<span style="font-weight:bold; ">
													<xsl:text>Toplam İskonto</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount">
													<xsl:call-template name="Curr_Type"/>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:if>
									<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Hesaplanan</xsl:text>
													<xsl:text>&#160;</xsl:text>
													<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
													<xsl:if test="../../cbc:InvoiceTypeCode!='OZELMATRAH'">
														<xsl:text>&#160;</xsl:text>
														<xsl:text>(%</xsl:text>
														<xsl:value-of select="cbc:Percent"/>
														<xsl:text>)</xsl:text>
													</xsl:if>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
													<xsl:text> </xsl:text>
													<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
													<xsl:if test="../../cbc:TaxAmount/@currencyID">
														<xsl:text> </xsl:text>
														<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
															<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:for-each>
									<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" align="right" width="213">
												<span style="font-weight:bold; ">
													<xsl:text>KDV Matrahı</xsl:text>
													<xsl:text>&#160;</xsl:text>
													<xsl:text>(%</xsl:text>
													<xsl:value-of select="cbc:Percent"/>
													<xsl:text>)</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(./cbc:TaxableAmount[../cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015'], '###.##0,00', 'european')"/>
												<xsl:if test="./cbc:TaxableAmount/@currencyID">
													<xsl:text>&#160;</xsl:text>
													<span>
														<xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode = 'TRY' or //n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
															<xsl:value-of select="./cbc:TaxableAmount/@currencyID"/>
														</xsl:if>
													</span>
												</xsl:if>
											</td>
										</tr>
									</xsl:for-each>
									<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
										<xsl:if test="cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode = '4171'">
											<tr align="right">
												<td/>
												<td class="lineTableBudgetTd" align="right" width="213">
													<span style="font-weight:bold; ">
														<xsl:text>Tevkifat Dahil Toplam Tutar</xsl:text>
													</span>
												</td>
												<td class="lineTableBudgetTd" style="width:80px; " align="right">
													<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
														<xsl:call-template name="Curr_Type"/>
													</xsl:for-each>
												</td>
											</tr>
											<tr align="right">
												<td/>
												<td class="lineTableBudgetTd" align="right" width="213">
													<span style="font-weight:bold; ">
														<xsl:text>Tevkifat Hariç Toplam Tutar</xsl:text>
													</span>
												</td>
												<td class="lineTableBudgetTd" style="width:80px; " align="right">
													<xsl:for-each select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
														<xsl:call-template name="Curr_Type"/>
													</xsl:for-each>
												</td>
											</tr>
										</xsl:if>
									</xsl:for-each>
									<xsl:for-each select="n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Hesaplanan KDV Tevkifat</xsl:text>
													<xsl:text>(%</xsl:text>
													<xsl:value-of select="cbc:Percent"/>
													<xsl:text>)</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:for-each select="cac:TaxCategory/cac:TaxScheme">
													<xsl:text> </xsl:text>
													<xsl:value-of select="format-number(../../cbc:TaxAmount, '###.##0,00', 'european')"/>
													<xsl:if test="../../cbc:TaxAmount/@currencyID">
														<xsl:text> </xsl:text>
														<xsl:if test="../../cbc:TaxAmount/@currencyID = 'TRL' or ../../cbc:TaxAmount/@currencyID = 'TRY'">
															<xsl:text>TL</xsl:text>
														</xsl:if>
														<xsl:if test="../../cbc:TaxAmount/@currencyID != 'TRL' and ../../cbc:TaxAmount/@currencyID != 'TRY'">
															<xsl:value-of select="../../cbc:TaxAmount/@currencyID"/>
														</xsl:if>
													</xsl:if>
												</xsl:for-each>
											</td>
										</tr>
									</xsl:for-each>
									<xsl:if test="sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount)>0">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
													<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
												</xsl:if>
											</td>
										</tr>
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
													<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
												</xsl:if>
											</td>
										</tr>
									</xsl:if>
									<xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifata Tabi İşlem Tutarı</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
													<xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
												</xsl:if>
												<xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
													<xsl:value-of select="format-number(sum(n1:Invoice/cac:InvoiceLine[cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:LineExtensionAmount), '###.##0,00', 'european')"/>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
													<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
												</xsl:if>
											</td>
										</tr>
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Tevkifata Tabi İşlem Üzerinden Hes. KDV</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:if test="n1:Invoice/cac:InvoiceLine[cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme]">
													<xsl:value-of select="format-number(sum(n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
												</xsl:if>
												<xsl:if test="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=&apos;9015&apos;">
													<xsl:value-of select="format-number(sum(n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode=9015]/cbc:TaxableAmount), '###.##0,00', 'european')"/>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode = 'TRL' or n1:Invoice/cbc:DocumentCurrencyCode = 'TRY'">
													<xsl:text>TL</xsl:text>
												</xsl:if>
												<xsl:if test="n1:Invoice/cbc:DocumentCurrencyCode != 'TRL' and n1:Invoice/cbc:DocumentCurrencyCode != 'TRY'">
													<xsl:value-of select="n1:Invoice/cbc:DocumentCurrencyCode"/>
												</xsl:if>
											</td>
										</tr>
									</xsl:if>
									<tr align="right">
										<td/>
										<td class="lineTableBudgetTd" width="213" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Vergiler Dahil Toplam Tutar</xsl:text>
											</span>
										</td>
										<td class="lineTableBudgetTd" style="width:80px; " align="right">
											<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount">
												<xsl:call-template name="Curr_Type"/>
											</xsl:for-each>
										</td>
									</tr>
									<tr align="right">
										<td/>
										<td class="lineTableBudgetTd" width="213" align="right">
											<span style="font-weight:bold; ">
												<xsl:text>Ödenecek Tutar</xsl:text>
											</span>
										</td>
										<td class="lineTableBudgetTd" style="width:80px; " align="right">
											<xsl:for-each select="n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount">
												<xsl:call-template name="Curr_Type"/>
											</xsl:for-each>
										</td>
									</tr>
									<xsl:for-each select="n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
										<xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
											<tr align="right">
												<td/>
												<td class="lineTableBudgetTd" width="213" align="right">
													<span style="font-weight:bold; ">
														<xsl:text>Hesaplanan&#160;</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cac:TaxScheme/cbc:Name"/>
														<xsl:text>&#160;(%</xsl:text>
														<xsl:value-of select="cbc:Percent"/>
														<xsl:text>)&#160;(TL)</xsl:text>
													</span>
												</td>
												<td class="lineTableBudgetTd" style="width:80px; " align="right">
													<span>
														<xsl:value-of select="format-number(cbc:TaxAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
														<xsl:text>&#160;</xsl:text>
														<xsl:text>TL</xsl:text>
													</span>
												</td>
											</tr>
										</xsl:if>
									</xsl:for-each>
									<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRL' and //n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount/@currencyID != 'TRY'">
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Vergiler Hariç Toplam Tutar&#160;(TL)</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:text>TL</xsl:text>
											</td>
										</tr>
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Vergiler Dahil Toplam Tutar&#160;(TL)</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:text>TL</xsl:text>
											</td>
										</tr>
										<tr align="right">
											<td/>
											<td class="lineTableBudgetTd" width="213" align="right">
												<span style="font-weight:bold; ">
													<xsl:text>Ödenecek Tutar&#160;(TL)</xsl:text>
												</span>
											</td>
											<td class="lineTableBudgetTd" style="width:80px; " align="right">
												<xsl:value-of select="format-number(//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount * //n1:Invoice/cac:PricingExchangeRate/cbc:CalculationRate, '###.##0,00', 'european')"/>
												<xsl:text>&#160;</xsl:text>
												<xsl:text>TL</xsl:text>
											</td>
										</tr>
									</xsl:if>
								</table>
							</td>
						</tr>
						<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode[text()='TEVKIFATIADE' or text()='TEVKIFATIADE']">
							<tr>
								<td>
									<table id="lineTable" style="margin-top:10px;" width="980">
										<thead>
											<tr>
												<td align="left">
													<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;İadeye Konu Olan Faturalar</span>
												</td>
											</tr>
										</thead>
										<tbody>
											<tr align="left" class="lineTableTr">
												<td class="lineTableTd">
													<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Fatura No</span>
												</td>
												<td class="lineTableTd">
													<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Tarih</span>
												</td>
											</tr>
											<xsl:for-each select="//n1:Invoice/cac:BillingReference/cac:InvoiceDocumentReference">
												<tr align="left" class="lineTableTr">
													<td class="lineTableTd">
														&#160;&#160;&#160;&#160;&#160;
														<xsl:value-of select="cbc:ID"/>
													</td>
													<td class="lineTableTd">
														&#160;&#160;&#160;&#160;&#160;
														<xsl:value-of select="cbc:IssueDate"/>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</td>
							</tr>
						</xsl:if>
						<tr>
							<td>
								<table id="notesTable" width="980" align="left" style="margin-top:10px;">
									<tbody>
										<tr align="left">
											<td id="notesTableTd">
												<xsl:text>İrsaliye yerine geçmektedir.</xsl:text>
												<br/>
												<b/>
												<xsl:text>E-Arşiv izni kapsamında elektronik ortamda iletilmiştir.</xsl:text>
												<br/>
												<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal">
													<xsl:if test="(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015' or ../../cbc:InvoiceTypeCode='OZELMATRAH') and cac:TaxCategory/cbc:TaxExemptionReason">
														<b>Vergi İstisna Muafiyet Sebebi:&#160;</b>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
														<br/>
													</xsl:if>
													<xsl:if test="starts-with(cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode,'007') and cac:TaxCategory/cbc:TaxExemptionReason">
														<b>ÖTV İstisna Muafiyet Sebebi:&#160;</b>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
														<br/>
													</xsl:if>
												</xsl:for-each>
												<xsl:for-each select="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal">
													<xsl:if test="cac:TaxCategory/cbc:TaxExemptionReason">
														<b>Özel Matrah Açıklama: </b>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
														<xsl:text>-</xsl:text>
														<xsl:value-of select="cac:TaxCategory/cbc:TaxExemptionReason"/>
														<br/>
													</xsl:if>
												</xsl:for-each>
												<xsl:for-each select="//n1:Invoice/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
													<b>Tevkifat Sebebi:&#160;</b>
													<xsl:value-of select="cbc:TaxTypeCode"/>
													<xsl:text>-</xsl:text>
													<xsl:value-of select="cbc:Name"/>
													<br/>
												</xsl:for-each>
												<xsl:for-each select="//n1:Invoice/cac:AdditionalDocumentReference">
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRWEBURI'">
														<b/>
														<xsl:text>Bu satış internet üzerinden yapılmıştır.</xsl:text>
														<br/>
														<b/>
														<xsl:text>Web Adresi:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRPAY'">
														<b/>
														<xsl:text>Ödeme Şekli:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EREPODARAC'">
														<b/>
														<xsl:text>Ödeme Aracısı Adı:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRPAYDATE'">
														<b/>
														<xsl:text>Ödeme Tarihi:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRPAYDELIV'">
														<b/>
														<xsl:text>Gönderim Tarihi:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRCARR1NAME'">
														<b/>
														<xsl:text>Gönderiyi Taşıyan Ad Soyad:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRCARR1'">
														<b/>
														<xsl:text>Gönderici Taşıyan TCKN:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRCARR2NAME2'">
														<b/>
														<xsl:text>Gönderiyi Taşıyan Ünvan:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:DocumentTypeCode = 'EUPRCARR2'">
														<b/>
														<xsl:text>Gönderiyi Taşıyan VKN:&#160;</xsl:text>
														<b/>
														<xsl:value-of select="./cbc:ID"/>
														<br/>
													</xsl:if>
												</xsl:for-each>
												<xsl:for-each select="//n1:Invoice/cac:PaymentMeans">
													<xsl:if test="./cbc:PaymentDueDate">
														<b>Ödeme Tarihi:&#160;</b>
														<xsl:value-of select="substring(string(./cbc:PaymentDueDate),9,2)"/>
														-
														<xsl:value-of select="substring(string(./cbc:PaymentDueDate),6,2)"/>
														-
														<xsl:value-of select="substring(string(./cbc:PaymentDueDate),1,4)"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:InstructionNote">
														<b>Ödeme Notu:&#160;</b>
														<xsl:value-of select="./cbc:InstructionNote"/>
														<br/>
													</xsl:if>
													<xsl:if test="//n1:Invoice/cac:PaymentMeans/cbc:PaymentMeansCode">
														<b>Ödeme Şekli:&#160;</b>
														<xsl:if test="cbc:PaymentMeansCode[text()='20']">
															<xsl:text>ÇEK</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='30']">
															<xsl:text>HAVALE</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='48']">
															<xsl:text>KREDİ KARTI</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='10']">
															<xsl:text>NAKİT</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='42']">
															<xsl:text>OTOMATİK ÖDEME</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='60']">
															<xsl:text>SENET</xsl:text>
														</xsl:if>
														<xsl:if test="cbc:PaymentMeansCode[text()='ZZZ']">
															<xsl:text>KARŞILIKLI TANIMLANMIŞ</xsl:text>
														</xsl:if>
														<br/>
													</xsl:if>
													<xsl:if test="./cbc:PaymentChannelCode">
														<b>Ödeme Kanalı:&#160;</b>
														<xsl:value-of select="./cbc:PaymentChannelCode"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cac:PayeeFinancialAccount/cbc:CurrencyCode">
														<b>Ödeme Para Birimi:&#160;</b>
														<xsl:value-of select="./cac:PayeeFinancialAccount/cbc:CurrencyCode"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cac:PayeeFinancialAccount/cbc:ID">
														<b>Hesap Numarası:&#160;</b>
														<xsl:value-of select="./cac:PayeeFinancialAccount/cbc:ID"/>
														<br/>
													</xsl:if>
													<xsl:if test="./cac:PayeeFinancialAccount/cbc:PaymentNote">
														<b>Hesap Açıklaması:&#160;</b>
														<xsl:value-of select="./cac:PayeeFinancialAccount/cbc:PaymentNote"/>
														<br/>
													</xsl:if>
												</xsl:for-each>
												<xsl:if test="//n1:Invoice/cac:PaymentTerms/cbc:Note">
													<b>Ödeme Koşulu:&#160;</b>
													<xsl:value-of select="//n1:Invoice/cac:PaymentTerms/cbc:Note"/>
													<br/>
												</xsl:if>
												<xsl:for-each select="//n1:Invoice/cbc:Note">
													<b/>
													<xsl:value-of select="."/>
													<br/>
												</xsl:for-each>
											</td>
										</tr>
										<tr class="duzenle"><td class="duzenle"> Banka Bilgileri:</td></tr>
									</tbody>
								</table>
							</td>
						</tr>
						<xsl:if test="//n1:Invoice/cac:AdditionalDocumentReference/cbc:DocumentTypeCode = 'EUPRWEBURI'">
							<tr>
								<td>
									<table class="notesTable" align="left" cellpadding="0" cellspacing="0" style="margin-top:10px;">
										<tr>
											<td>
												<div style="width:980px;text-align:center;margin-bottom:5px;">
													<span style="font-weight:bold;">
														<xsl:text>İADE BÖLÜMÜ</xsl:text>
													</span>
												</div>
												<table border="1" id="lineTable" align="left" width="980">
													<tbody>
														<tr>
															<td align="center" width="10%">
																<span style="font-weight:bold; ">
																	<xsl:text>İade Eden Adı</xsl:text>
																</span>
															</td>
															<td align="center" width="9%">
																<span style="font-weight:bold; ">
																	<xsl:text>İade Eden Soyadı</xsl:text>
																</span>
															</td>
															<td align="center" width="9%">
																<span style="font-weight:bold; ">
																	<xsl:text>Malın Cinsi</xsl:text>
																</span>
															</td>
															<td align="center" width="8%">
																<span style="font-weight:bold; ">
																	<xsl:text>Miktar</xsl:text>
																</span>
															</td>
															<td align="center" width="8%">
																<span style="font-weight:bold; ">
																	<xsl:text>Birim Fiyat</xsl:text>
																</span>
															</td>
															<td align="center" width="8%">
																<span style="font-weight:bold; ">
																	<xsl:text>Tutar</xsl:text>
																</span>
															</td>
															<td align="center" width="31%">
																<span style="font-weight:bold; ">
																	<xsl:text>Adres</xsl:text>
																</span>
															</td>
															<td align="center" width="13%">
																<span style="font-weight:bold; ">
																	<xsl:text>İmza</xsl:text>
																</span>
															</td>
														</tr>
														<xsl:for-each select="//n1:Invoice/cac:InvoiceLine">
															<tr align="left">
																<td style="width:10%;text-align:left">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:9%;text-align:left">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:9%;text-align:left">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:8%;text-align:left;">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:8%;text-align:left;">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:8%;text-align:left">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:31%;text-align:left">
																	<xsl:text>&#160;</xsl:text>
																</td>
																<td style="width:13%;text-align:left;">
																	<xsl:text>&#160;</xsl:text>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
									</table>
								</td>
							</tr>
						</xsl:if>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="dateFormatter">
		<xsl:value-of select="substring(.,9,2)"/>
		-
		<xsl:value-of select="substring(.,6,2)"/>
		-
		<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//n1:Invoice/cac:InvoiceLine">
		<tr class="lineTableTr">
			<td class="lineTableTd" align="center">
				<xsl:value-of select="./cbc:ID"/>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification">
				<td class="lineTableTd" align="left">
					<xsl:value-of select="./cac:Item/cac:BuyersItemIdentification/cbc:ID"/>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:SellersItemIdentification">
				<td class="lineTableTd" align="left">
					<xsl:value-of select="./cac:Item/cac:SellersItemIdentification/cbc:ID"/>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:ManufacturersItemIdentification">
				<td class="lineTableTd" align="left">
					<xsl:value-of select="./cac:Item/cac:ManufacturersItemIdentification/cbc:ID"/>
				</td>
			</xsl:if>
			<td class="lineTableTd" align="left">
				<span>
					<xsl:value-of select="./cac:Item/cbc:Name"/>
				</span>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cbc:Note">
				<td class="lineTableTd" align="left">
					<xsl:value-of select="./cbc:Note"/>
				</td>
			</xsl:if>
			<td class="lineTableTd" align="right">
				<xsl:value-of select="format-number(./cbc:InvoicedQuantity, '###.##0,####', 'european')"/>
				<xsl:if test="./cbc:InvoicedQuantity/@unitCode">
					<xsl:for-each select="./cbc:InvoicedQuantity">
						<xsl:text>&#160;</xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PK'">
								<xsl:text>Ambalaj</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MON'">
								<xsl:text>Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'BFT'">
								<xsl:text>Board Foot</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CLT'">
								<xsl:text>Cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PR'">
								<xsl:text>Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D61'">
								<xsl:text>Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DMT'">
								<xsl:text>Desimetre</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DMK'">
								<xsl:text>Dm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DZN'">
								<xsl:text>Düzine</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GLL'">
								<xsl:text>Galon ABD Standart</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GRM'">
								<xsl:text>Gram</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'GT'">
								<xsl:text>Gt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DAY'">
								<xsl:text>Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'HE'">
								<xsl:text>Karat/100</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CT'">
								<xsl:text>Karton Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CR'">
								<xsl:text>Kartuş</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KGM'">
								<xsl:text>Kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KTM'">
								<xsl:text>Km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CS'">
								<xsl:text>Koli</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CH'">
								<xsl:text>Konteyner</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PL'">
								<xsl:text>Kova</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'KWH'">
								<xsl:text>Kwh</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PG'">
								<xsl:text>Levha</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTR'">
								<xsl:text>Metre</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MLT'">
								<xsl:text>Mil</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MGM'">
								<xsl:text>Mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMT'">
								<xsl:text>Mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MMQ'">
								<xsl:text>Mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'MWH'">
								<xsl:text>Mwh</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NE'">
								<xsl:text>Net Litre</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D90'">
								<xsl:text>Net M3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'PA'">
								<xsl:text>Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D97'">
								<xsl:text>Palet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'H87'">
								<xsl:text>Parça</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'LBR'">
								<xsl:text>Pound</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'HUR'">
								<xsl:text>Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'D62'">
								<xsl:text>Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMT'">
								<xsl:text>Cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMK'">
								<xsl:text>Cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'CMQ'">
								<xsl:text>Cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'SET'">
								<xsl:text>Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'FTK'">
								<xsl:text>Square Foot</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = '11'">
								<xsl:text>Takım</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'EA'">
								<xsl:text>Tane</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'TE'">
								<xsl:text>Te</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'TN'">
								<xsl:text>Teneke</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'TNE'">
								<xsl:text>Tne</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = '26'">
								<xsl:text>Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'AA'">
								<xsl:text>Top</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'SA'">
								<xsl:text>Torba</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'TU'">
								<xsl:text>Tüp</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'DR'">
								<xsl:text>Varil</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'ST'">
								<xsl:text>Yaprak</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'ANN'">
								<xsl:text>yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode = 'T3'">
								<xsl:text>1000 Adet</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:value-of select="format-number(./cac:Price/cbc:PriceAmount, '###.##0,####', 'european')"/>
				<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID">
					<xsl:text>&#160;</xsl:text>
					<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
						<xsl:text>TL</xsl:text>
					</xsl:if>
					<xsl:if test="./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
						<xsl:value-of select="./cac:Price/cbc:PriceAmount/@currencyID"/>
					</xsl:if>
				</xsl:if>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric and //n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric !=0">
				<td class="lineTableTd" align="right">
					<span>
						<xsl:if test="./cac:AllowanceCharge/cbc:MultiplierFactorNumeric">
							<xsl:text> %&#160;</xsl:text>
							<xsl:value-of select="format-number(./cac:AllowanceCharge/cbc:MultiplierFactorNumeric * 100, '###.##0,00', 'european')"/>
						</xsl:if>
					</span>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount !=0">
				<td class="lineTableTd" align="right">
					<span>
						<xsl:for-each select="./cac:AllowanceCharge">
							<xsl:if test="./cbc:ChargeIndicator = 'true' and not(./cbc:Amount =0) ">(A)</xsl:if>
							<xsl:value-of select="format-number(./cbc:Amount, '###.##0,00', 'european')"/>
							<xsl:if test="./cbc:Amount/@currencyID">
								<xsl:text>&#160;</xsl:text>
								<xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode = 'TRY' or //n1:Invoice/cbc:DocumentCurrencyCode = 'TRL'">
									<xsl:text>TL</xsl:text>
								</xsl:if>
								<xsl:if test="//n1:Invoice/cbc:DocumentCurrencyCode != 'TRY' and //n1:Invoice/cbc:DocumentCurrencyCode != 'TRL'">
									<xsl:value-of select="./cbc:Amount/@currencyID"/>
								</xsl:if>
							</xsl:if>
						</xsl:for-each>
					</span>
				</td>
			</xsl:if>
			<td class="lineTableTd" align="right">
				<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:if test="cbc:TaxTypeCode='0015' ">
						<xsl:if test="../../cbc:Percent">
							<xsl:text>%&#160;</xsl:text>
							<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
						</xsl:if>
					</xsl:if>
				</xsl:for-each>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
					<xsl:if test="cbc:TaxTypeCode='0015' ">
						<xsl:text>&#160;</xsl:text>
						<xsl:for-each select="../../cbc:TaxAmount">
							<xsl:call-template name="Curr_Type"/>
						</xsl:for-each>
					</xsl:if>
				</xsl:for-each>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode !='0015' or //n1:Invoice/cac:InvoiceLine/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
				<td class="lineTableTd" style="font-size: xx-small" align="center">
					<xsl:for-each select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
						<xsl:if test="cbc:TaxTypeCode!='0015' ">
							<xsl:text>&#160;</xsl:text>
							<xsl:value-of select="cbc:Name"/>
							<xsl:if test="../../cbc:Percent">
								<xsl:text> (%</xsl:text>
								<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
								<xsl:text>)=</xsl:text>
							</xsl:if>
							<xsl:for-each select="../../cbc:TaxAmount">
								<xsl:call-template name="Curr_Type"/>
							</xsl:for-each>
						</xsl:if>
					</xsl:for-each>
					<xsl:for-each select="./cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
						<xsl:text>KDV TEVKİFAT </xsl:text>
						<xsl:if test="../../cbc:Percent">
							<xsl:text> (%</xsl:text>
							<xsl:value-of select="format-number(../../cbc:Percent, '###.##0,00', 'european')"/>
							<xsl:text>)=</xsl:text>
						</xsl:if>
						<xsl:for-each select="../../cbc:TaxAmount">
							<xsl:call-template name="Curr_Type"/>
							<xsl:text>&#10;</xsl:text>
						</xsl:for-each>
					</xsl:for-each>
				</td>
			</xsl:if>
			<td class="lineTableTd" align="right">
				<xsl:for-each select="cbc:LineExtensionAmount">
					<xsl:call-template name="Curr_Type"/>
				</xsl:for-each>
			</td>
			<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='OZELMATRAH'">
				<td class="lineTableTd" align="right">
					<span>
						<!-- ÖZEL MAHRAH KOD -->
						<xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cbc:TaxExemptionReasonCode"/>
					</span>
				</td>
				<td class="lineTableTd" align="right">
					<span>
						<!-- ÖZEL MATRAH TUTAR -->
						<span>
							<xsl:value-of select="format-number(./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount, '###.##0,00', 'european')"/>
							<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID">
								<xsl:text>&#160;</xsl:text>
								<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID = 'TRY' ">
									<xsl:text>TL</xsl:text>
								</xsl:if>
								<xsl:if test="./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID != 'TRY' ">
									<xsl:value-of select="./cac:TaxTotal/cac:TaxSubtotal/cbc:TaxableAmount/@currencyID"/>
								</xsl:if>
							</xsl:if>
						</span>
					</span>
				</td>
			</xsl:if>
		</tr>
	</xsl:template>
	<xsl:template match="//n1:Invoice">
		<tr id="lineTableTr">
			<td id="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td id="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:BuyersItemIdentification">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:SellersItemIdentification">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:Item/cac:ManufacturersItemIdentification">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cbc:Note">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric and //n1:Invoice/cac:InvoiceLine/cac:AllowanceCharge/cbc:MultiplierFactorNumeric !=0">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:LegalMonetaryTotal/cbc:AllowanceTotalAmount !=0">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cac:InvoiceLine/cac:TaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode !='0015' or //n1:Invoice/cac:InvoiceLine/cac:WithholdingTaxTotal/cac:TaxSubtotal/cac:TaxCategory/cac:TaxScheme">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
			<xsl:if test="//n1:Invoice/cbc:InvoiceTypeCode='OZELMATRAH'">
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
				<td id="lineTableTd" align="right">
					<xsl:text>&#160;</xsl:text>
				</td>
			</xsl:if>
		</tr>
	</xsl:template>
	<xsl:template name="Party_Title">
		<xsl:param name="PartyType"/>
		<td style="width:469px; " align="left">
			<xsl:if test="cac:PartyName">
				<xsl:value-of select="cac:PartyName/cbc:Name"/>
				<br/>
			</xsl:if>
			<xsl:for-each select="cac:Person">
				<xsl:for-each select="cbc:Title">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FirstName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:MiddleName">
					<xsl:apply-templates/>
					<xsl:text>&#160; </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:FamilyName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:NameSuffix">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:if test="$PartyType='TAXFREE'">
					<br/>
					<xsl:text>Pasaport No: </xsl:text>
					<xsl:value-of select="cac:IdentityDocumentReference/cbc:ID"/>
					<br/>
					<xsl:text>Ülkesi: </xsl:text>
					<xsl:for-each select="cbc:NationalityID">
						<xsl:call-template name="Country">
							<xsl:with-param name="CountryType">
								<xsl:value-of select="."/>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:for-each>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name="Party_Adress">
		<xsl:param name="PartyType"/>
		<td style="width:469px; " align="left">
			<xsl:for-each select="cac:PostalAddress">
				<xsl:if test="not(normalize-space(cbc:District)='')">
					<xsl:for-each select="cbc:District">
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:StreetName)='')">
					<xsl:for-each select="cbc:StreetName">
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:BuildingName)='')">
					<xsl:for-each select="cbc:BuildingName">
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:Region)='')">
					<xsl:for-each select="cbc:Region">
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:BuildingNumber)='')">
					<xsl:for-each select="cbc:BuildingNumber">
						<xsl:text>No:&#160;</xsl:text>
						<xsl:apply-templates/>
						<xsl:text/>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:Room)='')">
					<xsl:for-each select="cbc:Room">
						<xsl:text>/</xsl:text>
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<xsl:if test="not(normalize-space(cbc:PostalZone)='')">
					<xsl:for-each select="cbc:PostalZone">
						<xsl:text>PK:&#160;</xsl:text>
						<xsl:apply-templates/>
						<xsl:text>&#160;</xsl:text>
					</xsl:for-each>
				</xsl:if>
				<br/>
				<xsl:for-each select="cbc:CitySubdivisionName">
					<xsl:apply-templates/>
					<xsl:text>&#160;/&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CityName">
					<xsl:apply-templates/>
					<xsl:text>&#160;/&#160;</xsl:text>
				</xsl:for-each>
				<xsl:value-of select="cac:Country/cbc:Name"/>
				<br/>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name="TransportMode">
		<xsl:param name="TransportModeType"/>
		<xsl:choose>
			<xsl:when test="$TransportModeType=1">Denizyolu</xsl:when>
			<xsl:when test="$TransportModeType=2">Demiryolu</xsl:when>
			<xsl:when test="$TransportModeType=3">Karayolu</xsl:when>
			<xsl:when test="$TransportModeType=4">Havayolu</xsl:when>
			<xsl:when test="$TransportModeType=5">Posta</xsl:when>
			<xsl:when test="$TransportModeType=6">Çok araçlı</xsl:when>
			<xsl:when test="$TransportModeType=7">Sabit taşıma tesisleri</xsl:when>
			<xsl:when test="$TransportModeType=8">İç su taşımacılığı</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$TransportModeType"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="Packaging">
		<xsl:param name="PackagingType"/>
		<xsl:choose>
			<xsl:when test="$PackagingType='1A'">Drum, steel</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$PackagingType"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="Country">
		<xsl:param name="CountryType"/>
		<xsl:choose>
			<xsl:when test="$CountryType='TR'">Türkiye</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$CountryType"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name='Party_Other'>
		<xsl:param name="PartyType"/>
		<xsl:if test="not(normalize-space(cbc:WebsiteURI)='')">
			<xsl:for-each select="cbc:WebsiteURI">
				<tr align="left">
					<td>
						<xsl:text>Web Sitesi:&#160;</xsl:text>
						<xsl:value-of select="."/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:if>
		<xsl:if test="not(normalize-space(cac:Contact/cbc:ElectronicMail)='')">
			<xsl:for-each select="cac:Contact/cbc:ElectronicMail">
				<tr align="left">
					<td>
						<xsl:text>E-Posta:&#160;</xsl:text>
						<xsl:value-of select="."/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:if>
		<xsl:for-each select="cac:Contact">
			<xsl:if test="not(normalize-space(cbc:Telephone)='')">
				<xsl:for-each select="cbc:Telephone">
					<tr align="left">
						<td>
							<xsl:text>Tel:&#160;</xsl:text>
							<xsl:apply-templates/>
						</td>
					</tr>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="not(normalize-space(cbc:Telefax)='')">
				<xsl:for-each select="cbc:Telefax">
					<tr align="left">
						<td>
							<xsl:text>Fax:&#160;</xsl:text>
							<xsl:apply-templates/>
						</td>
					</tr>
				</xsl:for-each>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="$PartyType!='TAXFREE' and $PartyType!='EXPORT'">
			<xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
				<tr align="left">
					<td>
						<xsl:text>Vergi Dairesi:&#160;</xsl:text>
						<xsl:apply-templates/>
					</td>
				</tr>
			</xsl:for-each>
			<xsl:for-each select="cac:PartyIdentification">
				<tr align="left">
					<td>
						<xsl:value-of select="cbc:ID/@schemeID"/>
						<xsl:text>:&#160;</xsl:text>
						<xsl:value-of select="cbc:ID"/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="Curr_Type">
		<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
		<xsl:if test="@currencyID">
			<xsl:text>&#160;</xsl:text>
			<xsl:choose>
				<xsl:when test="@currencyID = 'TRL' or @currencyID = 'TRY'">
					<xsl:text>TL</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="@currencyID"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
	</xsl:template>
	<!-- 07-08-2023 qr code regülasyonu sovos -->
	<xsl:variable name="QRSOVOS">
		<xsl:text>https://qr.sovostr.com/qr?data=</xsl:text>
		<xsl:text>{"vkntckn":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cac:AccountingSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN' or @schemeID = 'TCKN']"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"avkntckn":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cac:AccountingCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN' or @schemeID = 'TCKN']"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"senaryo":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:ProfileID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"tip":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:InvoiceTypeCode"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"tarih":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:IssueDate"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"no":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:ID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"ettn":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:UUID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"parabirimi":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cbc:DocumentCurrencyCode"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"malhizmettoplam":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:LineExtensionAmount"/>
		<xsl:text>",</xsl:text>
		<xsl:for-each select="//n1:Invoice/cac:TaxTotal/cac:TaxSubtotal[cac:TaxCategory/cac:TaxScheme/cbc:TaxTypeCode='0015']">
			<xsl:text>"kdvmatrah(</xsl:text>
			<xsl:value-of select="format-number(cbc:Percent,'#','european')"/>
			<xsl:text>)":"</xsl:text>
			<xsl:value-of select="cbc:TaxableAmount"/>
			<xsl:text>",</xsl:text>
			<xsl:text>"hesaplanankdv(</xsl:text>
			<xsl:value-of select="format-number(cbc:Percent,'#','european')"/>
			<xsl:text>)":"</xsl:text>
			<xsl:value-of select="cbc:TaxAmount"/>
			<xsl:text>",</xsl:text>
		</xsl:for-each>
		<xsl:text>"vergidahil":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:TaxInclusiveAmount"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"odenecek":"</xsl:text>
		<xsl:value-of select="//n1:Invoice/cac:LegalMonetaryTotal/cbc:PayableAmount"/>
		<xsl:text>"}</xsl:text>
	</xsl:variable>
	<!-- 07-08-2023 qr code regülasyonu sovos -->
</xsl:stylesheet>