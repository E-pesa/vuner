.class public Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUserActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SelfRegisterNewUserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f0300b7

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUserActivity;->setContentView(I)V

    .line 19
    new-instance v0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;-><init>()V

    .line 20
    .local v0, "fragment":Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersFormFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 22
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 23
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0d024a

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 24
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 25
    return-void
.end method
