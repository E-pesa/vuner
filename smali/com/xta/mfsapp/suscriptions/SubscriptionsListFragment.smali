.class public Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SubscriptionsListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final arr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Subscription;",
            ">;"
        }
    .end annotation
.end field

.field private list:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->arr:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Subscription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Subscription;>;"
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->arr:Ljava/util/ArrayList;

    .line 37
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v3, 0x7f0300c2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f0d029f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->list:Landroid/widget/ListView;

    .line 51
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->arr:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 53
    new-instance v0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;

    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->arr:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 54
    .local v0, "adapter":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->list:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    .end local v0    # "adapter":Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;
    :goto_0
    return-object v2

    .line 58
    :cond_0
    const v3, 0x7f0d029e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, "info":Landroid/widget/TextView;
    const v3, 0x7f0602d0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Subscription;

    .line 71
    .local v0, "item":Lcom/tigo/mfsapp/model/Subscription;
    new-instance v1, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;

    invoke-direct {v1, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;-><init>(Lcom/tigo/mfsapp/model/Subscription;)V

    .line 82
    .local v1, "subs":Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 84
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 99
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 94
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method
