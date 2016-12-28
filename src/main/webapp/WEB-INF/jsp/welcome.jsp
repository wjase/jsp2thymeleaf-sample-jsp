<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="favicon.ico">

        <title>JSP2Thymeleaf Migration Sample Project</title>

        <!-- Bootstrap core CSS -->
        <link href="/webjars/bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="starter-template.css" rel="stylesheet">
    </head>

    <body>
        <%@include file="includes/header.jsp" %>

        <div class="container">
            <h2>Common JSTL Tags</h2>
            <h3>c:url</h3>
            Escaped urls adjusted with the current application context.<br/>
            <pre>
&lt;c:url value="/resources/text.txt" var="url"/&gt;
&lt;spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" /&gt;
JSTL URL: \${url}&lt;br/&gt;
Message: \${message}
            </pre>
            <c:url value="/resources/text.txt" var="url"/>
            <spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />
            Spring URL: ${springUrl} at ${time}<br>
            JSTL URL: ${url}<br>
            Message: ${message}
            <h3>c:if</h3>
            <pre>
&lt;c:if test="\${true}"&gt;
&lt;span id="shouldBeShown" &gt;That Worked!&lt;/span&gt;
&lt;/c:if&gt;
                
            </pre>
            <c:if test="${true}">
                <span id="shouldBeShown" >That Worked!</span>
            </c:if>
            <h3>forEach - Form 1 (List iterator)</h3>
            <pre>
&lt;c:forEach var="item" items="\${['red','green','blue']}" varStatus="status"&gt;
This is item \${item}. Status is \${status.index}&lt;br/&gt;
&lt;/c:forEach&gt;
                
            </pre>
            <c:forEach var="item" items="${['red','green','blue']}" varStatus="status">
                This is item ${item}. Status is ${status.index}<br/>
            </c:forEach>
            <h3>forEach - Form 2 (Range iterator)</h3>
            <pre>
&lt;c:forEach var="item" begin="2" end="10" step="2" varStatus="status"&gt;
This is item \${item}. Status is \${status.index}&lt;br/&gt;
&lt;/c:forEach&gt;
            </pre>
            <c:forEach var="item" begin="2" end="10" step="2" varStatus="status">
                This is item ${item}. Status is ${status.index}<br/>
            </c:forEach>
            <h3>forTokens</h3>
            <pre>
&lt;c:forTokens var="item" delims="," items="fat,cat,sat,mat"&gt;
This is item \${item}&lt;br/&gt;
&lt;/c:forTokens&gt;
            </pre>
            <c:forTokens var="item" delims="," items="fat,cat,sat,mat">
                This is item ${item}<br/>
            </c:forTokens>
            <h3>out</h3>
            <pre>
I wouldn't say &lt;c:out value="boo"/&gt; to a goose.&lt;br/&gt;
&lt;input type="text" value="&lt;c:out value='george'/&gt;."/&gt;
                
            </pre>
            I wouldn't say <c:out value="boo"/> to a goose.<br/>
            <input type="text" value="<c:out value='george'/>."/>
            <h3>Choose/When</h3>
            <pre>
&lt;c:choose&gt;
    &lt;c:when test="\${false}"&gt;Should not contain this as the test is false.&lt;/c:when&gt;
    &lt;c:when test="\${true}"&gt;Should contain this as the test is true.&lt;/c:when&gt;
    &lt;c:otherwise&gt;Shouldn't contain this as the previous condition matched&lt;/c:otherwise&gt;
&lt;/c:choose&gt;
            </pre>
            <c:choose>
                <c:when test="${false}">Should not contain this as the test is false.</c:when>
                <c:when test="${true}">Should contain this as the test is true.</c:when>
                <c:otherwise>Shouldn't contain this as the previous condition matched</c:otherwise>
            </c:choose>
        </div>
    </div>

            <hr>

            <%@include file="includes/footer.jsp" %>

        </div> <!-- /container -->



        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="/webjars/jquery/3.1.1/jquery.min.js" integrity="sha384-THPy051/pYDQGanwU6poAc/hOdQxjnOEXzbT+OuUAFqNqFjL+4IGLBgCJC3ZOShY" crossorigin="anonymous"></script>
        <script src=""/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>