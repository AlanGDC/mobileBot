import { Given, When, Then } from "cucumber";
import { expect } from "chai";

Given("^Reset wiremock$", () => {
  //__admin/reset
  given()
    .when()
    .post("http://localhost:8080/__admin/mappings/reset")
    .then()
    .statusCode(200);
});

Given("^Get to wiremock (.*)$", url => {
  //__admin/reset
  given()
    .when()
    .get("http://localhost:8080" + url)
    .then()
    .statusCode(200);
});

Then("^usuario accede a pagos$", () => {
  payments.usuario_accede_a_pagos();
});

Then("^usuario presiona Boton Volver Atras$", () => {
  payments.usuario_presiona_Boton_Volver_Atras();
});

When("^usuario selecciona (.*)$", opcion => {
  payments.usuario_selecciona(opcion);
});

When("^usuario completa el campo (.*) con el valor (.*)$", (campo, valor) => {
  payments.usuario_completa_el_campo(campo, valor);
});

When("^usuario ingresa el valor (.*)$", valor => {
  payments.usuario_ingresa_el_valor(valor);
});

When("^usuario presiona borrar (.*) veces$", veces => {
  payments.usuario_presiona_borrar(veces);
});

When("^usuario esconde teclado$", () => {
  payments.usuario_esconde_teclado();
});

When("^sistema indica (.*)$", mensaje => {
  payments.sistema_indica(mensaje);
});

When("^sistema no muestra el valor (.*)$", valor => {
  payments.sistema_no_muestra_el_valor(valor);
});

Then("^sistema deshabilita boton (.*)$", boton => {
  payments.sistema_deshabilita_boton(boton);
});

When("^sistema muestra elemento (.*) con texto (.*)$", (elemento, texto) => {
  payments.sistema_muestra_elemento_con_texto(elemento, texto);
});
