<?xml version="1.0" encoding="UTF-8"?>
<!-- ©2019 Foriba -->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2" xmlns:ccts="urn:un:unece:uncefact:documentation:2" xmlns:clm54217="urn:un:unece:uncefact:codelist:specification:54217:2001" xmlns:clm5639="urn:un:unece:uncefact:codelist:specification:5639:1988" xmlns:clm66411="urn:un:unece:uncefact:codelist:specification:66411:2001" xmlns:clmIANAMIMEMediaType="urn:un:unece:uncefact:codelist:specification:IANAMIMEMediaType:2003" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:n1="urn:oasis:names:specification:ubl:schema:xsd:DespatchAdvice-2" xmlns:qdt="urn:oasis:names:specification:ubl:schema:xsd:QualifiedDatatypes-2" xmlns:udt="urn:un:unece:uncefact:data:specification:UnqualifiedDataTypesSchemaModule:2" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xdt="http://www.w3.org/2005/xpath-datatypes" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="cac cbc ccts clm54217 clm5639 clm66411 clmIANAMIMEMediaType fn link n1 qdt udt xbrldi xbrli xdt xlink xs xsd xsi">
	<xsl:character-map name="a">
		<xsl:output-character character="&#128;" string=""/>
		<xsl:output-character character="&#129;" string=""/>
		<xsl:output-character character="&#130;" string=""/>
		<xsl:output-character character="&#131;" string=""/>
		<xsl:output-character character="&#132;" string=""/>
		<xsl:output-character character="&#133;" string=""/>
		<xsl:output-character character="&#134;" string=""/>
		<xsl:output-character character="&#135;" string=""/>
		<xsl:output-character character="&#136;" string=""/>
		<xsl:output-character character="&#137;" string=""/>
		<xsl:output-character character="&#138;" string=""/>
		<xsl:output-character character="&#139;" string=""/>
		<xsl:output-character character="&#140;" string=""/>
		<xsl:output-character character="&#141;" string=""/>
		<xsl:output-character character="&#142;" string=""/>
		<xsl:output-character character="&#143;" string=""/>
		<xsl:output-character character="&#144;" string=""/>
		<xsl:output-character character="&#145;" string=""/>
		<xsl:output-character character="&#146;" string=""/>
		<xsl:output-character character="&#147;" string=""/>
		<xsl:output-character character="&#148;" string=""/>
		<xsl:output-character character="&#149;" string=""/>
		<xsl:output-character character="&#150;" string=""/>
		<xsl:output-character character="&#151;" string=""/>
		<xsl:output-character character="&#152;" string=""/>
		<xsl:output-character character="&#153;" string=""/>
		<xsl:output-character character="&#154;" string=""/>
		<xsl:output-character character="&#155;" string=""/>
		<xsl:output-character character="&#156;" string=""/>
		<xsl:output-character character="&#157;" string=""/>
		<xsl:output-character character="&#158;" string=""/>
		<xsl:output-character character="&#159;" string=""/>
	</xsl:character-map>
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="." NaN=""/>
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd" use-character-maps="a"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:param name="param_logo"/>
	<xsl:variable name="var_logo"/>
	<xsl:variable name="var_qr"/>
	<xsl:template match="/">
		<html>
			<head>
				<style type="text/css">body { background-color: #FFFFFF; font-family: 'Tahoma', "Times New Roman", Times, serif; font-size: 11px; color: #666666;	}	h1, h2 { padding-bottom: 3px; padding-top: 3px; margin-bottom: 5px; text-transform: uppercase; font-family: Arial, Helvetica, sans-serif;	}	h1 { font-size: 1.4em; text-transform:none;	}	h2 { font-size: 1em; color: brown;	}	h3 { font-size: 1em; color: #333333; text-align: justify; margin: 0; padding: 0;	}	h4 { font-size: 1.1em; font-style: bold; font-family: Arial, Helvetica, sans-serif; color: #000000; margin: 0; padding: 0;	}	hr { height:2px; color: #000000; background-color: #000000; border-bottom: 1px solid #000000;	}	p, ul, ol { margin-top: 1.5em;	}	ul, ol { margin-left: 3em;	}	blockquote { margin-left: 3em; margin-right: 3em; font-style: italic;	}	a { text-decoration: none; color: #70A300;	}	a:hover { border: none; color: #70A300;	}	#despatchTable { border-collapse:collapse; font-size:11px; float:right; border-color:gray;	}	#ettnTable { border-collapse:collapse; font-size:11px; border-color:gray;	}	#customerPartyTable { border-width: 0px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color:	}	#customerIDTable { border-width: 2px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color:	}	#customerIDTableTd { border-width: 2px; border-spacing:; border-style: inset; border-color: gray; border-collapse: collapse; background-color:	}	#lineTable { border-width:2px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color:;	}	td.lineTableTd { border-width: 1px; padding: 1px; border-style: inset; border-color: black; background-color: white;	}	tr.lineTableTr { border-width: 1px; padding: 0px; border-style: inset; border-color: black; background-color: white; -moz-border-radius:;	}	#lineTableDummyTd { border-width: 1px; border-color:white; padding: 1px; border-style: inset; border-color: black; background-color: white;	}	td.lineTableBudgetTd { border-width: 2px; border-spacing:0px; padding: 1px; border-style: inset; border-color: black; background-color: white; -moz-border-radius:;	}	#notesTable { border-width: 2px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color:	}	#notesTableTd { border-width: 0px; border-spacing:; border-style: inset; border-color: black; border-collapse: collapse; background-color: ;	vertical-align: top;	}	table { border-spacing:0px;	}	#budgetContainerTable { border-width: 0px; border-spacing: 0px; border-style: inset; border-color: black; border-collapse: collapse; background-color:;	}	td { border-color:gray;	}</style>
				<title>e-İrsaliye</title>
			</head>
			<body style="margin-left=0.6in; margin-right=0.6in; margin-top=0.79in; margin-bottom=0.79in">
				<xsl:for-each select="$XML">
					<table style="border-color:blue; " border="0" cellspacing="0px" width="800" cellpadding="0px">
						<tbody>
							<tr valign="top">
								<td width="40%">
									<br/>
									<hr/>
									<table align="center" border="0" width="100%">
										<tbody>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:if test="cac:PartyName">
															<xsl:value-of select="cac:PartyName/cbc:Name"/>
															<br/>
														</xsl:if>
														<xsl:for-each select="cac:Person">
															<xsl:for-each select="cbc:Title">
																<xsl:apply-templates/>
																<xsl:text> </xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:FirstName">
																<xsl:apply-templates/>
																<xsl:text> </xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:MiddleName">
																<xsl:apply-templates/>
																<xsl:text> </xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:FamilyName">
																<xsl:apply-templates/>
																<xsl:text> </xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:NameSuffix">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
												</xsl:for-each>
											</tr>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:for-each select="cac:PostalAddress">
															<xsl:for-each select="cbc:StreetName">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:BuildingName">
																<xsl:apply-templates/>
															</xsl:for-each>
															<xsl:if test="cbc:BuildingNumber">
																<xsl:text> No:</xsl:text>
																<xsl:for-each select="cbc:BuildingNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
																<xsl:text>&#160;</xsl:text>
															</xsl:if>
															<br/>
															<xsl:for-each select="cbc:PostalZone">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
															<xsl:for-each select="cbc:CitySubdivisionName">
																<xsl:apply-templates/>
															</xsl:for-each>
															<xsl:text>/ </xsl:text>
															<xsl:for-each select="cbc:CityName">
																<xsl:apply-templates/>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
														</xsl:for-each>
													</td>
												</xsl:for-each>
											</tr>
											<xsl:if test="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telephone or //n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:Telefax">
												<tr align="left">
													<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
														<td align="left">
															<xsl:for-each select="cac:Contact">
																<xsl:if test="cbc:Telephone">
																	<xsl:text>Tel: </xsl:text>
																	<xsl:for-each select="cbc:Telephone">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:if>
																<xsl:if test="cbc:Telefax">
																	<xsl:text> Fax: </xsl:text>
																	<xsl:for-each select="cbc:Telefax">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:if>
																<xsl:text>&#160;</xsl:text>
															</xsl:for-each>
														</td>
													</xsl:for-each>
												</tr>
											</xsl:if>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cbc:WebsiteURI">
												<tr align="left">
													<td>
														<xsl:text>Web Sitesi: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:Contact/cbc:ElectronicMail">
												<tr align="left">
													<td>
														<xsl:text>E-Posta: </xsl:text>
														<xsl:value-of select="."/>
													</td>
												</tr>
											</xsl:for-each>
											<tr align="left">
												<xsl:for-each select="n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party">
													<td align="left">
														<xsl:text>Vergi Dairesi: </xsl:text>
														<xsl:for-each select="cac:PartyTaxScheme">
															<xsl:for-each select="cac:TaxScheme">
																<xsl:for-each select="cbc:Name">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
															<xsl:text>&#160; </xsl:text>
														</xsl:for-each>
													</td>
												</xsl:for-each>
											</tr>
											<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification">
												<tr align="left">
													<td>
														<xsl:value-of select="cbc:ID/@schemeID"/>
														<xsl:text>: </xsl:text>
														<xsl:value-of select="cbc:ID"/>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
									<hr/>
								</td>
								<td width="20%" align="center" valign="middle">
									<br/>
									<br/>
									<img style="width:91px;" align="middle" alt="E-Fatura Logo" src="data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABkAAD/4QMZaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzEzMiA3OS4xNTkyODQsIDIwMTYvMDQvMTktMTM6MTM6NDAgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOjZDNDJBNEI2QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOjZDNDJBNEI1QjVCRDExRThCQjM0REIwQkZGMEQxODY0IiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDUzQgV2luZG93cyI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSIzREVENkU1N0FDREVDNEJBNzkxNUM2M0NCN0RENzM0NyIgc3RSZWY6ZG9jdW1lbnRJRD0iM0RFRDZFNTdBQ0RFQzRCQTc5MTVDNjNDQjdERDczNDciLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAABAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEB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"/>
									<h1 align="center">
										<span style="font-weight:bold; ">
											<xsl:text>e-İRSALİYE</xsl:text>
										</span>
									</h1>
								</td>
								<td width="25%" align="middle" valign="middle">
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
									<table id="customerPartyTable" align="left" border="0">
										<tbody>
											<tr style="height:71px; ">
												<td>
													<hr/>
													<table align="center" border="0">
														<tbody>
															<tr>
																<xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
																	<td style="width:469px; " align="left">
																		<span style="font-weight:bold; ">
																			<xsl:text>SAYIN</xsl:text>
																		</span>
																	</td>
																</xsl:for-each>
															</tr>
															<tr>
																<xsl:choose>
																	<xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																		<xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
																			<xsl:call-template name="Party_Title">
																				<xsl:with-param name="PartyType">TAXFREE</xsl:with-param>
																			</xsl:call-template>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
																			<xsl:call-template name="Party_Title">
																				<xsl:with-param name="PartyType">OTHER</xsl:with-param>
																			</xsl:call-template>
																		</xsl:for-each>
																	</xsl:otherwise>
																</xsl:choose>
															</tr>
															<xsl:choose>
																<xsl:when test="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID='PARTYTYPE' and text()='TAXFREE']">
																	<xsl:for-each select="n1:DespatchAdvice/cac:BuyerCustomerParty/cac:Party">
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
																<xsl:otherwise>
																	<xsl:for-each select="n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party">
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
								<td width="60%" align="center" valign="bottom" colspan="3">
									<table border="1" id="despatchTable">
										<tbody>
											<tr>
												<td style="width:105px;" align="left">
													<span style="font-weight:bold; ">
														<xsl:text>Özelleştirme No:</xsl:text>
													</span>
												</td>
												<td style="width:110px;" align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:CustomizationID">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>Senaryo:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:ProfileID">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>İrsaliye Tipi:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:DespatchAdviceTypeCode">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>İrsaliye No:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:ID">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>İrsaliye Tarihi:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:IssueDate">
														<xsl:apply-templates select="."/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>İrsaliye Zamanı:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cbc:IssueTime">
														<xsl:apply-templates select="."/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>Sevk Tarihi:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate">
														<xsl:apply-templates select="."/>
													</xsl:for-each>
												</td>
											</tr>
											<tr style="height:13px; ">
												<td align="left">
													<span style="font-weight:bold; ">
														<xsl:text>Sevk Zamanı:</xsl:text>
													</span>
												</td>
												<td align="left">
													<xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime">
														<xsl:apply-templates select="."/>
													</xsl:for-each>
												</td>
											</tr>
											<xsl:if test="n1:DespatchAdvice/cac:OrderReference">
												<tr style="height:13px">
													<td align="left">
														<span style="font-weight:bold; ">
															<xsl:text>Sipariş No:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:ID">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:if>
											<xsl:if test="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
												<tr style="height:13px">
													<td align="left">
														<span style="font-weight:bold; ">
															<xsl:text>Sipariş Tarihi:</xsl:text>
														</span>
													</td>
													<td align="left">
														<xsl:for-each select="n1:DespatchAdvice/cac:OrderReference/cbc:IssueDate">
															<xsl:apply-templates select="."/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:if>
										</tbody>
									</table>
								</td>
							</tr>
							<tr align="left">
								<td align="left" valign="top" id="ettnTable">
									<span style="font-weight:bold; ">
										<xsl:text>ETTN:&#160;</xsl:text>
									</span>
									<xsl:for-each select="n1:DespatchAdvice/cbc:UUID">
										<xsl:apply-templates/>
									</xsl:for-each>
								</td>
							</tr>
						</tbody>
					</table>
					<div id="lineTableAligner">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</div>
					<table border="1" id="lineTable" width="800">
						<tbody>
							<tr class="lineTableTr">
								<td class="lineTableTd" style="width:5%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Sıra No</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:35%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Mal</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Miktar</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:10%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Birim Fiyat</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:20%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Sonra Gönderilecek Miktar</xsl:text>
									</span>
								</td>
								<td class="lineTableTd" style="width:20%" align="center">
									<span style="font-weight:bold;">
										<xsl:text>Tutar</xsl:text>
									</span>
								</td>
							</tr>
								<xsl:for-each select="//n1:DespatchAdvice/cac:DespatchLine">
									<xsl:apply-templates select="."/>
								</xsl:for-each>
						</tbody>
					</table>
				</xsl:for-each>
				<table id="budgetContainerTable" width="800px">
					<tr align="right">
						<td/>
						<td class="lineTableBudgetTd" align="right" width="156px">
							<span style="font-weight:bold; ">
								<xsl:text>Toplam Tutar</xsl:text>
							</span>
						</td>
						<td class="lineTableBudgetTd" style="width:156px; " align="right">
							<xsl:for-each select="n1:DespatchAdvice/cac:Shipment/cac:GoodsItem/cbc:ValueAmount">
								<xsl:call-template name="Curr_Type"/>
							</xsl:for-each>
						</td>
					</tr>
				</table>
				<br/>
				<xsl:if test="//n1:DespatchAdvice/cac:AdditionalDocumentReference">
					<table id="lineTable" width="800">
						<thead>
							<tr>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;İlgili Dokümanlar</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
								<td align="left">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;</span>
								</td>
							</tr>
						</thead>
						<tbody>
							<tr align="left" class="lineTableTr">
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman No</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Tarih</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Doküman Tipi</span>
								</td>
								<td class="lineTableTd">
									<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklama</span>
								</td>
							</tr>
							<xsl:for-each select="//n1:DespatchAdvice/cac:AdditionalDocumentReference">
								<tr align="left" class="lineTableTr">
									<td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="./cbc:ID"/>
									</td>
									<td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;<xsl:for-each select="./cbc:IssueDate">
											<xsl:apply-templates select="."/>
										</xsl:for-each>
									</td>
									<td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="./cbc:DocumentType"/>
									</td>
									<td class="lineTableTd">&#160;&#160;&#160;&#160;&#160;<xsl:value-of select="./cbc:DocumentDescription"/>
									</td>
								</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</xsl:if>
				<br/>
				<table id="notesTable" width="800" align="left">
					<thead>
						<tr>
							<td align="left">
								<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Açıklamalar</span>
							</td>
							<td align="left">
								<span style="font-weight:bold; " align="center">&#160;&#160;&#160;&#160;&#160;Taşıyıcı Bilgileri</span>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr align="left">
							<td id="notesTableTd" height="100">
								<xsl:for-each select="//n1:DespatchAdvice/cbc:Note">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Not: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:SellerSupplierParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Satıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:BuyerCustomerParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;Asıl Alıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:OriginatorCustomerParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı VKN: </b>
									<xsl:value-of select="cac:Party/cac:PartyIdentification/cbc:ID"/>
									<br/>
									<b>&#160;&#160;&#160;&#160;&#160;&#160;İşlemleri Başlatan Alıcı Ünvan: </b>
									<xsl:value-of select="cac:Party/cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:DespatchSupplierParty/cac:Party/cac:Person">
									<xsl:if test="cbc:FirstName">
										<b>&#160;&#160;&#160;&#160;&#160; Teslim Eden: </b>
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
										</xsl:for-each>
										<br/>
									</xsl:if>
								</xsl:for-each>
							</td>
							<td id="notesTableTd" height="100">
								<xsl:for-each select="//cac:CarrierParty">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Taşıyıcı Firma: </b>VKN: <xsl:value-of select="./cac:PartyIdentification/cbc:ID"/>, <xsl:value-of select="./cac:PartyName/cbc:Name"/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:ShipmentStage/cac:TransportMeans/cac:RoadTransport/cbc:LicensePlateID">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Araç plaka numarası: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:TransportHandlingUnit/cac:TransportEquipment/cbc:ID[@schemeID = 'DORSEPLAKA']">
									<b>&#160;&#160;&#160;&#160;&#160;&#160; Dorse plaka numarası: </b>
									<xsl:value-of select="."/>
									<br/>
								</xsl:for-each>
								<xsl:for-each select="//cac:ShipmentStage/cac:DriverPerson">
									<xsl:if test="cbc:FirstName">
										<b>&#160;&#160;&#160;&#160;&#160;&#160; Şoför: </b>
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
										</xsl:for-each>, TCKN:<xsl:for-each select="cbc:NationalityID">
											<xsl:apply-templates/>
										</xsl:for-each>
										<br/>
									</xsl:if>
								</xsl:for-each>
							</td>
						</tr>
						<tr class="duzenle"><td class="duzenle"> Banka Bilgileri:</td></tr>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="//n1:DespatchAdvice/cac:DespatchLine">
		<tr class="lineTableTr">
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./cbc:ID"/>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="./cac:Item/cbc:Name"/>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cbc:DeliveredQuantity, '###.###,####', 'european')"/>
				<xsl:if test="./cbc:DeliveredQuantity/@unitCode">
					<xsl:for-each select="./cbc:DeliveredQuantity">
						<xsl:text> </xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode  = '26'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NIU'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KGM'">
								<xsl:text>kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KJO'">
								<xsl:text>kJ</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GRM'">
								<xsl:text>g</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MGM'">
								<xsl:text>mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GT'">
								<xsl:text>Gross Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTR'">
								<xsl:text>m</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMT'">
								<xsl:text>mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KTM'">
								<xsl:text>km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MLT'">
								<xsl:text>ml</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMQ'">
								<xsl:text>mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CLT'">
								<xsl:text>cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMK'">
								<xsl:text>cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMQ'">
								<xsl:text>cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMT'">
								<xsl:text>cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'DAY'">
								<xsl:text> Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MON'">
								<xsl:text> Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PA'">
								<xsl:text> Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KWH'">
								<xsl:text> KWH</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'ANN'">
								<xsl:text> Yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'HUR'">
								<xsl:text> Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D61'">
								<xsl:text> Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D62'">
								<xsl:text> Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CCT'">
								<xsl:text> Ton baş.taşıma kap.</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D30'">
								<xsl:text> Brüt kalori</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D40'">
								<xsl:text> 1000 lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LPA'">
								<xsl:text> saf alkol lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'B32'">
								<xsl:text> kg.m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NCL'">
								<xsl:text> hücre adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PR'">
								<xsl:text> Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'R9'">
								<xsl:text> 1000 m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'SET'">
								<xsl:text> Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'T3'">
								<xsl:text> 1000 adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = '11'">
								<xsl:text> Takım</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount, '###.##0,########', 'european')"/>
				<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID">
					<xsl:text> </xsl:text>
					<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID = &quot;TRY&quot;">
						<xsl:text>TL</xsl:text>
					</xsl:if>
					<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID != &quot;TRY&quot;">
						<xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cac:Price/cbc:PriceAmount/@currencyID"/>
					</xsl:if>
				</xsl:if>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cbc:OutstandingQuantity, '###.###,####', 'european')"/>
				<xsl:if test="./cbc:OutstandingQuantity/@unitCode">
					<xsl:for-each select="./cbc:OutstandingQuantity">
						<xsl:text> </xsl:text>
						<xsl:choose>
							<xsl:when test="@unitCode  = '26'">
								<xsl:text>ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'BX'">
								<xsl:text>Kutu</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LTR'">
								<xsl:text>lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'C62'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NIU'">
								<xsl:text>Adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KGM'">
								<xsl:text>kg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KJO'">
								<xsl:text>kJ</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GRM'">
								<xsl:text>g</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MGM'">
								<xsl:text>mg</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NT'">
								<xsl:text>Net Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'GT'">
								<xsl:text>Gross Ton</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTR'">
								<xsl:text>m</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMT'">
								<xsl:text>mm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KTM'">
								<xsl:text>km</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MLT'">
								<xsl:text>ml</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MMQ'">
								<xsl:text>mm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CLT'">
								<xsl:text>cl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMK'">
								<xsl:text>cm2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMQ'">
								<xsl:text>cm3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CMT'">
								<xsl:text>cm</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTK'">
								<xsl:text>m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MTQ'">
								<xsl:text>m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'DAY'">
								<xsl:text> Gün</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'MON'">
								<xsl:text> Ay</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PA'">
								<xsl:text> Paket</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'KWH'">
								<xsl:text> KWH</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'ANN'">
								<xsl:text> Yıl</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'HUR'">
								<xsl:text> Saat</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D61'">
								<xsl:text> Dakika</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D62'">
								<xsl:text> Saniye</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'CCT'">
								<xsl:text> Ton baş.taşıma kap.</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D30'">
								<xsl:text> Brüt kalori</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'D40'">
								<xsl:text> 1000 lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'LPA'">
								<xsl:text> saf alkol lt</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'B32'">
								<xsl:text> kg.m2</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'NCL'">
								<xsl:text> hücre adet</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'PR'">
								<xsl:text> Çift</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'R9'">
								<xsl:text> 1000 m3</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'SET'">
								<xsl:text> Set</xsl:text>
							</xsl:when>
							<xsl:when test="@unitCode  = 'T3'">
								<xsl:text> 1000 adet</xsl:text>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</xsl:if>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
				<xsl:value-of select="format-number(./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount, '###.##0,########', 'european')"/>
				<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID">
					<xsl:text> </xsl:text>
					<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRL&quot; or ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID = &quot;TRY&quot;">
						<xsl:text>TL</xsl:text>
					</xsl:if>
					<xsl:if test="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRL&quot; and ./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID != &quot;TRY&quot;">
						<xsl:value-of select="./cac:Shipment/cac:GoodsItem/cac:InvoiceLine/cbc:LineExtensionAmount/@currencyID"/>
					</xsl:if>
				</xsl:if>
			</td>
		</tr>
	</xsl:template>
	<xsl:template match="//cbc:IssueDate">
		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//cbc:ActualDespatchDate">
		<xsl:value-of select="substring(.,9,2)"/>-<xsl:value-of select="substring(.,6,2)"/>-<xsl:value-of select="substring(.,1,4)"/>
	</xsl:template>
	<xsl:template match="//n1:DespatchAdvice">
		<tr class="lineTableTr">
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
			<td class="lineTableTd" align="right">
				<xsl:text>&#160;</xsl:text>
			</td>
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
					<xsl:value-of select="cbc:NationalityID"/>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name="Party_Adress">
		<xsl:param name="PartyType"/>
		<td style="width:469px; " align="left">
			<xsl:for-each select="cac:PostalAddress">
				<xsl:for-each select="cbc:StreetName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingName">
					<xsl:apply-templates/>
				</xsl:for-each>
				<xsl:for-each select="cbc:BuildingNumber">
					<xsl:text> No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:Room">
					<xsl:text>Kapı No:</xsl:text>
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<br/>
				<xsl:for-each select="cbc:PostalZone">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CitySubdivisionName">
					<xsl:apply-templates/>
					<xsl:text>/ </xsl:text>
				</xsl:for-each>
				<xsl:for-each select="cbc:CityName">
					<xsl:apply-templates/>
					<xsl:text>&#160;</xsl:text>
				</xsl:for-each>
				<xsl:if test="$PartyType='TAXFREE'">
					<br/>
					<xsl:value-of select="cac:Country/cbc:Name"/>
					<br/>
				</xsl:if>
			</xsl:for-each>
		</td>
	</xsl:template>
	<xsl:template name='Party_Other'>
		<xsl:param name="PartyType"/>
		<xsl:for-each select="cbc:WebsiteURI">
			<tr align="left">
				<td>
					<xsl:text>Web Sitesi: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="cac:Contact/cbc:ElectronicMail">
			<tr align="left">
				<td>
					<xsl:text>E-Posta: </xsl:text>
					<xsl:value-of select="."/>
				</td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="cac:Contact">
			<xsl:if test="cbc:Telephone or cbc:Telefax">
				<tr align="left">
					<td style="width:469px; " align="left">
						<xsl:for-each select="cbc:Telephone">
							<xsl:text>Tel: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:for-each select="cbc:Telefax">
							<xsl:text> Fax: </xsl:text>
							<xsl:apply-templates/>
						</xsl:for-each>
						<xsl:text>&#160;</xsl:text>
					</td>
				</tr>
			</xsl:if>
		</xsl:for-each>
		<xsl:if test="$PartyType!='TAXFREE'">
			<xsl:for-each select="cac:PartyTaxScheme/cac:TaxScheme/cbc:Name">
				<tr align="left">
					<td>
						<xsl:text>Vergi Dairesi: </xsl:text>
						<xsl:apply-templates/>
					</td>
				</tr>
			</xsl:for-each>
			<xsl:for-each select="cac:PartyIdentification">
				<tr align="left">
					<td>
						<xsl:value-of select="cbc:ID/@schemeID"/>
						<xsl:text>: </xsl:text>
						<xsl:value-of select="cbc:ID"/>
					</td>
				</tr>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
	<xsl:template name="Curr_Type">
		<xsl:value-of select="format-number(., '###.##0,00', 'european')"/>
		<xsl:if test="@currencyID">
			<xsl:text> </xsl:text>
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
		<xsl:value-of select="//n1:DespatchAdvice/cac:DespatchSupplierParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN' or @schemeID = 'TCKN']"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"avkntckn":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cac:DeliveryCustomerParty/cac:Party/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN' or @schemeID = 'TCKN']"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"senaryo":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cbc:ProfileID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"tip":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cbc:DespatchAdviceTypeCode"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"tarih":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cbc:IssueDate"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"no":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cbc:ID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"ettn":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cbc:UUID"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"sevktarihi":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchDate"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"sevkzamani":"</xsl:text>
		<xsl:value-of select="substring(//n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:Despatch/cbc:ActualDespatchTime,1,8)"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"tasiyicivkn":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cac:Shipment/cac:Delivery/cac:CarrierParty/cac:PartyIdentification/cbc:ID[@schemeID = 'VKN' or @schemeID = 'TCKN']"/>
		<xsl:text>",</xsl:text>
		<xsl:text>"plaka":"</xsl:text>
		<xsl:value-of select="//n1:DespatchAdvice/cac:Shipment/cac:ShipmentStage/cac:TransportMeans/cac:RoadTransport/cbc:LicensePlateID"/>
		<xsl:text>"}</xsl:text>
	</xsl:variable>
	<!-- 07-08-2023 qr code regülasyonu sovos -->
</xsl:stylesheet>