<%--
  Created by IntelliJ IDEA.
  User: Максим
  Date: 18.02.2015
  Time: 1:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">

            <h1>Редагування показника</h1>

            <c:url var="updateUrl" value="/updateIndicator"/>
            <form:form action="${updateUrl}" method="post" modelAttribute="indicator">
                <sec:csrfInput/>
                <table class="box-table-a">
                    <thead>
                        <tr>
                            <th>Дата</th>
                            <th>Тариф</th>
                            <th>Показник</th>
                            <th>Оплачено</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class="form-control" type="hidden" name="indicatorId" value="${indicator.indicatorId}"/>
                                <input class="form-control" type="text" id="datepicker" name="dateStr" value="<fmt:formatDate value='${indicator.date}' pattern='dd-MM-yyyy' />" />
                            </td>
                            <td>
                                <input class="form-control" type="number" step="0.01" name="tariffPerDate" value="${indicator.tariffPerDate}"/>
                            </td>
                            <td>
                                <input class="form-control" type="number" step="1" name="value" value="${indicator.value}"/>
                            </td>
                            <td>
                                <input class="checkbox" type="checkbox" name="paid" <c:if test="${indicator.paid}">checked="checked"</c:if> />
                            </td>
                            <td><button class="btn btn-default" type="submit">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                            </button></td>
                        </tr>
                    </tbody>
                </table>
            </form:form>
        </div>

        <script type="text/javascript" src="<c:url value='/resources/js/jquery/jquery-ui.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/jquery/jquery-ui-i18n.min.js'/>"></script>
        <script type="text/javascript" src="<c:url value='/resources/js/updateIndicator.js'/>"></script>
    </tiles:putAttribute>
</tiles:insertDefinition>
