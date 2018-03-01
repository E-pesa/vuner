.class public Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "DepositMoneyFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field commission:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field private isCommission:Ljava/lang/Boolean;

.field private isFee:Ljava/lang/Boolean;

.field private isLookup:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 35
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isLookup:Ljava/lang/Boolean;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isFee:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isCommission:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const-string v0, "Deposit_Money"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const v0, 0x7f06011b

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 44
    const v1, 0x7f030048

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0114

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 47
    const v1, 0x7f0d0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 49
    const v1, 0x7f0d0115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->next:Landroid/widget/Button;

    .line 50
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->setSubmitButton(Landroid/view/View;)V

    .line 52
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isLookup:Ljava/lang/Boolean;

    .line 53
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isFee:Ljava/lang/Boolean;

    .line 54
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isCommission:Ljava/lang/Boolean;

    .line 56
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x1

    .line 94
    instance-of v1, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v1, :cond_2

    .line 96
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isLookup:Ljava/lang/Boolean;

    .line 97
    check-cast p2, Lcom/tigo/mfsapp/service/LookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->tigoNameResponse:Ljava/lang/String;

    .line 108
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isLookup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isFee:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isCommission:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    new-instance v0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;-><init>()V

    .line 111
    .local v0, "fragment":Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setMSISDN(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 113
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 114
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->commission:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setCommission(Ljava/lang/Float;)V

    .line 115
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 116
    const v1, 0x7f0602b5

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->setTextTitle(I)V

    .line 117
    invoke-virtual {p0}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 120
    .end local v0    # "fragment":Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;
    :cond_1
    return-void

    .line 98
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    instance-of v1, p2, Lcom/tigo/mfsapp/service/DepositMoneyFeeResponse;

    if-eqz v1, :cond_3

    .line 100
    check-cast p2, Lcom/tigo/mfsapp/service/DepositMoneyFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/DepositMoneyFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->fee:Ljava/lang/Float;

    .line 101
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isFee:Ljava/lang/Boolean;

    goto :goto_0

    .line 102
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_3
    instance-of v1, p2, Lcom/tigo/mfsapp/service/DepositMoneyCommissionResponse;

    if-eqz v1, :cond_0

    .line 104
    check-cast p2, Lcom/tigo/mfsapp/service/DepositMoneyCommissionResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/DepositMoneyCommissionResponse;->getCommission()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->commission:Ljava/lang/Float;

    .line 105
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isCommission:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 77
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->amount:Ljava/lang/Float;

    .line 78
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->isLookup:Ljava/lang/Boolean;

    .line 83
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestDepositMoneyFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 88
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestDepositMoneyCommission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 89
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

    .line 125
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 126
    .local v2, "valid":Ljava/lang/Boolean;
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 128
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v4, 0x7f0601d4

    const v5, 0x7f0200d8

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 129
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 137
    :cond_0
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 142
    .local v0, "amount":Ljava/lang/Float;
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

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

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 145
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 150
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

    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

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

    .line 152
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 153
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 154
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 166
    :cond_3
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 167
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :cond_4
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 130
    .end local v0    # "amount":Ljava/lang/Float;
    :cond_5
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v3, v4}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto/16 :goto_1

    .line 157
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 160
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 161
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_2

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 170
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    const/4 v3, 0x0

    invoke-virtual {p0, v10, v8, v3}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 172
    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 173
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method
