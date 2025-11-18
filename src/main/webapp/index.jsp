<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
<c:if test="${message != null}">
    <p><i>${message}</i></p>
</c:if>
    <h1>Survey</h1>
        <p>If you have a moment, we'd appreciate it if you would fill out this survey.</p>
        <h2>Your information:</h2>
        <form action="survey" method="post">
            <input type="hidden" name="action" value="add"> 
            <label class="pad_top">First Name</label>
            <input type="text" name="firstName" value="${user.firstName}" required><br>
            <label class="pad_top">Last Name</label>
            <input type="text" name="lastName" value="${user.lastName}" required><br>
            <label class="pad_top">Email</label>
            <input type="email" name="email" value="${user.email}" required><br>
            
            <h2>How did you hear about us?</h2>
            <p><input type="radio" name="heardFrom" value="Search Engine" checked>Search engine
                <input type="radio" name="heardFrom" value="Friend">Word of mouth
                <input type="radio" name="heardFrom" value="Other">Other</p>
            
            <h2>Would you like to receive announcements about new CDs and special offers?</h2>
            <p><input type="checkbox" name="wantsUpdates" checked>YES, I'd like that.</p>
            
            <p>Please contact me by:
                <select name='contactVia'>
                    <option value='Both' selected>Email or postal mail</option>
                    <option value='Email'>Email only</option>
                    <option value='Postal Mail'>Postal mail only</option>
                </select>
            </p>
            
            <input type='submit' value='Submit'>
        </form>
<c:import url="/includes/footer.jsp" />
