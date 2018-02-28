.class public Lcom/tigo/mfsapp/common/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"


# static fields
.field private static final DIALOG_PROGRESS:Ljava/lang/String; = "DIALOG_PROGRESS"


# instance fields
.field private okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

.field private progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

.field private yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private hideYesNoDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setYesNoListener(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 204
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->dismiss()V

    .line 205
    iput-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public closeAndGoHome()V
    .locals 5

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 211
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 213
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 214
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->updateBalance()V

    .line 217
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v3

    invoke-interface {v3}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    .line 218
    .local v2, "rootFragment":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 221
    .end local v1    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v2    # "rootFragment":I
    :cond_1
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->dismiss()V

    .line 197
    iput-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    .line 199
    :cond_0
    return-void
.end method

.method public declared-synchronized hideProgressDialog()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->dismissAllowingStateLoss()V

    .line 103
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_2
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    const-string v2, "ACTION_FRAGMENT_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "visible"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->visibleBalance()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 55
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    if-nez v2, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "DIALOG_PROGRESS"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    .line 61
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideProgressDialog()V

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 67
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 68
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 72
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->updateTitle()V

    .line 74
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getNameAnalyticsScreen()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getNameAnalyticsScreen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewVisit(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 325
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 326
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideProgressDialog()V

    .line 84
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 85
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 361
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 362
    return-void
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/tigo/mfsapp/main/MsfMainActivity;

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 311
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 307
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 308
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public replaceFragmentForResult(Landroid/support/v4/app/Fragment;I)V
    .locals 0
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "requestCode"    # I

    .prologue
    .line 314
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/Fragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 315
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 316
    return-void
.end method

.method public showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    .locals 2
    .param p1, "title"    # I
    .param p2, "text"    # I
    .param p3, "onOkListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "onOkListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->isDetached()Z

    move-result v2

    if-nez v2, :cond_2

    .line 109
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideOkDialog()V

    .line 113
    :cond_0
    new-instance v2, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .local v0, "currentapiVersion":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    const/4 v3, 0x0

    const v4, 0x7f0b0085

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setStyle(II)V

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v2, p1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 122
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v2, p2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setText(Ljava/lang/String;)V

    .line 123
    if-eqz p3, :cond_3

    .line 124
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v2, p3}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    .line 137
    .end local v0    # "currentapiVersion":I
    :cond_2
    return-object v1

    .line 126
    .restart local v0    # "currentapiVersion":I
    :cond_3
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFragment;->okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFragment$1;-><init>(Lcom/tigo/mfsapp/common/BaseFragment;)V

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public showOkDialog(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onOkListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 145
    const v0, 0x7f060041

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060137

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 146
    return-void
.end method

.method public declared-synchronized showProgressDialog()V
    .locals 3

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideProgressDialog()V

    .line 92
    :cond_0
    new-instance v0, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFragment;->progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "DIALOG_PROGRESS"

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showYesNoDialog(IIZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V
    .locals 2
    .param p1, "title"    # I
    .param p2, "text"    # I
    .param p3, "cancelWhite"    # Z
    .param p4, "onYesNoListener"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/tigo/mfsapp/common/BaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/tigo/mfsapp/common/BaseFragment;->showYesNoDialog(Ljava/lang/String;Ljava/lang/String;ZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 191
    return-void
.end method

.method public showYesNoDialog(Ljava/lang/String;Ljava/lang/String;ZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "cancelWhite"    # Z
    .param p4, "onYesNoListener"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    if-eqz v1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideYesNoDialog()V

    .line 153
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    .line 155
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 157
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setStyle(II)V

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setText(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setCancelWhite(Ljava/lang/Boolean;)V

    .line 164
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p4}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setYesNoListener(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 165
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public showYesNoDialog(Ljava/lang/String;Ljava/lang/String;ZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "cancelWhite"    # Z
    .param p4, "onYesNoListener"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;
    .param p5, "textNoButton"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    if-eqz v1, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->hideYesNoDialog()V

    .line 173
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    .line 175
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 177
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setStyle(II)V

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setText(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setCancelWhite(Ljava/lang/Boolean;)V

    .line 184
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p4}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setYesNoListener(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 185
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFragment;->yesNoDialog:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v1, p5}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->setTextNoButton(Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public tryAgaingNegativeClick()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public updateBalance()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d0249

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    .line 226
    .local v0, "fragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateBalance()V

    .line 228
    .end local v0    # "fragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    :cond_0
    return-void
.end method

.method public updateTitle()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Landroid/support/v7/app/ActionBarActivity;

    if-eqz v4, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 332
    .local v0, "bar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 333
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 334
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    const/16 v6, 0x11

    invoke-direct {v1, v4, v5, v6}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(III)V

    .line 338
    .local v1, "params":Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 339
    .local v3, "viewActionBar":Landroid/view/View;
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 340
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 341
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 342
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 349
    .end local v0    # "bar":Landroid/support/v7/app/ActionBar;
    .end local v1    # "params":Landroid/support/v7/app/ActionBar$LayoutParams;
    .end local v3    # "viewActionBar":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v0    # "bar":Landroid/support/v7/app/ActionBar;
    :cond_1
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 345
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 346
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    goto :goto_0
.end method

.method public validateEmail(ZLcom/tigo/mfsapp/components/BaseCustomEditText;)Z
    .locals 1
    .param p1, "optional"    # Z
    .param p2, "editor"    # Lcom/tigo/mfsapp/components/BaseCustomEditText;

    .prologue
    .line 235
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tigo/mfsapp/common/BaseFragment;->validateEmail(ZLjava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v0

    return v0
.end method

.method public validateEmail(ZLjava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z
    .locals 6
    .param p1, "optional"    # Z
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "editor"    # Lcom/tigo/mfsapp/components/BaseCustomEditText;

    .prologue
    const v5, 0x7f060140

    const v4, 0x7f060124

    const v3, 0x7f0200d8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    if-eqz p1, :cond_3

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 241
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v0

    .line 244
    :cond_1
    invoke-virtual {p3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-virtual {p3, v4, v3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setErrorConfiguration(II)V

    .line 248
    invoke-virtual {p3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 249
    const v0, 0x7f060142

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v5, v2}, Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    :cond_2
    move v0, v1

    .line 251
    goto :goto_0

    .line 255
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 256
    sget-object v2, Lcom/tigo/mfsapp/utils/validation/Validation;->EMAIL_REGEX:Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    invoke-virtual {p3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {p3, v4, v3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setErrorConfiguration(II)V

    .line 263
    invoke-virtual {p3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 264
    const v0, 0x7f060142

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v5, v2}, Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    :cond_4
    move v0, v1

    .line 266
    goto :goto_0

    :cond_5
    move v0, v1

    .line 268
    goto :goto_0
.end method

.method public validateMSISDN(Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z
    .locals 1
    .param p1, "editor"    # Lcom/tigo/mfsapp/components/BaseCustomEditText;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v0

    return v0
.end method

.method public validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z
    .locals 5
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "editor"    # Lcom/tigo/mfsapp/components/BaseCustomEditText;

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    .line 279
    .local v0, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    const-string v2, "YESICA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matches international: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getInternationalFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " national: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getNationalFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getInternationalFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 282
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getInternationalFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v1

    .line 287
    :cond_1
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getNationalFormat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 288
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getNationalFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    :cond_2
    const v1, 0x7f0601d4

    const v2, 0x7f0200d3

    invoke-virtual {p2, v1, v2}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setErrorConfiguration(II)V

    .line 295
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 296
    const v1, 0x7f060142

    const v2, 0x7f060141

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/common/BaseFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 299
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method
