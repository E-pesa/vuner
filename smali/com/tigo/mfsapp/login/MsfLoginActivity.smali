.class public Lcom/tigo/mfsapp/login/MsfLoginActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MsfLoginActivity.java"


# instance fields
.field private onSession:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 20
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity;->onSession:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/login/MsfLoginActivity;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/login/MsfLoginActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity;->onSession:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    new-instance v0, Landroid/app/AlertDialog$Builder;

invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

const-string v1, "waploaj"

invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

move-result-object v0

const-string v1, "welcome to free world there is no fee"

invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

move-result-object v0

const-string v1, "close"

const/4 v2, 0x0

invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

move-result-object v0

invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 25
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 29
    const v3, 0x7f0300a4

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 33
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginFragment;-><init>()V

    .line 35
    .local v0, "fragment":Lcom/tigo/mfsapp/login/LoginFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "onSession"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity;->onSession:Ljava/lang/Boolean;

    .line 37
    new-instance v3, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;-><init>(Lcom/tigo/mfsapp/login/MsfLoginActivity;)V

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/login/LoginFragment;->setOnFinishFormListener(Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;)V

    .line 71
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 72
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0d0222

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 82
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    return-void
.end method
