<%-- 
    Document   : viewnote
    Created on : Sep 29, 2021, 2:15:42 PM
    Author     : 794974
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>viewnote</title>
    </head>
    <body>
        
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <div>
            Title: ${noteObj.title}
        </div>
        <div>
            Contents:${noteObj.content}
        </div>
        <div>
            <a href="note?edit">Edit</a>
        </div>
    </body>
</html>
