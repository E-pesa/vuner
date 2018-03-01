.class public Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SendMoneyGenerateVoucherFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field firstName:Ljava/lang/String;

.field lastName:Ljava/lang/String;

.field msisdn:Ljava/lang/String;

.field msisdnContact:Ljava/lang/String;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

.field textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method fillForm()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->msisdnContact:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->msisdnContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->firstName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->lastName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 86
    :cond_3
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "SendMoneyGenerateVoucher"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const v0, 0x7f060246

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 99
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 46
    const v1, 0x7f03007e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 49
    const v1, 0x7f0d01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 50
    const v1, 0x7f0d01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 51
    const v1, 0x7f0d01dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 53
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLabelDescription:Landroid/widget/TextView;

    .line 54
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 56
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 62
    :cond_0
    const v1, 0x7f0d01dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->next:Landroid/widget/Button;

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->setSubmitButton(Landroid/view/View;)V

    .line 65
    invoke-virtual {p0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->fillForm()V

    .line 67
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 127
    instance-of v3, p2, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 129
    check-cast v2, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;

    .line 131
    .local v2, "res":Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;
    new-instance v1, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;-><init>()V

    .line 132
    .local v1, "fragment":Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PARAM_RECIPIENT_MSISDN"

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "PARAM_RECIPIENT_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v3, "PARAM_AMOUNT"

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 136
    const-string v3, "PARAM_FEE"

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;->getFee()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 137
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 139
    invoke-virtual {p0}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 141
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherConfirmFragment;
    .end local v2    # "res":Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 105
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->msisdn:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->msisdnContact:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->firstName:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->lastName:Ljava/lang/String;

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;

    .line 118
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "sessionToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestSendMoneyGenerateVoucherFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 122
    return-void

    .line 113
    .end local v1    # "sessionToken":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->amount:Ljava/lang/Float;

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const v8, 0x7f020038

    const/4 v5, 0x0

    const v7, 0x7f060244

    const v6, 0x7f0200d3

    const/4 v2, 0x0

    .line 146
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v4, 0x7f060250

    invoke-virtual {v3, v4, v8}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 205
    :goto_0
    return v2

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textFirstName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060249

    invoke-virtual {v3, v4, v8}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 160
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textLastName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f06024d

    invoke-virtual {v3, v4, v8}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 166
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 171
    .local v0, "amount":Ljava/lang/Float;
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    .line 173
    :cond_3
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 167
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_1

    .line 179
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

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

    if-lez v3, :cond_5

    .line 181
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 182
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 186
    :catch_1
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0

    .line 195
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 196
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 205
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 197
    :catch_2
    move-exception v1

    .line 199
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 200
    const v3, 0x7f06003e

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v7, v4}, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 201
    iget-object v3, p0, Lcom/tigo/mfsapp/sendmoney/SendMoneyGenerateVoucherFragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method
