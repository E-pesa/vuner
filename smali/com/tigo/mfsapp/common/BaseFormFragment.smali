.class public abstract Lcom/tigo/mfsapp/common/BaseFormFragment;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "BaseFormFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/service/Connection$ConnectionListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingVouchersListener;,
        Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationPendingTransactionsListener;,
        Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationMerchantPaymentListener;,
        Lcom/tigo/mfsapp/common/BaseFormFragment$NotificationTransactionsListener;,
        Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;,
        Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;
    }
.end annotation


# static fields
.field private static final DLG_CHANGE_PIN:Ljava/lang/String; = "DLG_CHANGE_PIN"

.field protected static final PACKAGE_NAME_HN:Ljava/lang/String; = "hn.tigo.mfsapp"

.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"


# instance fields
.field private autoShowProgressDialog:Z

.field private balanceListener:Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;

.field private final connection:Lcom/tigo/mfsapp/service/Connection;

.field private invalidSessionFlag:Z

.field private onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

.field private onFormFinishListener:Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;

.field protected retrySubmit:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    .line 47
    new-instance v0, Lcom/tigo/mfsapp/service/Connection;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/Connection;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    .line 50
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->retrySubmit:Ljava/lang/Boolean;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->autoShowProgressDialog:Z

    .line 54
    iput-boolean v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->invalidSessionFlag:Z

    .line 734
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/common/BaseFormFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->autoShowProgressDialog:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->doRelogin()V

    return-void
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/common/BaseFormFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->invalidSessionFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/common/BaseFormFragment;)Lcom/tigo/mfsapp/service/Connection;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/common/BaseFormFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    return-object v0
.end method

.method private doRelogin()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 501
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showProgressDialog()V

    .line 502
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->setAutoShowProgressDialog(Z)V

    .line 503
    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Connection;->cancel()V

    .line 504
    new-instance v0, Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginManager;-><init>()V

    .line 505
    .local v0, "loginManager":Lcom/tigo/mfsapp/login/LoginManager;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnSession(Ljava/lang/Boolean;)V

    .line 506
    new-instance v1, Lcom/tigo/mfsapp/common/BaseFormFragment$7;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$7;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnLoginManagerListener(Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;)V

    .line 527
    iget-boolean v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->invalidSessionFlag:Z

    if-nez v1, :cond_0

    .line 529
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 530
    iput-boolean v3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->invalidSessionFlag:Z

    .line 533
    :cond_0
    return-void
.end method


# virtual methods
.method public closeAndGoHome()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/Connection;->cancel()V

    .line 779
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->closeAndGoHome()V

    .line 780
    return-void
.end method

