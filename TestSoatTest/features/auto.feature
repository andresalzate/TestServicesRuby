# language: en

Feature: prueba sencilla de como funciona un llamado a servicios

@qa
Scenario: usuario consulta placa incorrecta
Given un usuario quiere consultar placa incorrecta
Then validar la placa

@qa
Scenario: usuario consulta placa correcta
Given un usuario quiere consultar placa correcta
Then validar la placa
