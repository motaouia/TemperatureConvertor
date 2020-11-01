<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@taglib uri="http://java.sun.com/jsf/html" prefix="h"%>

<!DOCTYPE html>
<f:view>
  <html lang="en">
  
    <head>
      <title>Celsius to Fahrenheit Convertor</title>
    </head>
    
    <body>
	  <h:form>
        <h:panelGrid columns="2">
          <h:outputLabel value="Celsius"></h:outputLabel>
          <h:inputText  value="#{temperatureConvertor.celsius}"></h:inputText>
        </h:panelGrid>
        <h:commandButton action="#{temperatureConvertor.celsiusToFahrenheit}" value="Calculate"></h:commandButton>
        <h:commandButton action="#{temperatureConvertor.reset}" value="Reset"></h:commandButton>
        <h:messages layout="table"></h:messages>
      </h:form>


      <h:panelGroup rendered="#{temperatureConvertor.initial!=true}">
        <h3> Result </h3>
        <h:outputLabel value="Fahrenheit "></h:outputLabel>
        <h:outputLabel value="#{temperatureConvertor.fahrenheit}"></h:outputLabel>
     </h:panelGroup>
    </body>

  </html>
</f:view>