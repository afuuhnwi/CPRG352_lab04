<%-- 
    Document   : editnote
    Created on : Sep 29, 2021, 2:16:01 PM
    Author     : 794974
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/style.css">
        <title>JSP Page</title>
    </head>
    
    <body class="body">
      <h1>Simple Note Keeper</h1>
        <Form action="note" method="POST">
            <fieldset class="legend" >
                <legend > NOTES</legend>
        
        <h2>Edit Note</h2>
        <div>
            <label>Title: </label>
            <input type="textbox" name="title" value="" >
        </div>
        <div>
            <label>Contents:</label>
            <textarea name="content" value="" rows="6" cols="30"></textarea>
        </div>
        
        <input type="submit" value="Save">
        
            </fieldset>
        </Form>
       
        <c:if test="${errorMessage}">
                <p>Invalid entry. Please enter a title and content</p>
            </c:if>
    </body>
     
</html>
