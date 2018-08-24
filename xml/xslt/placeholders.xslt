<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:my="http://radical.sexy" exclude-result-prefixes="xs my" version="2.0">
    
    <xsl:template name="getDenomination">
        <xsl:param name="placeholderElement" as="node()" select="/"/>
        <xsl:choose>
            <xsl:when test="$placeholderElement/ancestor-or-self::*/@denomination = 'eur'">€</xsl:when>
            <xsl:when test="$placeholderElement/ancestor-or-self::*/@denomination = 'usd'">$</xsl:when>
            <xsl:when test="$placeholderElement/ancestor-or-self::*/@denomination = 'gbp'">£</xsl:when>
            <xsl:otherwise><fo:inline xsl:use-attribute-sets="errortext">WARNING: NO DENOMINATION FOUND</fo:inline></xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <!-- PLACEHOLDERS -->
    <xsl:template match="client_long">
        <xsl:param name="placeholderElement" select="/*/meta//client/full_name"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_short">
        <xsl:param name="placeholderElement" select="/*/meta//client/short_name"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_street">
        <xsl:param name="placeholderElement" select="/*/meta//client/address"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_city">
        <xsl:param name="placeholderElement" select="/*/meta//client/city"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_country">
        <xsl:param name="placeholderElement" select="/*/meta//client/country"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_postal_code">
        <xsl:param name="placeholderElement" select="/*/meta//client/postal_code"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_legal_rep">
        <xsl:param name="placeholderElement" select="/*/meta//client/legal_rep"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_waiver_rep">
        <xsl:param name="placeholderElement" select="/*/meta//client/waiver_rep"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_poc1">
        <xsl:param name="placeholderElement" select="/*/meta//client/poc1"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_coc">
        <xsl:param name="placeholderElement" select="/*/meta//client/coc"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="client_rate">
        <xsl:param name="roleTitle" select="@title"/>
        <xsl:param name="placeholderElement"
            select="/*/meta//client/rates/rate[@title = $roleTitle]"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_long">
        <xsl:param name="placeholderElement" select="/*/meta/company/full_name"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_short">
        <xsl:param name="placeholderElement" select="/*/meta/company/short_name"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_address">
        <xsl:param name="placeholderElement" select="/*/meta/company/address"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_city">
        <xsl:param name="placeholderElement" select="/*/meta/company/city"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_postalcode">
        <xsl:param name="placeholderElement" select="/*/meta/company/postal_code"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_country">
        <xsl:param name="placeholderElement" select="/*/meta/company/country"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_svc_long">
        <xsl:param name="placeholderElement"
            select="/offerte/meta/offered_service_long | /pentest_report/meta/offered_service_long"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_svc_short">
        <xsl:param name="placeholderElement"
            select="/offerte/meta/offered_service_short | /pentest_report/meta/offered_service_short"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_legal_rep">
        <xsl:param name="placeholderElement" select="/*/meta/company/legal_rep"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_poc1">
        <xsl:param name="placeholderElement" select="/*/meta/company/poc1"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="company_email">
        <xsl:param name="placeholderElement" select="/*/meta/company/email"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="t_app">
        <xsl:param name="placeholderElement"
            select="/offerte/meta/activityinfo/target_application | /pentest_report/meta/activityinfo/target_application"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="t_app_producer">
        <xsl:param name="placeholderElement"
            select="/offerte/meta/activityinfo/target_application_producer | /pentest_report/meta/activityinfo/target_application_producer"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_duration">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/duration"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_persondays">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/persondays"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_boxtype">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/type"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_fee">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/fee"/>
        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:text>&#160;</xsl:text>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_startdate">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/planning/start"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_enddate">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/planning/end"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="p_reportdue">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/report_due"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="engagement_description">
        <xsl:param name="placeholderElement" select="/contract/meta/scope/engagement_description"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="secondpartyrole">
        <xsl:param name="placeholderElement" select="/contract/meta/scope/secondpartyrole"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contract_start_date">
        <xsl:param name="placeholderElement" select="/contract/meta/work/start_date"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contract_end_date">
        <xsl:param name="placeholderElement" select="/contract/meta/work/end_date"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contract_period">
        <xsl:variable name="startDate" select="xs:date(/contract/meta/work/start_date)"/>
        <xsl:variable name="endDate" select="xs:date(/contract/meta/work/end_date)"/>
        <!--<xsl:variable name="startDay" as="xs:integer" select="day-from-date($startDate)"/>
        <xsl:variable name="endDay" as="xs:integer" select="day-from-date($endDate)"/>-->
        <xsl:value-of select="my:calculatePeriod($endDate, $startDate)"/>
    </xsl:template>
    <xsl:template match="contract_total_fee">
        <xsl:call-template name="getDenomination"/>
        <xsl:text>&#160;</xsl:text>
        <xsl:value-of select="$total_fee"/>
        <!-- no need to check for existence as it's a calculation of two checked values below -->
    </xsl:template>
    <xsl:template match="contract_planned_hours">
        <xsl:param name="placeholderElement" select="/contract/meta/work/planning/hours"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contract_period_unit">
        <xsl:param name="placeholderElement" select="/contract/meta/work/planning/per"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contract_activities">
        <xsl:choose>
            <xsl:when test="/contract/meta/work/activities/activity">
                <xsl:call-template name="generate_activities_xslt"/>
            </xsl:when>
            <xsl:otherwise>
                <fo:inline xsl:use-attribute-sets="errortext">XXXXXX</fo:inline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="contractor_name_company">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/name"/>
        <xsl:param name="placeholderElement2" select="/contract/meta/contractor/ctcompany"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:if test="/contract/meta/contractor/ctcompany">
            <xsl:text> (</xsl:text>
            <xsl:call-template name="checkPlaceholder">
                <xsl:with-param name="placeholderElement" select="$placeholderElement2"/>
            </xsl:call-template>
            <xsl:text>)</xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template match="contractor_name">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/name"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_company">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/ctcompany"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_address">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/address"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_city">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/city"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_postalcode">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/postal_code"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_country">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/country"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_hourly_fee">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/hourly_fee"/>
        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:text>&#160;</xsl:text>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_email">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/email"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_possessive_pronoun">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/@sex"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_subject_pronoun">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/@sex"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="contractor_object_pronoun">
        <xsl:param name="placeholderElement" select="/contract/meta/contractor/@sex"/>
        <xsl:param name="caps" select="@caps"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
            <xsl:with-param name="caps" select="$caps"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="generate_raterevisiondate">
        <xsl:param name="placeholderElement" select="//meta//client/rates/@lastrevisiondate"/>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    
    <xsl:template match="ir_ora_rate">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/organizational_readiness_assessment/rate"/>
        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:text>&#160;</xsl:text>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="ir_sim_rate">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/security_incident_management/rate"/>
        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:text>&#160;</xsl:text>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>
    <xsl:template match="ir_taa_rate">
        <xsl:param name="placeholderElement" select="/*/meta/activityinfo/technical_artefact_analysis/rate"/>
        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
        <xsl:text>&#160;</xsl:text>
        <xsl:call-template name="checkPlaceholder">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
    </xsl:template>

    <xsl:template match="finding_count">
        <xsl:param name="threatLevel" select="@threatLevel"/>
        <xsl:variable name="statusSequence" as="item()*">
            <xsl:for-each select="@status">
                <xsl:for-each select="tokenize(., ' ')">
                    <xsl:value-of select="."/>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="@threatLevel">
                <xsl:choose>
                    <xsl:when test="$statusSequence">
                        <xsl:value-of select="count(//finding[@threatLevel =
                                              $threatLevel][@status =
                                              $statusSequence])"/>
                    </xsl:when>
                    <xsl:otherwise>
                <xsl:value-of select="count(//finding[@threatLevel = $threatLevel])"/>
                                              $threatLevel])"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="count(//finding)"/>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="todo">
        <fo:inline xsl:use-attribute-sets="errortext">###TODO###</fo:inline>
    </xsl:template>

    <xsl:template name="checkPlaceholder">
        <xsl:param name="placeholderElement" select="/"/>
        <xsl:param name="caps" select="'none'"/>
        <xsl:choose>
            <xsl:when test="normalize-space($placeholderElement)">
                <!-- placeholder exists and contains text -->
                <xsl:choose>
                    <xsl:when test="self::client_rate">
                        <xsl:call-template name="getDenomination">
            <xsl:with-param name="placeholderElement" select="$placeholderElement"/>
        </xsl:call-template>
                        <xsl:text>&#160;</xsl:text>
                        <xsl:value-of select="$placeholderElement"/>
                    </xsl:when>
                    <!-- PRETTY FORMATTING FOR AMOUNTS OF MONEY -->
                    <xsl:when test="(self::p_fee or self::contractor_hourly_fee or self::ir_ora_rate) and string($placeholderElement) castable as xs:float">
                        <xsl:variable name="fee" select="$placeholderElement * 1"/>
                        <xsl:number value="$fee" grouping-separator="," grouping-size="3"/>
                    </xsl:when>
                    <!-- PRETTY FORMATTING FOR DATES -->
                    <xsl:when
                        test="(self::contract_end_date or self::contract_start_date or self::generate_raterevisiondate or self::p_startdate or self::p_enddate) and string($placeholderElement) castable as xs:date">
                        <!-- pretty printing for date -->
                        <xsl:value-of
                            select="format-date($placeholderElement, '[MNn] [D1], [Y]', 'en', (), ())"
                        />
                    </xsl:when>
                    <xsl:when
                        test="(self::contract_end_date or self::contract_start_date or self::generate_raterevisiondate or self::p_startdate or self::p_enddate) and normalize-space(.) = 'TBD'">
                        <!-- actual TBD, don't mess with it -->
                        <fo:text>TBD</fo:text>
                    </xsl:when>
                    <xsl:when
                        test="(self::contract_end_date or self::contract_start_date or self::generate_raterevisiondate or self::p_startdate or self::p_enddate) and not(string($placeholderElement) castable as xs:date)">
                        <!-- pretty printing for date -->
                        <fo:inline xsl:use-attribute-sets="errortext">TBD</fo:inline>
                    </xsl:when>
                    <xsl:when
                        test="self::contract_period_unit and /contract/meta/scope/contract_type = 'single_engagement'">
                        <!-- only use value for fixed term contracts; use 'engagement' for single engagement contract -->
                        <xsl:call-template name="getString">
                            <xsl:with-param name="stringID" select="'contract_engagement'"/>
                        </xsl:call-template>
                    </xsl:when>
                    <xsl:when test="self::contractor_possessive_pronoun">
                        <!-- some sexy logic -->
                        <xsl:choose>
                            <xsl:when test="//contractor/@sex = 'M'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'possessive_m'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'F'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'possessive_f'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'O'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'possessive_o'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="self::contractor_subject_pronoun">
                        <!-- some sexy logic -->
                        <xsl:choose>
                            <xsl:when test="//contractor/@sex = 'M'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'subject_m'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'F'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'subject_f'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'O'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'subject_o'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="self::contractor_object_pronoun">
                        <!-- some sexy logic -->
                        <xsl:choose>
                            <xsl:when test="//contractor/@sex = 'M'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'object_m'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'F'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'object_f'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                            <xsl:when test="//contractor/@sex = 'O'">
                                <xsl:call-template name="getString">
                                    <xsl:with-param name="stringID" select="'object_o'"/>
                                    <xsl:with-param name="caps" select="$caps"/>
                                </xsl:call-template>
                            </xsl:when>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="$placeholderElement"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <fo:inline xsl:use-attribute-sets="errortext">[ <fo:inline xsl:use-attribute-sets="bold">WARNING</fo:inline>: Cannot resolve placeholder <fo:inline xsl:use-attribute-sets="bold"><xsl:value-of select="name()"/></fo:inline> in <xsl:value-of select="base-uri()"/> - <xsl:call-template name="getReason"><xsl:with-param name="placeholderElement" select="$placeholderElement"/></xsl:call-template> ]</fo:inline>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="getReason">
        <xsl:param name="placeholderElement" select="."/>
        <xsl:choose>
            <xsl:when test="/$placeholderElement">
                element <fo:inline xsl:use-attribute-sets="bold">"<xsl:value-of select="name($placeholderElement)"/>"</fo:inline> (<xsl:call-template name="getXPath"><xsl:with-param name="element" select="$placeholderElement"/></xsl:call-template>) is empty
            </xsl:when>
            <xsl:otherwise>
                referenced element not found
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template name="getXPath">
        <xsl:param name="element" select="."/>
        <xsl:for-each select="$element/ancestor-or-self::*">
            <xsl:value-of select="concat('/',local-name())"/>
            <!--Predicate is only output when needed.-->
            <xsl:if test="(preceding-sibling::*|following-sibling::*)[local-name()=local-name(current())]">
                <xsl:value-of select="concat('[',count(preceding-sibling::*[local-name()=local-name(current())])+1,']')"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="generate_activities_xslt">
        <fo:list-block xsl:use-attribute-sets="list">
            <xsl:for-each select="/contract/meta/work/activities/activity">
                <fo:list-item>
                    <!-- insert a bullet -->
                    <fo:list-item-label end-indent="label-end()">
                        <fo:block>
                            <fo:inline>&#8226;</fo:inline>
                        </fo:block>
                    </fo:list-item-label>
                    <!-- list text -->
                    <fo:list-item-body start-indent="body-start()">
                        <fo:block>
                            <xsl:value-of select="."/>
                        </fo:block>
                    </fo:list-item-body>
                </fo:list-item>
            </xsl:for-each>
        </fo:list-block>
    </xsl:template>

    <xsl:function name="my:calculatePeriod">
        <xsl:param name="enddate"/>
        <xsl:param name="startdate"/>
        <xsl:variable name="startYear" as="xs:integer" select="year-from-date($startdate)"/>
        <xsl:variable name="startMonth" as="xs:integer" select="month-from-date($startdate)"/>
        <xsl:variable name="startDay" as="xs:integer" select="day-from-date($startdate)"/>
        <xsl:variable name="endYear" as="xs:integer" select="year-from-date($enddate)"/>
        <xsl:variable name="endMonth" as="xs:integer" select="month-from-date($enddate)"/>
        <xsl:variable name="endDay" as="xs:integer" select="day-from-date($enddate)"/>
        <xsl:variable name="startMonthNumberOfDays">
            <xsl:choose>
                <xsl:when test="xs:string($startMonth) = '1'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '2'">
                    <!-- I hate february -->
                    <xsl:choose>
                        <xsl:when test="$startYear mod 4 != 0">28</xsl:when>
                        <xsl:when test="$startYear mod 100 != 0">29</xsl:when>
                        <xsl:when test="$startYear mod 400 != 0">28</xsl:when>
                        <xsl:otherwise>29</xsl:otherwise>
                    </xsl:choose>
                </xsl:when>
                <xsl:when test="xs:string($startMonth) = '3'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '4'">30</xsl:when>
                <xsl:when test="xs:string($startMonth) = '5'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '6'">30</xsl:when>
                <xsl:when test="xs:string($startMonth) = '7'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '8'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '9'">30</xsl:when>
                <xsl:when test="xs:string($startMonth) = '10'">31</xsl:when>
                <xsl:when test="xs:string($startMonth) = '11'">30</xsl:when>
                <xsl:when test="xs:string($startMonth) = '12'">31</xsl:when>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="numYears">
            <xsl:choose>
                <xsl:when test="$endMonth > $startMonth">
                    <xsl:sequence select="$endYear - $startYear"/>
                </xsl:when>
                <xsl:when test="$endMonth &lt; $startMonth">
                    <xsl:sequence select="$endYear - $startYear - 1"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:choose>
                        <xsl:when test="$endDay >= $startDay">
                            <xsl:sequence select="$endYear - $startYear"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <!-- $endDay &lt; $startDay -->
                            <xsl:sequence select="$endYear - $startYear - 1"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="numMonths">
            <xsl:choose>
                <xsl:when test="$endDay &lt; $startDay">
                    <xsl:sequence select="$endMonth - $startMonth - 1"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-- $endDay >= $startDay -->
                    <xsl:sequence select="$endMonth - $startMonth"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:variable name="numDays">
            <!--<xsl:choose>
                <xsl:when test="$numMonths &lt; 1 and $numYears &lt; 1">
                    <!-\- only displaying days if contract is for less than a month -\->
                    <xsl:sequence select="($enddate - $startdate) div xs:dayTimeDuration('P1D')"/>
                </xsl:when>
                <xsl:otherwise>
                    <!-\- if contract is longer than a month, don't count days -\->
                    <xsl:sequence select="0"/>
                </xsl:otherwise>
            </xsl:choose>-->
            <xsl:choose>
                <xsl:when test="$endDay - $startDay &lt; 0">
                    <xsl:value-of select="$startMonthNumberOfDays - $startDay + $endDay"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$endDay - $startDay"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:variable>
        <xsl:if test="$numYears > 0">
            <xsl:sequence select="$numYears"/>
            <xsl:text>year</xsl:text>
            <xsl:if test="$numYears > 1">
                <xsl:text>s</xsl:text>
            </xsl:if>
            <xsl:choose>
                <xsl:when
                    test="($numMonths > 0 and $numDays = 0) or ($numMonths = 0 and $numDays > 0)">
                    <xsl:text> and</xsl:text>
                </xsl:when>
                <xsl:when test="$numMonths > 0 and $numDays > 0">
                    <xsl:text>,</xsl:text>
                </xsl:when>
            </xsl:choose>
        </xsl:if>
        <xsl:if test="$numMonths > 0">
            <xsl:sequence select="$numMonths"/>
            <xsl:text>month</xsl:text>
            <xsl:if test="$numMonths > 1">
                <xsl:text>s</xsl:text>
            </xsl:if>
            <xsl:if test="$numDays > 0">
                <xsl:text> and</xsl:text>
            </xsl:if>
        </xsl:if>
        <xsl:if test="$numDays > 0">
            <xsl:sequence select="$numDays"/>
            <xsl:text>day</xsl:text>
            <xsl:if test="$numDays > 1">
                <xsl:text>s</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:function>
</xsl:stylesheet>
