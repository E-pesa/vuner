.class public Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SendMoneyPeer2peerFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field private isFee:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->isFee:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Send_Money"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const v0, 0x7f060069

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 46
    const v1, 0x7f0300b9

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d025a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 49
    const v1, 0x7f0d027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 50
    const v1, 0x7f0d027d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 51
    const v1, 0x7f0d0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 53
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLabelDescription:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 56
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 62
    :cond_0
    const v1, 0x7f0d025b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->next:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->setSubmitButton(Landroid/view/View;)V

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->isFee:Ljava/lang/Boolean;

    .line 68
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 111
    instance-of v2, p2, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;

    if-eqz v2, :cond_0

    .line 113
    check-cast p2, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Peer2peerFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->fee:Ljava/lang/Float;

    .line 114
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->isFee:Ljava/lang/Boolean;

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->isFee:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    new-instance v1, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;-><init>()V

    .line 120
    .local v1, "fragment":Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "PARAM_RECIPIENT_MSISDN"

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v2, "PARAM_RECIPIENT_NAME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v2, "PARAM_AMOUNT"

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 124
    const-string v2, "PARAM_FEE"

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 125
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 126
    const v2, 0x7f0602b7

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;->setTextTitle(I)V

    .line 127
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 131
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerConfirmFragment;
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->amount:Ljava/lang/Float;

    .line 91
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestPeer2peerFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 100
    return-void
.end method

.method protected onValidateData()Z
    .locals 11

    .prologue
    const v10, 0x7f020038

    const/4 v9, 0x0

    const v8, 0x7f06013c

    const v7, 0x7f0200d3

    const/4 v3, 0x0

    .line 136
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 138
    .local v2, "valid":Ljava/lang/Boolean;
    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 140
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v5, 0x7f0601d4

    const v6, 0x7f0200d8

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 147
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 149
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f060249

    invoke-virtual {v4, v5, v10}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 200
    :goto_1
    return v3

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v4, v5}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 153
    :cond_2
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 155
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f06024d

    invoke-virtual {v4, v5, v10}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_1

    .line 161
    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    .local v0, "amount":Ljava/lang/Float;
    :goto_2
    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_5

    .line 168
    :cond_4
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 169
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 174
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 176
    const v4, 0x7f06003e

    const v5, 0x7f060171

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 177
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f060171

    const v6, 0x7f0200d3

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 178
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 190
    :cond_6
    :goto_3
    :try_start_2
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 191
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 200
    :cond_7
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto/16 :goto_1

    .line 162
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto/16 :goto_2

    .line 181
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 185
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_3

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 194
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    const v4, 0x7f06003e

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v8, v5}, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 196
    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyPeer2peerFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 197
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    return v0
.end method
