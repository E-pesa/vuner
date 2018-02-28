.class public Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MoneyTransferFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field private isFee:Ljava/lang/Boolean;

.field private isLookup:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 33
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isLookup:Ljava/lang/Boolean;

    .line 34
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isFee:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "Money_Transfer"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f06019e

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 41
    const v1, 0x7f0300a3

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0240

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 44
    const v1, 0x7f0d023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 46
    const v1, 0x7f0d0241

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->next:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->setSubmitButton(Landroid/view/View;)V

    .line 49
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isLookup:Ljava/lang/Boolean;

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isFee:Ljava/lang/Boolean;

    .line 52
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x1

    .line 86
    instance-of v1, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v1, :cond_2

    .line 88
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isLookup:Ljava/lang/Boolean;

    .line 89
    check-cast p2, Lcom/tigo/mfsapp/service/LookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->tigoNameResponse:Ljava/lang/String;

    .line 95
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isLookup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isFee:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    new-instance v0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;-><init>()V

    .line 98
    .local v0, "fragment":Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;->setMSISDN(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 100
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 101
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 102
    const v1, 0x7f0602b8

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;->setTextTitle(I)V

    .line 103
    invoke-virtual {p0}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 106
    .end local v0    # "fragment":Lcom/tigo/mfsapp/moneytransfer/MoneyTransferConfirmFragment;
    :cond_1
    return-void

    .line 90
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    instance-of v1, p2, Lcom/tigo/mfsapp/service/MoneyTransferFeeResponse;

    if-eqz v1, :cond_0

    .line 92
    check-cast p2, Lcom/tigo/mfsapp/service/MoneyTransferFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/MoneyTransferFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->fee:Ljava/lang/Float;

    .line 93
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isFee:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->amount:Ljava/lang/Float;

    .line 74
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->isLookup:Ljava/lang/Boolean;

    .line 78
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestMoneyTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 81
    return-void
.end method

.method protected onValidateData()Z
    .locals 11

    .prologue
    const v10, 0x7f06003e

    const/4 v9, 0x0

    const v8, 0x7f06013c

    const v7, 0x7f0200d3

    const/4 v6, 0x0

    .line 111
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 112
    .local v2, "valid":Ljava/lang/Boolean;
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v4, 0x7f0601d4

    const v5, 0x7f0200d8

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 115
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 123
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 128
    .local v0, "amount":Ljava/lang/Float;
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v9

    if-gtz v3, :cond_2

    .line 130
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 131
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 136
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v9

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 138
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 139
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 140
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 152
    :cond_3
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 153
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 162
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 116
    .end local v0    # "amount":Ljava/lang/Float;
    :cond_5
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v3, v4}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 118
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto/16 :goto_1

    .line 143
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 147
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 156
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const/4 v3, 0x0

    invoke-virtual {p0, v10, v8, v3}, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 158
    iget-object v3, p0, Lcom/tigo/mfsapp/moneytransfer/MoneyTransferFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 159
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x1

    return v0
.end method
