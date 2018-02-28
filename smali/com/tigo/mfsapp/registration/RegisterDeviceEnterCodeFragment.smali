.class public Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "RegisterDeviceEnterCodeFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"


# instance fields
.field private GUID:Ljava/lang/String;

.field private backButton:Landroid/widget/Button;

.field private commitButton:Landroid/widget/Button;

.field private pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

.field private receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

.field private termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->finishForm()V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Lcom/tigo/mfsapp/components/TermsAndConditionsView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    return-object v0
.end method

.method private setStateWatingRegistrationCode()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WAITING_REGISTRATION_CODE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    return-void
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 194
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->hideProgressDialog()V

    .line 198
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 199
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "Device_Registration_Confirmation"

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 44
    const-string v0, "PARAM_GUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 342
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 343
    if-eqz p1, :cond_0

    .line 345
    const-string v0, "GUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    .line 347
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 91
    const v3, 0x7f0300a7

    invoke-virtual {p1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d024d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 93
    const v3, 0x7f0d0123

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/PinCustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 94
    const v3, 0x7f0d024e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    .line 95
    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->backButton:Landroid/widget/Button;

    .line 97
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->backButton:Landroid/widget/Button;

    new-instance v5, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$1;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    .line 111
    .local v0, "params":Lcom/tigo/mfsapp/model/Parameters;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isRegisterDeviceEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move v1, v4

    .line 114
    .local v1, "termsAndCondititionsAccepted":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 115
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setVisibility(I)V

    .line 118
    .end local v1    # "termsAndCondititionsAccepted":Z
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setAutoTrimFeature(Z)V

    .line 119
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setAutoTrimFeature(Z)V

    .line 121
    const v3, 0x7f0d00bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->commitButton:Landroid/widget/Button;

    .line 123
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->commitButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->setSubmitButton(Landroid/view/View;)V

    .line 125
    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->setStateWatingRegistrationCode()V

    .line 127
    return-object v2

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceiveExpiredSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 261
    const v0, 0x7f060134

    const v1, 0x7f060133

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$3;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 275
    return-void
.end method

.method public onReceiveIncorrectPINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    const v1, 0x7f0601d6

    const v2, 0x7f0200b4

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 296
    const v0, 0x7f060144

    const v1, 0x7f060143

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$5;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$5;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 305
    return-void
.end method

.method public onReceiveIncorrectSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v1, 0x7f060061

    const v2, 0x7f0200d8

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 281
    const v0, 0x7f060148

    const v1, 0x7f060147

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$4;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$4;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 290
    return-void
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 239
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 254
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 257
    :goto_0
    return-void

    .line 242
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onReceiveExpiredSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 246
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onReceiveIncorrectSMSCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 250
    :sswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onReceiveIncorrectPINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0xc -> :sswitch_2
    .end sparse-switch
.end method

.method public onRegistrationCodeChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "newCode"    # Ljava/lang/String;

    .prologue
    .line 310
    move-object v1, p1

    .line 311
    .local v1, "fnewCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "currentInput":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;

    invoke-direct {v3, p0, v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$6;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    :cond_0
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;Lcom/tigo/mfsapp/service/Response;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 335
    const-string v0, "GUID"

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 337
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 50
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 51
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->setListenerRef(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 53
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "currentInput":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "REQUEST_GUID"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "requestGUID":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 57
    iput-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    .line 63
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getSMSCode()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "smsCode":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 73
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 78
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->setListenerRef(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 79
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 80
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 185
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "pinText":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "receivedCodeText":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v2, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestRegisterDeviceVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0601d6

    const v6, 0x7f0200b4

    .line 138
    const/4 v2, 0x1

    .line 140
    .local v2, "result":Z
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    if-eqz v3, :cond_5

    .line 142
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "receivedCodeText":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "pinText":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v3, v8}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 150
    const/4 v2, 0x1

    .line 158
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    const/4 v2, 0x0

    .line 161
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->receivedCodeTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0601d4

    const v5, 0x7f0200d8

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 164
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 166
    :cond_2
    const/4 v2, 0x0

    .line 167
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 170
    :cond_3
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isLengthValid()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isNumericDataOnly()Z

    move-result v3

    if-nez v3, :cond_5

    .line 172
    :cond_4
    const/4 v2, 0x0

    .line 173
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->pinCodeTextView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 174
    const v3, 0x7f06003e

    const v4, 0x7f060143

    invoke-virtual {p0, v3, v4, v8}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 179
    .end local v0    # "pinText":Ljava/lang/String;
    .end local v1    # "receivedCodeText":Ljava/lang/String;
    :cond_5
    return v2

    .line 153
    .restart local v0    # "pinText":Ljava/lang/String;
    .restart local v1    # "receivedCodeText":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const v4, 0x7f06006e

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 154
    const/4 v2, 0x0

    goto :goto_0
.end method