.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 387
    move-object v1, p1

    .line 388
    .local v1, "fconnection":Lcom/tigo/mfsapp/service/Connection;
    move-object v2, p2

    .line 389
    .local v2, "frequest":Lcom/tigo/mfsapp/service/Request;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 390
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 391
    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$4;

    invoke-direct {v3, p0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment$4;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    :cond_0
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 81
    move-object v0, p1

    .line 82
    .local v0, "fconnection":Lcom/tigo/mfsapp/service/Connection;
    move-object v1, p2

    .line 83
    .local v1, "fresponse":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment$1;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;Lcom/tigo/mfsapp/service/Response;Lcom/tigo/mfsapp/service/Connection;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method protected finishForm()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->finishForm(Landroid/os/Bundle;)V

    .line 450
    return-void
.end method

.method protected finishForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outData"    # Landroid/os/Bundle;

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onFormFinishListener:Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onFormFinishListener:Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;

    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;->onFormFinish(Landroid/os/Bundle;)V

    .line 445
    :cond_0
    return-void
.end method

.method public declared-synchronized getBalanceListener()Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;
    .locals 1

    .prologue
    .line 767
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->balanceListener:Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOnChangePinDialogListener()Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    return-object v0
.end method

.method public abstract initForm(Landroid/os/Bundle;)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 418
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 419
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Connection;->setCanceled(Z)V

    .line 421
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 755
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 756
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->balanceListener:Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->balanceListener:Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;->onFinishChangeFragment()V

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Connection;->setCanceled(Z)V

    .line 762
    iput-boolean v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->invalidSessionFlag:Z

    .line 763
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->validateAmdSubmit()V

    .line 432
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 411
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 412
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/service/Connection;->setConnectionListener(Lcom/tigo/mfsapp/service/Connection$ConnectionListener;)V

    .line 413
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 742
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onDetach()V

    .line 743
    return-void
.end method

.method public onInvalidCredentialsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "fconnection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "fresponse"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 661
    const v0, 0x7f060176

    .line 662
    .local v0, "text":I
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$12;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$12;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 670
    return-void
.end method

.method public onReceiveBarredUserError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 581
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, "callNumber":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getServiceNumberWithAsterisk()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 583
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getServiceNumberWithAsterisk()Ljava/lang/String;

    move-result-object v0

    .line 586
    :cond_0
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f060156

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$9;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$9;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 603
    return-void
.end method

.method protected onReceiveCustomError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "fconnection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "fresponse"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 323
    move-object v0, p2

    check-cast v0, Lcom/tigo/mfsapp/service/JsonResponse;

    .line 324
    .local v0, "jresponse":Lcom/tigo/mfsapp/service/JsonResponse;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/JsonResponse;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/JsonResponse;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    sget-object v3, Lcom/tigo/mfsapp/service/JsonResponse;->CUSTOM_ERROR_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "tx":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 331
    :cond_0
    const v2, 0x7f060137

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    :cond_1
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$2;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v2, v1, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 343
    .end local v1    # "tx":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onReceiveError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;II)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;
    .param p3, "title"    # I
    .param p4, "text"    # I

    .prologue
    .line 472
    new-instance v0, Lcom/tigo/mfsapp/common/BaseFormFragment$5;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$5;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, p3, p4, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 480
    return-void
.end method

.method public onReceiveForceChangePINCodeError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 607
    new-instance v1, Lcom/tigo/mfsapp/common/BaseFormFragment$10;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$10;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    .line 631
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 633
    .local v0, "currentapiVersion":I
    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    .line 635
    const/4 v4, 0x0

    const v5, 0x7f0b0085

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/DialogFragment;->setStyle(II)V

    .line 638
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const-string v5, "DLG_CHANGE_PIN"

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 640
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    const v5, 0x7f060109

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setTitle(I)V

    .line 641
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    new-instance v5, Lcom/tigo/mfsapp/common/BaseFormFragment$11;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$11;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 650
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 651
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 652
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 654
    const/4 v4, -0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 655
    const/4 v4, -0x2

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 656
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 657
    return-void
.end method

.method public onReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 687
    const v0, 0x7f060137

    .line 688
    .local v0, "mess":I
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Request;->getResponse()Lcom/tigo/mfsapp/service/Response;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Request;->getResponse()Lcom/tigo/mfsapp/service/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 689
    const v0, 0x7f0602f5

    .line 692
    :cond_0
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/common/BaseFormFragment$14;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$14;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 700
    return-void
.end method

.method public onReceiveInvalidSessionTokenError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 486
    const v0, 0x7f06003e

    const v1, 0x7f0602bc

    new-instance v2, Lcom/tigo/mfsapp/common/BaseFormFragment$6;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$6;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 497
    return-void
.end method

.method public onReceiveMaintenanceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 10
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 537
    instance-of v6, p2, Lcom/tigo/mfsapp/service/JsonResponse;

    if-eqz v6, :cond_1

    move-object v3, p2

    .line 539
    check-cast v3, Lcom/tigo/mfsapp/service/JsonResponse;

    .line 543
    .local v3, "jsonresponse":Lcom/tigo/mfsapp/service/JsonResponse;
    :try_start_0
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/JsonResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ErrorData"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 545
    .local v0, "data":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 547
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "Message"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 548
    .local v5, "message":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 550
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 551
    .local v4, "language":Lorg/json/JSONObject;
    const-string v6, "Language"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "language"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    const-string v6, "Message"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 558
    .end local v4    # "language":Lorg/json/JSONObject;
    :cond_0
    const v6, 0x7f06003e

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/tigo/mfsapp/common/BaseFormFragment$8;

    invoke-direct {v7, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$8;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v6, v5, v7}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "jsonresponse":Lcom/tigo/mfsapp/service/JsonResponse;
    .end local v5    # "message":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 548
    .restart local v0    # "data":Lorg/json/JSONArray;
    .restart local v2    # "i":I
    .restart local v3    # "jsonresponse":Lcom/tigo/mfsapp/service/JsonResponse;
    .restart local v4    # "language":Lorg/json/JSONObject;
    .restart local v5    # "message":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "data":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "language":Lorg/json/JSONObject;
    .end local v5    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 674
    new-instance v0, Lcom/tigo/mfsapp/common/BaseFormFragment$13;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$13;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Landroid/view/View$OnClickListener;)V

    .line 682
    return-void
.end method

.method protected onReceiveUnregisteredDeviceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "fconnection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "fresponse"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 348
    const-string v0, ""

    .line 349
    .local v0, "text":Ljava/lang/String;
    const v1, 0x7f0602ba

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    const v1, 0x7f06003e

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/common/BaseFormFragment$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/BaseFormFragment$3;-><init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 382
    return-void
.end method

.method public abstract onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 748
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onStart()V

    .line 749
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Connection;->setCanceled(Z)V

    .line 750
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/Connection;->cancel()V

    .line 75
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFragment;->onStop()V

    .line 76
    return-void
.end method

.method protected abstract onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
.end method

.method protected abstract onValidateData()Z
.end method

.method public setAutoShowProgressDialog(Z)V
    .locals 0
    .param p1, "autoShow"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->autoShowProgressDialog:Z

    .line 69
    return-void
.end method

.method public declared-synchronized setBalanceListener(Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;)V
    .locals 1
    .param p1, "balanceListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;

    .prologue
    .line 772
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->balanceListener:Lcom/tigo/mfsapp/common/BaseFormFragment$FragmentBalanceListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V
    .locals 0
    .param p1, "onChangePinDialogListener"    # Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onChangePinDialogListener:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    .line 785
    return-void
.end method

.method public setOnFinishFormListener(Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;)V
    .locals 0
    .param p1, "onFormFinishListener"    # Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->onFormFinishListener:Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;

    .line 437
    return-void
.end method

.method public setSubmitButton(Landroid/view/View;)V
    .locals 0
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 425
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    return-void
.end method

.method protected final submit()V
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->autoShowProgressDialog:Z

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->showProgressDialog()V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment;->connection:Lcom/tigo/mfsapp/service/Connection;

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSubmit(Lcom/tigo/mfsapp/service/Connection;)V

    .line 468
    return-void
.end method

.method protected final validateAmdSubmit()V
    .locals 1

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->submit()V

    .line 458
    :cond_0
    return-void
.end method
