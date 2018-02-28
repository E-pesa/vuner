.class public Lcom/tigo/mfsapp/login/LoginManager;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;
    }
.end annotation


# instance fields
.field private onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

.field private onSession:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/login/LoginManager;->onSession:Ljava/lang/Boolean;

    .line 21
    return-void
.end method


# virtual methods
.method public getOnLoginManagerListener()Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 65
    return-void
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public manageLogin()V
    .locals 3

    .prologue
    .line 35
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/login/MsfLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "onSession"

    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginManager;->onSession:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->startActivityForResult(Landroid/content/Intent;I)V

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setAutoShowProgressDialog(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->submit()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->manageLogin()V

    .line 31
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;->onFinishProcess()V

    .line 122
    :cond_0
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 77
    instance-of v2, p2, Lcom/tigo/mfsapp/service/AuthenticateResponse;

    if-eqz v2, :cond_1

    move-object v0, p2

    .line 79
    check-cast v0, Lcom/tigo/mfsapp/service/AuthenticateResponse;

    .line 80
    .local v0, "autheticateResponse":Lcom/tigo/mfsapp/service/AuthenticateResponse;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/AuthenticateResponse;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/app/MfsApp;->setSessionToken(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginManager;->onSession:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->closeAndGoHome()V

    .line 86
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/LoginManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    invoke-interface {v2}, Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;->onFinishProcess()V

    .line 94
    .end local v0    # "autheticateResponse":Lcom/tigo/mfsapp/service/AuthenticateResponse;
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 70
    invoke-virtual {p1, p0}, Lcom/tigo/mfsapp/service/Connection;->setConnectionListener(Lcom/tigo/mfsapp/service/Connection$ConnectionListener;)V

    .line 71
    const-string v0, ""

    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestAuthenticate(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public setOnLoginManagerListener(Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;)V
    .locals 0
    .param p1, "onLoginManagerListener"    # Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginManager;->onLoginManagerListener:Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;

    .line 53
    return-void
.end method

.method public setOnSession(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "onSession"    # Ljava/lang/Boolean;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginManager;->onSession:Ljava/lang/Boolean;

    .line 111
    return-void
.end method
