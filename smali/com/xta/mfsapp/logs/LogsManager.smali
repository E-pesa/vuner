.class public Lcom/tigo/mfsapp/logs/LogsManager;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "LogsManager.java"


# static fields
.field private static final DIALOG_PINCODE:Ljava/lang/String; = "DIALOG_PINCODE"

.field private static final REQUEST_CODE_PIN:I = 0x1


# instance fields
.field private pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    return-void
.end method

.method private showLogsFragment(ILjava/lang/String;)V
    .locals 3
    .param p1, "activeTab"    # I
    .param p2, "pincode"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v1, Lcom/tigo/mfsapp/logs/LogsFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/logs/LogsFragment;-><init>()V

    .line 74
    .local v1, "fragment":Lcom/tigo/mfsapp/logs/LogsFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "ARG_PINCODE"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v2, "ACTIVE_TAB"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/logs/LogsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/logs/LogsManager;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 79
    return-void
.end method


# virtual methods
.method public getActiveTab()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "Activity_Log"

    return-object v0
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 28
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsManager;->getActiveTab()I

    move-result v1

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/tigo/mfsapp/logs/LogsManager;->showLogsFragment(ILjava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_PINCODE"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 32
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 40
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 44
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/LogsManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_PINCODE"

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 64
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsManager;->getActiveTab()I

    move-result v0

    const-string v1, "PINCODE"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/tigo/mfsapp/logs/LogsManager;->showLogsFragment(ILjava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method
