.class public Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "AnyoneToAnyoneTransferStep3Fragment.java"


# static fields
.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"

.field public static final PARAM_SENDER_ID_NUMBER:Ljava/lang/String; = "PARAM_SENDER_ID_NUMBER"

.field public static final PARAM_SENDER_ID_TYPE:Ljava/lang/String; = "PARAM_SENDER_ID_TYPE"

.field public static final PARAM_SENDER_MSISDN:Ljava/lang/String; = "PARAM_SENDER_MSISDN"

.field public static final PARAM_SENDER_NAME:Ljava/lang/String; = "PARAM_SENDER_NAME"


# instance fields
.field amount:Ljava/lang/Float;

.field bundle:Landroid/os/Bundle;

.field commission:Ljava/lang/Float;

.field commissionTax:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field isCommission:Ljava/lang/Boolean;

.field isFee:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field receiverMsisdn:Ljava/lang/String;

.field receiverName:Ljava/lang/String;

.field reference:Ljava/lang/String;

.field senderIdNumber:Ljava/lang/String;

.field senderIdType:Ljava/lang/String;

.field senderMSISDN:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field textName:Lcom/tigo/mfsapp/components/CustomEditText;

.field textReference:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isFee:Ljava/lang/Boolean;

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isCommission:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method fillForm()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverMsisdn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverMsisdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->reference:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 89
    :cond_2
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 55
    const-string v0, "PARAM_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->amount:Ljava/lang/Float;

    .line 56
    const-string v0, "PARAM_SENDER_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderMSISDN:Ljava/lang/String;

    .line 57
    const-string v0, "PARAM_SENDER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderName:Ljava/lang/String;

    .line 58
    const-string v0, "PARAM_SENDER_ID_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderIdType:Ljava/lang/String;

    .line 59
    const-string v0, "PARAM_SENDER_ID_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderIdNumber:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d005f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 68
    const v1, 0x7f0d0060

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 69
    const v1, 0x7f0d0061

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 71
    const v1, 0x7f0d0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->next:Landroid/widget/Button;

    .line 73
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 75
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->fillForm()V

    .line 77
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x1

    .line 135
    instance-of v1, p2, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 137
    check-cast v1, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->fee:Ljava/lang/Float;

    move-object v1, p2

    .line 138
    check-cast v1, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->getCommission()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->commission:Ljava/lang/Float;

    .line 139
    check-cast p2, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->getCommissionTax()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->commissionTax:Ljava/lang/Float;

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isFee:Ljava/lang/Boolean;

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isCommission:Ljava/lang/Boolean;

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isCommission:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->isFee:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    new-instance v0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;-><init>()V

    .line 149
    .local v0, "fragment":Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_AMOUNT"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 150
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_MSISDN"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderMSISDN:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_NAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_ID_TYPE"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderIdType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_SENDER_ID_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->senderIdNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_RECEIVER_MSISDN"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_RECEIVER_NAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_REFERENCE"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->commission:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->setCommission(Ljava/lang/Float;)V

    .line 159
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->commissionTax:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->setCommissionTax(Ljava/lang/Float;)V

    .line 160
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->setFee(Ljava/lang/Float;)V

    .line 161
    const v1, 0x7f0600eb

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->setTextTitle(I)V

    .line 163
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->initForm(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 166
    .end local v0    # "fragment":Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverMsisdn:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->receiverName:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->reference:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestAnyoneToAnyoneTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 130
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    const v3, 0x7f0200d3

    .line 95
    const/4 v0, 0x1

    .line 97
    .local v0, "result":Z
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textMSISDN:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0600d6

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 100
    const/4 v0, 0x0

    .line 103
    :cond_0
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textName:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0600d9

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 106
    const/4 v0, 0x0

    .line 109
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep3Fragment;->textReference:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0600dc

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 112
    const/4 v0, 0x0

    .line 115
    :cond_2
    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    return v0
.end method
