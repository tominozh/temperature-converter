<%-- 
    Document   : response
    Created on : 01-Mar-2017, 13:18:47
    Author     : Tomas 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temp Converter</title>
    </head>
    <body>
        <h1>Temp Converter</h1>
        <jsp:useBean id="tempconverter" scope="session" class="tempconverterclient.TempConverterClient" />
        <jsp:setProperty name="tempconverter" property="input" />
        <jsp:setProperty name="tempconverter" property="fromUnit" />
        <jsp:setProperty name="tempconverter" property="toUnit" />
        <jsp:getProperty name="tempconverter" property="input" />
    </body>
</html>
