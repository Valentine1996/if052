<%--
  Created by IntelliJ IDEA.
  User: valentyn
  Date: 2/9/15
  Time: 10:30 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<tiles:insertDefinition name="defaultTemplate">
    <tiles:putAttribute name="body">
        <div class="body">
            <div class="container">
                <p></p>
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Місто</th>
                        <th>Вулиця</th>
                        <th>Будинок</th>
                        <th>Квартира</th>
                        <th>Тариф</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="address" items="${addresses}">
                        <tr>
                            <td><c:out value="${address.city}"/>  </td>
                            <td><c:out value="${address.street}"/></td>
                            <td><c:out value="${address.building}"/></td>
                            <td><c:out value="${address.apartment}"/></td>
                            <td><c:out value="${address.tariff}"/></td>
                            <td><a href="<c:url value="/watermeter?addressId=${address.addressId}"/>">
                                <button>Water Meter</button></a></td>
                            <td><a href="<c:url value="/updateAddress?addressId=${address.addressId}"/>">
                                <button>UPDATE</button></a></td>
                            <td><a href="<c:url value="/deleteAddress?addressId=${address.addressId}"/>">
                                <button>DELETE</button></a></td>
        
                        </tr>
                    </c:forEach>
                </table>
                <c:url var="addUrl" value="/addAddress"/>
                <form:form action="${addUrl}" method="post" modelAttribute="address">
                    <table class="box-table-a">
                        <caption> Додати адресу </caption>
                        <thead>
                        <tr>
                            <th>Місто</th>
                            <th>Вулиця</th>
                            <th>Будинок</th>
                            <th>Квартира</th>
                            <th>Тариф</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>
                                <input type="text" name="city" />
                            </td>
                            <td> 
                                <input type="text" name="street" />
                            </td>
                            <td>
                                <input type="text" name="building" />
                            </td>
                            <td>
                                <input type="text" name="apartment" />
                            </td>
                            <td>
                                <input type="number" step="0.1" name="tariff" />
                            </td>
                            <td>
                                <button class="add-button" type="submit">Add</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form:form>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>
