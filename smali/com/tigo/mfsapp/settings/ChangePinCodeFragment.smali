.class public Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ChangePinCodeFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;
    }
.end annotation


# instance fields
.field private confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private keyAnalitycs:I

.field private newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    return-object v0
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->keyAnalitycs:I

    .line 54
    iget v1, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->keyAnalitycs:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v0, "Change_PIN"

    .line 58
    goto :goto_0

    .line 60
    :pswitch_1
    const-string v0, "Force_Pincode_Change"

    .line 61
    goto :goto_0

    .line 54
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOnChangePinDialogListener()Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const v0, 0x7f060109

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 74
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v2, 0x7f03002e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d00ce

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 36
    const v2, 0x7f0d00cf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 37
    const v2, 0x7f0d00d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 39
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, "parent":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v3, 0x7f06025e

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    .line 45
    :cond_0
    const v2, 0x7f0d00d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->setSubmitButton(Landroid/view/View;)V

    .line 46
    return-object v1
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 85
    const v0, 0x7f06003e

    const v1, 0x7f0601d8

    new-instance v2, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;-><init>(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 99
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 79
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestChangePinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const v8, 0x7f0601de

    const v7, 0x7f0601d9

    const v6, 0x7f0601b2

    const v5, 0x7f060155

    const v4, 0x7f0200d3

    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "res":Z
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getPinCodeDigits()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->oldPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v7, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 111
    const/4 v1, 0x0

    .line 114
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getPinCodeDigits()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v7, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 119
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0601b0

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    :cond_3
    const/4 v1, 0x0

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getPinCodeDigits()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v8, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 128
    if-eqz v1, :cond_6

    invoke-virtual {p0, v8}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_6
    const/4 v1, 0x0

    .line 132
    :cond_7
    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->newPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 135
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->confirmedPINCodeText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 139
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    .line 144
    :cond_8
    if-nez v1, :cond_9

    .line 145
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 148
    :cond_9
    return v1
.end method

.method public setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V
    .locals 0
    .param p1, "onChangePinDialogListener"    # Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    .line 161
    return-void
.end method
