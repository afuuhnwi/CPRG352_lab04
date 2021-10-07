<%-- 
    Document   : editnote
    Created on : Sep 29, 2021, 2:16:01 PM
    Author     : 794974
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <Form action="note" method="POST">
        <h1>Simple Note Keeper</h1>
        <h2>Edit Note</h2>
        <div>
            <label>Title: </label>
            <input type="textbox" name="title">
        </div>
        <div>
            <label>Contents:</label>
            <textarea name="content"></textarea>
        </div>
        
        <input type="submit" value="Save">
       
        </Form>
    </body>
</html>
