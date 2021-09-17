@transfers @red
Feature: User see for first time the empty state of transfer home
  Scenario: User see for first time the empty state of transfer home
    Given a logged user is on Home transfers
    Then a  user saw an empty screen

# @transfers @red
# Feature: User saw a empty of contact screen
#     Scenario: User see for first time the empty state of contact list
#         Given a logged user is on Home transfers
#         Then user saw an empty screen of contacts

# @transfers @red
# Feature: User saw a empty of history transfers
#     Scenario: User see for first time the empty state of history transfers
#         Given a logged user is on transfer's home
#         Then click on history tab
#         Then user saw an empty screen of history

# @transfers @red
# Feature: New user, start a transfer and fail, sees first contact but no saw the transfer in your history

#     Scenario: User makes your first transfer and fail, first contact in the contact book but history empty
#         Given a logged user is on Home transfers
#         Then click on transfers button
#         Then user set a cbu to transfer 3108100900011000001177
#         Then user set amount to transfer 2,22
#         Then system indicates error
#         Then user saw in the contact book your first contact
#         Then a user saw a history empty

# @transfers @red
# Feature: New user, start a transfer and cancel, return to the empty state of transfers

#     Scenario: User cancel your first transfer, return to the empty state of transfers
#         Given a logged user is on Home transfers
#         Then user selects Nueva Transferencia
#         Then user set cbu to transfer
#         Then user set amount to transfer
#         Then user cancel the operation
#         Then user saw empty Agenda de destinarios
#         Then a user saw a history empty

# @transfers @red
# Feature: User makes first successful transfer, sees first contact and first transfer in history

#     Scenario: User makes first successful transfer, first contact and first transfer in history
#         Given a logged user is on Home transfers
#         Then user set cbu to transfer
#         Then user set amount to transfer
#         Then user confirm the tranfer
#         Then user saw in the contact book your Agenda destinarios
#         Then user saw the first transfer in your Historial de Transferencia

# @transfers @red
# Feature: User saw mistake in the contacts book

#     Scenario: User sees general error screen in the agenda
#         Given a logged user is on Home transfers
#         Then  user select agenda tab
#         Then user saw empty state of mistake general

# @transfers @red
# Feature: User saw mistake in the history

#     Scenario: User sees general error screen in history
#         Given a logged user is on Home transfers
#         Then user select the history tab
#         Then user saw empty state of mistake general

# @transfers @red
# Feature: User saw mistake in the transfers

#     Scenario: User sees general error screen in transfer home
#         Given a logged user is on Home transfers
#         Then user saw empty state of mistake general
