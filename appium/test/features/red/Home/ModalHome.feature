@TransfersModalHome @red
Feature: New user, make a transfer from Modal Transfer Home, sees first contact in the modal
  Background: Login user
    Given Usuario realiza login bdsolqeyellow@gmail.com
    And   usuario selecciona Teclado Clave Tecla 1
    And   usuario selecciona Teclado Clave Tecla 4
    And   usuario selecciona Teclado Clave Tecla 7
    And   usuario selecciona Teclado Clave Tecla 2
    And   usuario selecciona Teclado Clave Tecla 5
    And   usuario selecciona Teclado Clave Tecla 8
    When  sistema muestra Xpath //*[@*='PAGOS']

  Scenario: User makes your first transfer from Modal Transfer Home, sees first contact in the modal    
    Given sistema indica Inicio banco del sol
    When  usuario presiona Xpath //*[@*='TRANSFERENCIAS']   
    # When  sistema indica Hacé transferencias las 24 horas, los 7 días de la semana y sin costo
    When  usuario selecciona Más acciones 
    When  usuario selecciona Nueva transferencia
    When  usuario completa el campo campo de texto con el valor 3108100900012000001921        
    When  usuario selecciona Continuar 
    # When  sistema indica BANCO DEL SOL
    # When  sistema indica Caja de Ahorro en Pesos
    # When  sistema muestra elemento cbu con texto CBU: 31081009-00012000001921
    # When  sistema indica DUARTECARVALHOSAALANGABRIEL
    # When  sistema muestra elemento CUIT con texto CUIL: 20-33557443-6
    When  sistema indica Volver
    When  usuario presiona Xpath //*[@*='Continuar']
    When  usuario completa el campo campo de texto con el valor 123
    When  usuario selecciona Continuar 
        # Ingresar monton         completar importe
        # Continuar
        # Navigate Up //para volver



        # 3108100900012000001921 //consultar cbu
        # Motivo
        # Modificar
        #   seleccionar Alquileres botón
        # Editar
        #   campo de texto
        #   Guardar
        # transferir botón

        # Volver a Transferencias




    # Then set a cbu to transfer 3108100900011000001177
    # Then set amount to transfer 2,22
    # Then confirm the tranfer
    # Then click on transfers button
    # Then saw in the modal Transfer home your first contact

# @TransfersModalHome @red
# Feature: Add new contact from Modal Transfer Home
#     Scenario: User add your first contact from Modal Transfer Home, sees first contact in the modal
#         Given a logged user is on Home
#         Then click on transfers button
#         Then click on see contact book
#         Then click in add contact   Agregar contacto

#         Then set a cbu to add 3108100900011000002170
#         Then confirm the new contact
#         Then see the new contact in the modal on transfers home


# @TransfersModalHome @red
# Feature: User make a transfer successful from Modal to new contact
#     Scenario: User make a transfer from Modal to new contact, see contact in the modal
#         Given a logged user is on Home
#         Then click on transfers button
#         Then click on new contact to transfer
#         Then set a cbu to transfer 3108100900011000002095
#         Then confirm the new contact
#         Then click on transfers button
#         Then see the new contact in the modal on transfer home

# @TransfersModalHome @red
# Feature: User make a transfer from Modal a new contact and fail
#     Scenario: User make a transfer from Modal a new contact, user see the contact in the modal
#         Given a logged user is on Home
#         Then click on transfers button
#         Then set a cbu to transfer 3108100900011000001443
#         Then confirm the new contact
#         # revisar
#         Then click on transfers button
#         Then see the new contact in the modal transfer home

# @TransfersModalHome @red
# Feature: User make a transfer from Modal a new contact and cancel the transfer
#     Scenario: User make a transfer from Modal a new contact, the user doesn't see the contact
#         Given a logged user is on Home
#         Then click on transfers button
#         Then set a cbu to transfer 3108100900011000000280
#         Then cancel the new transfer
#         Then click on transfers button
#         Then doesn't see the new contact in the modal transfer home

# # @TransfersModalHome @red
# # Feature: User modifies alias of a frequent contact
# #     Scenario: User modifies alias of a frequent contact, the user see the contact frequent with new thumbaild in the modal home transfer
# #         Given a logged user is on Home
# #         Then click on transfers home
# #         Then select a contact in the list
# #         Then modifies the alias the contact
# #         Then click on transfers button
# #         Then see the new contact in the modal transfer home with new thumbaild in the modal home transfer





# @transfersModalHome @red
# Feature: User make a transfer successful from Modal to new contact
#     Scenario: User make a transfer from Modal to new contact, see contact in the modal
#         Given a logged user is on Home
#         Then click on transfers button
#         Then click on new contact to transfer
#         Then set a cbu to transfer 3108100900011000002095
#         Then confirm the new contact
#         Then click on transfers button
#         Then see the new contact in the modal on transfer home

# @transfersModalHome @red
# Feature: User make a transfer from Modal a new contact and fail
#     Scenario: User make a transfer from Modal a new contact, user see the contact in the modal
#         Given a logged user is on Home
#         Then click on transfers button
#         Then set a cbu to transfer 3108100900011000001443
#         Then confirm the new contact
#         # revisar
#         Then click on transfers button
#         Then see the new contact in the modal transfer home

# @transfersModalHome @red
# Feature: User make a transfer from Modal a new contact and cancel the transfer
#     Scenario: User make a transfer from Modal a new contact, the user doesn't see the contact
#         Given a logged user is on Home
#         Then click on transfers button
#         Then set a cbu to transfer 3108100900011000000280
#         Then cancel the new transfer
#         Then click on transfers button
#         Then doesn't see the new contact in the modal transfer home

# # @transfersModalHome @red
# # Feature: User modifies alias of a frequent contact
# #     Scenario: User modifies alias of a frequent contact, the user see the contact frequent with new thumbaild in the modal home transfer
# #         Given a logged user is on Home
# #         Then click on transfers home
# #         Then select a contact in the list
# #         Then modifies the alias the contact
# #         Then click on transfers button
# #         Then see the new contact in the modal transfer home with new thumbaild in the modal home transfer