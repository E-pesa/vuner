.class public Lcom/tigo/mfsapp/login/LoginFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "LoginFragment.java"


# instance fields
.field private MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

.field private forgotPincodeView:Landroid/widget/TextView;

.field private inLogin:Z

.field private loginButton:Landroid/widget/Button;

.field private pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

.field private termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->inLogin:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/login/LoginFragment;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/login/LoginFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 310
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 315
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 316
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "Login_Authorization"

    return-object v0
.end method

.method public hideProgressDialog()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->inLogin:Z

    if-nez v0, :cond_0

    .line 247
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 249
    :cond_0
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 90
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 178
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "MSISDNSaved":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/PinCustomEditText;->requestFocus()Z

    .line 186
    :cond_1
    new-instance v1, Lcom/tigo/mfsapp/login/LoginFragment$3;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/login/LoginFragment$3;-><init>(Lcom/tigo/mfsapp/login/LoginFragment;)V

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/login/LoginFragment;->setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 96
    const v2, 0x7f0300a5

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 98
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0246

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->forgotPincodeView:Landroid/widget/TextView;

    .line 99
    const v2, 0x7f0d0244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 100
    const v2, 0x7f0d0245

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/PinCustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 101
    const v2, 0x7f0d0247

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    iput-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    .line 103
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setAutoTrimFeature(Z)V

    .line 105
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 106
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 108
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 109
    const v2, 0x7f0d011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->loginButton:Landroid/widget/Button;

    .line 111
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->loginButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/login/LoginFragment;->setSubmitButton(Landroid/view/View;)V

    .line 113
    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setVisibility(I)V

    .line 118
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowSecurityQuestion()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->forgotPincodeView:Landroid/widget/TextView;

    new-instance v3, Lcom/tigo/mfsapp/login/LoginFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/login/LoginFragment$1;-><init>(Lcom/tigo/mfsapp/login/LoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    :goto_0
    return-object v1

    .line 141
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->forgotPincodeView:Landroid/widget/TextView;

    new-instance v3, Lcom/tigo/mfsapp/login/LoginFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/login/LoginFragment$2;-><init>(Lcom/tigo/mfsapp/login/LoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onReceiveExceededLoginAttemptsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 292
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 293
    return-void
.end method

.method public onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 202
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 203
    return-void
.end method

.method public onReceiveInvalidCredentialsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 275
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 276
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v1, 0x7f0601d4

    const v2, 0x7f0200d3

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 277
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    const v1, 0x7f0601d6

    const v2, 0x7f0200b4

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 279
    const v0, 0x7f06013f

    const v1, 0x7f06013e

    new-instance v2, Lcom/tigo/mfsapp/login/LoginFragment$4;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/login/LoginFragment$4;-><init>(Lcom/tigo/mfsapp/login/LoginFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/login/LoginFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 288
    return-void
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/login/LoginFragment;->inLogin:Z

    .line 255
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 256
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 271
    :goto_0
    return-void

    .line 259
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/login/LoginFragment;->onReceiveInvalidCredentialsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/tigo/mfsapp/login/LoginFragment;->onReceiveExceededLoginAttemptsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onReceiveUnregisteredDeviceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "fconnection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "fresponse"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 322
    const-string v0, ""

    .line 323
    .local v0, "text":Ljava/lang/String;
    const v1, 0x7f0602ba

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/login/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 335
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/login/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/login/LoginFragment$5;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/login/LoginFragment$5;-><init>(Lcom/tigo/mfsapp/login/LoginFragment;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/tigo/mfsapp/login/LoginFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 353
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 229
    instance-of v1, p2, Lcom/tigo/mfsapp/service/AuthenticateResponse;

    if-eqz v1, :cond_0

    .line 231
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->cleanMenuMap()V

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->inLogin:Z

    move-object v0, p2

    .line 233
    check-cast v0, Lcom/tigo/mfsapp/service/AuthenticateResponse;

    .line 234
    .local v0, "autheticateResponse":Lcom/tigo/mfsapp/service/AuthenticateResponse;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/AuthenticateResponse;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/app/MfsApp;->setSessionToken(Ljava/lang/String;)V

    .line 235
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/AuthenticateResponse;->getRole()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setROLE(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginFragment;->finishForm()V

    .line 238
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 240
    .end local v0    # "autheticateResponse":Lcom/tigo/mfsapp/service/AuthenticateResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->inLogin:Z

    .line 215
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "guid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 218
    invoke-static {}, Lcom/tigo/mfsapp/utils/GUIDGen;->getNew()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setGUID(Ljava/lang/String;)V

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestAuthenticate(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected onValidateData()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0601d6

    const v3, 0x7f0200b4

    .line 53
    const/4 v0, 0x1

    .line 54
    .local v0, "result":Z
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 58
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v1, v5}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    .line 66
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->MSISDNView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/login/LoginFragment;->validateMSISDN(Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    const/4 v0, 0x0

    .line 70
    :cond_1
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v1, v4, v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 73
    const/4 v0, 0x0

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isLengthValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isNumericDataOnly()Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    :cond_3
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->pinCodeView:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v1, v4, v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 80
    const v1, 0x7f06003e

    const v2, 0x7f060143

    invoke-virtual {p0, v1, v2, v5}, Lcom/tigo/mfsapp/login/LoginFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 83
    :cond_4
    return v0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment;->termsCheckBox:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/login/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryAgaingNegativeClick()V
    .locals 1

    .prologue
    .line 303
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->tryAgaingNegativeClick()V

    .line 304
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 305
    return-void
.end method
