.class public Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "PendingVouchersListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

.field private listView:Landroid/widget/ListView;

.field private noElementsView:Landroid/widget/TextView;

.field pendingVouchers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Landroid/view/View;

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    return-object v0
.end method

.method private appendPendingVouchers(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingVouchers;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/PendingVouchers;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/PendingVouchers;

    .line 188
    .local v0, "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 190
    .end local v0    # "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    :cond_1
    return-void
.end method


# virtual methods
.method protected ShowVoucherDetails(Lcom/tigo/mfsapp/model/PendingVouchers;)V
    .locals 4
    .param p1, "voucher"    # Lcom/tigo/mfsapp/model/PendingVouchers;

    .prologue
    .line 85
    new-instance v1, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;-><init>()V

    .line 86
    .local v1, "fragment":Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "voucherString":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "PARAM_VOUCHER"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 90
    new-instance v3, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;-><init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)V

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->setOnVoucherDetailListener(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 100
    return-void
.end method

.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->thereWasAnError:Z

    .line 224
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 214
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 215
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->thereWasAnError:Z

    .line 217
    :cond_0
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    const-string v0, "Commission_Statement"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const v0, 0x7f0601d1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 230
    iget-boolean v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->closeAndGoHome()V

    .line 232
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 138
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->noElementsView:Landroid/widget/TextView;

    const v1, 0x7f0601cc

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    .line 66
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->pendingVouchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->setOperations(Ljava/util/ArrayList;)V

    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;-><init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->listView:Landroid/widget/ListView;

    .line 44
    const v1, 0x7f0d01b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->progressView:Landroid/view/View;

    .line 45
    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->noElementsView:Landroid/widget/TextView;

    .line 47
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->submit()V

    .line 49
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 152
    instance-of v1, p2, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 154
    check-cast v0, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;

    .line 156
    .local v0, "listresponse":Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->hideProgressDialog()V

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->getPendingVouchersList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->getPendingVouchersList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 164
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PendingVouchersListResponse;->getPendingVouchersList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->appendPendingVouchers(Ljava/util/ArrayList;)V

    .line 166
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->adapter:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->notifyDataSetChanged()V

    .line 177
    .end local v0    # "listresponse":Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v0    # "listresponse":Lcom/tigo/mfsapp/service/PendingVouchersListResponse;
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 119
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 239
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 143
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "token":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestPendingVouchersList(Ljava/lang/String;I)V

    .line 147
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method protected refreshList()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    return v0
.end method
