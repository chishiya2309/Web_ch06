<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />
        <h1>Thanks for taking our survey!</h1>
        
        <p>Here is the information that you entered:</p>
        <label>Email:</label>
        <span>${user.email}</span><br>
        <label>First Name:</label>
        <span>${user.firstName}</span><br>
        <label>Last Name:</label>
        <span>${user.lastName}</span><br>
        <label>Heard From:</label>
        <span>${user.heardFrom}</span><br>
        <label>Updates</label>
        <span>${user.wantsUpdates}</span><br>
        
        <%-- Only display "Contact Via" if wantsUpdates is true --%>
        <c:if test="${user.wantsUpdates}">
            <label>Contact Via:</label>
            <span>${user.contactVia}</span>
        </c:if>
            
        <p>To enter another survey, click on the Back 
button in your browser or the Return button shown 
below.</p>

        <form action="" method="post">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
<c:import url="/includes/footer.jsp" />
