<%@ page session="false" buffer="none" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%-- Licensed Materials - Property of IBM, 5724-E76, (C) Copyright IBM Corp. 2001, 2004, 2006, 2010 - All Rights reserved. --%> 
<%-- NOTE: By default, automatic reloading of theme and skin JSP files is turned off.
	 To see the changes you make to this file without stopping and restarting
	 the server, follow the instructions for enabling automatic JSP reloading
	 in the InfoCenter.  Do not enable automatic JSP reloading in a production 
	 environment because performance will decrease.
	 NOTE: Default.jsp uses the @include JSP directive to include jsp fragments
	 (denoted by the.jspf extension) which compiles these files into the servlet
	 for Default.jsp. If you change these files, you must "touch" the version
	 of Default.jsp which includes it to see your changes.
	 You can do this by editing Default.jsp and saving it. --%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="./includePortalTaglibs.jspf" %>
<%@ taglib uri="/WEB-INF/tld/portal-internal.tld" prefix="portal-internal" %>
<%--
--%><portal-core:constants/><portal-core:defineObjects/><portal-internal:adminNavHelper/><%@ 
include file="./bootstrap.jspf" %><%--
--%><%-- The theme template is determined by whether there is a value set in page meta data, 
if no value is set in the meta data, then it defaults to the template stored in webdav --%><%--
--%><c:choose><%--
--%><c:when test="${!empty themeTemplateURI}"><%--
--%><r:dataSource uri='<%="spa:" + pageContext.getAttribute("currentNavNodeID", PageContext.REQUEST_SCOPE)%>' escape="none"><%--
	--%><r:param name="themeURI" value="${themeTemplateURI}"/><%--
	--%><r:param name="mime-type" value="text/html"/><%--
--%></r:dataSource><%--
--%></c:when><%-- If no theme template is found, the fallback.jsp is rendered
--%><c:otherwise><%@ include file="./fallback.jsp" %></c:otherwise><%--
--%></c:choose>
