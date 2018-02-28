.class public Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "WithDrawMoneyCashOutFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "WithDrawMoneyCashOut"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const v0, 0x7f06027d

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 40
    const v1, 0x7f030081

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 43
    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 45
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textLabelDescription:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 48
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 54
    :cond_0
    const v1, 0x7f0d01e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->next:Landroid/widget/Button;

    .line 56
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->setSubmitButton(Landroid/view/View;)V

    .line 58
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 94
    instance-of v3, p2, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 96
    check-cast v2, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;

    .line 97
    .local v2, "res":Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;
    new-instance v1, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;-><init>()V

    .line 98
    .local v1, "fragment":Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "FEE_KEY"

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;->getFee()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 100
    const-string v3, "PARAM_AGENT_NAME"

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;->getAgentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "PARAM_AGENT_MSISDN"

    iget-object v4, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 106
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;
    .end local v2    # "res":Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 78
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "sessionToken":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "amount":Ljava/lang/Float;
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v0}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawMoneyCashOutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 89
    return-void

    .line 83
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const v8, 0x7f06003e

    const/4 v5, 0x0

    const v7, 0x7f06027c

    const v6, 0x7f0200d3

    const/4 v2, 0x0

    .line 112
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v4, 0x7f060285

    const v5, 0x7f020038

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 159
    :goto_0
    return v2

    .line 120
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 125
    .local v0, "amount":Ljava/lang/Float;
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 121
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_1

    .line 133
    .end local v1    # "e":Ljava/lang/NumberFormatException;
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

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

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

    .line 135
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 136
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 140
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0

    .line 149
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 150
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 159
    :cond_4
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 151
    :catch_2
    move-exception v1

    .line 153
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {p0, v8, v7, v3}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 155
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method
