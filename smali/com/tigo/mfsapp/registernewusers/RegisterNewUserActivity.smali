.class public Lcom/tigo/mfsapp/registernewusers/RegisterNewUserActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RegisterNewUserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0300ae

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUserActivity;->setContentView(I)V

    .line 15
    return-void
.end method
