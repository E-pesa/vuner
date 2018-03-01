.class public Lcom/tigo/mfsapp/logs/ActivityLogFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ActivityLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

.field private currentPage:I

.field private listView:Landroid/widget/ListView;

.field private pincode:Ljava/lang/String;

.field private progressView:Landroid/view/View;

.field private thereWasAnError:Z

.field transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 77
    return-void
.end method

.method static synthetic access$008(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    .prologue
    .line 23
    iget v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->submit()V

    return-void
.end method

.method private appendTransactions(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ActivityLogInfo;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    .line 133
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/ActivityLogInfo;

    .line 135
    .local v0, "info":Lcom/tigo/mfsapp/model/ActivityLogInfo;
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "info":Lcom/tigo/mfsapp/model/ActivityLogInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 171
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->thereWasAnError:Z

    .line 173
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 164
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->thereWasAnError:Z

    .line 166
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const v0, 0x7f060056

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 179
    iget-boolean v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->closeAndGoHome()V

    .line 181
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 103
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->pincode:Ljava/lang/String;

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    .line 58
    const/4 v1, 0x0

    iput v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->currentPage:I

    .line 59
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->submit()V

    .line 62
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030017

    const v4, 0x7f0d0054

    iget-object v5, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->transactions:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    new-instance v2, Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;-><init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->setOnGetViewListener(Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;)V

    .line 73
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;-><init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 75
    return-void

    .line 53
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->pincode:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    const v1, 0x7f03005b

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0140

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->listView:Landroid/widget/ListView;

    .line 39
    const v1, 0x7f0d0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->progressView:Landroid/view/View;

    .line 40
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 115
    instance-of v1, p2, Lcom/tigo/mfsapp/service/ActivityLogResponse;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 117
    check-cast v0, Lcom/tigo/mfsapp/service/ActivityLogResponse;

    .line 118
    .local v0, "activityLogResponse":Lcom/tigo/mfsapp/service/ActivityLogResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/ActivityLogResponse;->isLastPage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->setOnGetViewListener(Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;)V

    .line 120
    :cond_0
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/ActivityLogResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->appendTransactions(Ljava/util/ArrayList;)V

    .line 121
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->hideProgressDialog()V

    .line 122
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->beginUpdate()V

    .line 123
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->notifyDataSetChanged()V

    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->adapter:Lcom/tigo/mfsapp/logs/ActivityLogAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/logs/ActivityLogAdapter;->endUpdate()V

    .line 127
    .end local v0    # "activityLogResponse":Lcom/tigo/mfsapp/service/ActivityLogResponse;
    :cond_1
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 108
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->pincode:Ljava/lang/String;

    iget v2, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->currentPage:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestActivityLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public setTransactions(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p2, "pincode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ActivityLogInfo;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->currentPage:I

    .line 149
    iput-object p2, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->pincode:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->appendTransactions(Ljava/util/ArrayList;)V

    .line 151
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    return-void
.end method
