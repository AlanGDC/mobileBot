@ModalOwnership @red
Feature: User add a new contact in your contact book without co holders
    Scenario: User add a contact without co holders in his contact book
        Given a logged user is on Home transfers
        Then user make click in the more button
        Then user make click in add contact
        Then user set a cbu to add contact 3108100900011000001177
        Then user saw in the modal the complete information only of the new contact
        Then user saw the new contact in your contact book

# @ModalOwnership @red
# Feature: User add a second contact in your contact book
#     Scenario: User add a contact with one holders and one co holders in his contact book with complete information
#         Given a logged user is on Home transfers
#         Then user make click in the more button
#         Then user make click in add contact
#         Then user set a cbu to add contact 3108100900011000001177
#         Then user saw in the modal the complete information of the new contact and his co holders
#         Then user saw the new contact in your contact book

# @ModalOwnership @red
# Feature: User add a thirty contact in your contact book
#     Scenario: User add a contact with one holders and two co holders in his contact book with complete information
#         Given a logged user is on Home transfers
#         Then user make click in the more button
#         Then user make click in add contact
#         Then user set a cbu to add contact 3108100900011000001177
#         Then user saw in the modal the complete information of the new contact and his two co holders
#         Then user saw the new contact in your contact book


# @ModalOwnership @red
# Feature: User add a contact in your contact book
#     Scenario: User add a contact with one holders and one co holders in his contact book with incomplete information
#         Given a logged user is on Home transfers
#         Then user make click in the more button
#         Then user make click in add contact
#         Then user set a cbu to add contact 3108100900011000001177
#         Then user does not see the CUIT of the co-holders in the modal
#         Then user saw the new contact in your contact book

# @ModalOwnership @red
# Feature: User add a new contact in your contact book
#     Scenario: User add a contact with one holders and two co holders in his contact book with incomplete information
#         Given a logged user is on Home transfers
#         Then user make click in the more button
#         Then user make click in add contact
#         Then user set a cbu to add contact 3108100900011000001177
#         Then user does not see the CUIT of the two co-holders in the modal
#         Then user saw the new contact in your contact book