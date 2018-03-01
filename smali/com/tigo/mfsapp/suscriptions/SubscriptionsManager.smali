.class public Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SubscriptionsManager.java"


# instance fields
.field private shoulShowSelectionList:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->shoulShowSelectionList:Z

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 33
    return-void
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->submit()V

    .line 26
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    instance-of v5, p2, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;

    if-eqz v5, :cond_0

    move-object v1, p2

    .line 55
    check-cast v1, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;

    .line 57
    .local v1, "resp":Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;->getSubscriptions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v3, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->shoulShowSelectionList:Z

    .line 59
    iget-boolean v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->shoulShowSelectionList:Z

    if-eqz v3, :cond_2

    .line 61
    new-instance v0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;->getSubscriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;-><init>(Ljava/util/ArrayList;)V

    .line 68
    .local v0, "list":Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->closeAndGoHome()V

    .line 69
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 114
    .end local v0    # "list":Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;
    .end local v1    # "resp":Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;
    :cond_0
    :goto_1
    return-void

    .restart local v1    # "resp":Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;
    :cond_1
    move v3, v4

    .line 57
    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;->getSubscriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 73
    new-instance v2, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsGetSubscriptionsResponse;->getSubscriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/Subscription;

    invoke-direct {v2, v3}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;-><init>(Lcom/tigo/mfsapp/model/Subscription;)V

    .line 84
    .local v2, "subs":Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->closeAndGoHome()V

    .line 85
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_1

    .line 90
    .end local v2    # "subs":Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;
    :cond_3
    const v3, 0x7f0602d1

    const v4, 0x7f0602d0

    new-instance v5, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;-><init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto :goto_1
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 44
    invoke-virtual {p1, p0}, Lcom/tigo/mfsapp/service/Connection;->setConnectionListener(Lcom/tigo/mfsapp/service/Connection$ConnectionListener;)V

    .line 45
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestSubscriptionsList(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method
