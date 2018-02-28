.class public Lcom/tigo/mfsapp/common/ContactListFragment;
.super Lcom/tigo/mfsapp/common/FilterableListFragment;
.source "ContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;,
        Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

.field private onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/common/ContactListFragment;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/common/ContactListFragment;)Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->adapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    return-object v0
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 401
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->adapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f030040

    return v0
.end method

.method public getOnContactListListener()Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    return-object v0
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 434
    invoke-super {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->hideProgressDialog()V

    .line 435
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 85
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/FilterableListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/ContactListFragment;->setAutoShowProgressDialog(Z)V

    .line 59
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->showProgressDialog()V

    .line 60
    new-instance v1, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0d00f8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-direct {v1, p0, v2, v0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment;Landroid/widget/ListView;Landroid/widget/ListView;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->adapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .line 61
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->buildView()V

    .line 62
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$1;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment;)V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/ContactListFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-void
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 96
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 406
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 412
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public setOnContactListListener(Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;)V
    .locals 0
    .param p1, "onContactListListener"    # Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment;->onContactListListener:Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    .line 417
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 427
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/ContactListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    invoke-super {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->showProgressDialog()V

    .line 429
    return-void
.end method
