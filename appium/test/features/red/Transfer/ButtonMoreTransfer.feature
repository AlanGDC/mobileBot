Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of Red Link with alias format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "ChiniMoro" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "9,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then tap on TransferHome.buttonTransfersSuccess
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount


Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of Banelco with alias format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "SanGil2" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "10,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then tap on TransferHome.buttonTransfersSuccess
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount


Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of Red Link with CBU format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "0290023010000050210793" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "11,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then tap on TransferHome.buttonTransfersSuccess
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount


Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of Banelco with CBU format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "0150506102000109480710" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "12,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then tap on TransferHome.buttonTransfersSuccess
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount

Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of the Banco del Sol with alias format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "TAVO.CAPO.BDS" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "12,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then tap on TransferHome.buttonTransfersSuccess
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount

Feature: ButtonMoreTransfer
    Scenario: User make transfers to another user of the Banco del Sol with CBU format
        Given an user who is on TabBar.transfersButton
        Then tap on ModalOwership.buttonMore
        Then set "3108100900012000001419" on TransferHome.inputCbuOrAlias
        Then tap on TransferHome.buttonCbuNext
        Then tap on TransferHome.transfersAccountInfoModalNext
        Then set "12,25" on TransferHome.amountTransfer
        Then tap on TransferHome.buttonAmountRequestNext
        Then tap on TransferHome.confirmationTransfers
        Then an user who is TransferHome.agendaContactList
        Then tap on TransferHome.historyTransferTransaction
        Then an user see in TransferHome.activityDescription
        Then an user see in TransferHome.activityDate
        Then an user see in TransferHome.activityAmount