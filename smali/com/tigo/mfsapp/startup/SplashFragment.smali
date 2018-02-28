.class public Lcom/tigo/mfsapp/startup/SplashFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SplashFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;


# static fields
.field public static final REQUEST_CODE_REGISTER:I = 0x1

.field public static final REQUEST_CODE_SELECT_BANNER:I = 0x3

.field public static final REQUEST_CODE_SELECT_LANGUAGE:I = 0x2


# instance fields
.field private parametersObtained:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/startup/SplashFragment;->parametersObtained:Z

    return-void
.end method

.method private getPhoneNumber()V
    .locals 3

    .prologue
    .line 331
    new-instance v0, Lcom/tigo/mfsapp/utils/ConnectionUtil;

    invoke-direct {v0}, Lcom/tigo/mfsapp/utils/ConnectionUtil;-><init>()V

    .line 332
    .local v0, "conn":Lcom/tigo/mfsapp/utils/ConnectionUtil;
    const-string v1, "http://test.tigocloud.net/app/msisdn.php"

    new-instance v2, Lcom/tigo/mfsapp/startup/SplashFragment$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/startup/SplashFragment$3;-><init>(Lcom/tigo/mfsapp/startup/SplashFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/ConnectionUtil;->get(Ljava/lang/String;Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;)V

    .line 381
    return-void
.end method

.method private isDeviceRegistered()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->getRegisteredDevice(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isLanguageSpecified()Z
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 226
    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->setApplicationLanguage(Ljava/lang/String;)V

    .line 228
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private selectLanguage()V
    .locals 3

    .prologue
    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/language/MfsSelectLanguageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/tigo/mfsapp/startup/SplashFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 201
    return-void
.end method

.method private showBanner(I)V
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "BANNER_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/tigo/mfsapp/startup/SplashFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 208
    return-void
.end method

.method private showBannersAndLoginOrRegistration()V
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isRegisterDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->isDeviceRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->waitingForRegistrationCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getRegister()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showBanner(I)V

    .line 149
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showRegisterDevice()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusels;->getLogin()Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 139
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showBanner(I)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showLogin()V

    goto :goto_0
.end method

.method private showLogin()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginManager;-><init>()V

    .line 156
    .local v0, "loginManager":Lcom/tigo/mfsapp/login/LoginManager;
    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/login/LoginManager;->setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V

    .line 157
    new-instance v1, Lcom/tigo/mfsapp/startup/SplashFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/startup/SplashFragment$2;-><init>(Lcom/tigo/mfsapp/startup/SplashFragment;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnLoginManagerListener(Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 173
    return-void
.end method

.method private showRegisterDevice()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/startup/SplashFragment;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 195
    return-void
.end method

.method private waitingForRegistrationCode()Z
    .locals 3

    .prologue
    .line 177
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WAITING_REGISTRATION_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public changedPinDialog()V
    .locals 1

    .prologue
    .line 316
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isRegisterDeviceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->isDeviceRegistered()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->waitingForRegistrationCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showRegisterDevice()V

    .line 325
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showLogin()V

    goto :goto_0
.end method

.method public hideProgressDialog()V
    .locals 0

    .prologue
    .line 245
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 60
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    .line 250
    if-ne p1, v3, :cond_2

    .line 252
    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showBannersAndLoginOrRegistration()V

    .line 256
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getPhoneNumber()V

    .line 266
    const-string v2, "Language selected"

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const-string v2, "Language NOT selected"

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 274
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 278
    const/4 v2, 0x1

    if-ne p2, v2, :cond_5

    .line 280
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isRegisterDeviceEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->isDeviceRegistered()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->waitingForRegistrationCode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 282
    :cond_3
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showRegisterDevice()V

    goto :goto_0

    .line 287
    :cond_4
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showLogin()V

    goto :goto_0

    .line 293
    :cond_5
    if-ne p2, v3, :cond_6

    .line 295
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SelfRegistrationParams;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 299
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 301
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 306
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->submit()V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 65
    const v0, 0x7f0300c1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 78
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "localVersion":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getMinAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "externalVersion":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/utils/CompareAppVersions;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 84
    const v2, 0x7f06003e

    const v3, 0x7f0600ec

    new-instance v4, Lcom/tigo/mfsapp/startup/SplashFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/startup/SplashFragment$1;-><init>(Lcom/tigo/mfsapp/startup/SplashFragment;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/tigo/mfsapp/startup/SplashFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    instance-of v2, p2, Lcom/tigo/mfsapp/service/ParametersResponse;

    if-eqz v2, :cond_0

    .line 96
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->cleanMenuMap()V

    .line 98
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->isLanguageSpecified()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 99
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->showBannersAndLoginOrRegistration()V

    goto :goto_0

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/tigo/mfsapp/startup/SplashFragment;->selectLanguage()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/Connection;->requestParameters()V

    .line 72
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method
