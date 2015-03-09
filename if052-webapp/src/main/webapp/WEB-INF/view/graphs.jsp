<%--
  Created by IntelliJ IDEA.
  User: valentyn
  Date: 3/2/15
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="<c:url value="/resources/css/graphs.css"/>"/>
<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div>
            <div id="container" class="graphs-size"></div>
        
            <c:url var="drawByMonth" value="/graphByMonth" />

            <div id="chooseMonth" class = "check-box">
                <form:form >
                        Please choose an option :
                        <div>
                            <button id = 'submit' type="submit" name="draw" >Draw</button>
                        </div>
                    </div>
                </form:form>
            <script src="/resources/js/jquery-1.9.1.js" type="text/javascript"></script>
            <script src="/resources/js/highcharts/highcharts.js" type="text/javascript"></script>
            <script src="/resources/js/highcharts/exporting.js" type="text/javascript"></script>
            <script type="text/javascript">
                var indicators = ${indicatorsData}
            </script>
            <script src="/resources/js/highcharts/graphs.js"></script>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>

</body>
</html>
