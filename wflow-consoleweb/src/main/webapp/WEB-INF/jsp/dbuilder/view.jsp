<%@ include file="/WEB-INF/jsp/includes/taglibs.jsp" %>
<%@ taglib uri="http://displaytag.sf.net" prefix="display" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-1.5.2.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/ui/jquery-ui-1.8.6.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/js/jquery/themes/themeroller/jquery-ui-themeroller.css">
    
    <link rel="stylesheet" href="<c:url value="/css/datalistBuilderView.css"/>?build=<fmt:message key="build.number"/>" />
    <style>
        * { font-family:'PT Sans',Arial; font-size:13px; line-height:16px }
        body { width:900px }
    </style>
</head>

<body>
<div id="preview">
    <c:if test="${!empty error}">
        <h3><fmt:message key="dbuilder.errorGenerating"/></h3>
        <div id="error">${error}</div>
    </c:if>

    <c:set scope="request" var="dataListId" value="${dataList.id}"/>
    
    <jsp:include page="/WEB-INF/jsp/dbuilder/dataListView.jsp" flush="true" />

    <div id="preview-label">Preview</div>

</body>
</html>