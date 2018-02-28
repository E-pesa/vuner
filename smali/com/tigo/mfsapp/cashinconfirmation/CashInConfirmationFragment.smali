.class public Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "CashInConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

.field final handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private noElementsView:Landroid/widget/TextView;

.field operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Landroid/view/View;

.field t:Ljava/util/Timer;

.field private thereWasAnError:Z

.field timerTask:Ljava/util/TimerTask;

.field private transaction:Lcom/tigo/mfsapp/model/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->handler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->t:Ljava/util/Timer;

    .line 73
    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;Lcom/tigo/mfsapp/model/Transaction;)Lcom/tigo/mfsapp/model/Transaction;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/Transaction;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->selectItem()V

    return-void
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->submit()V

    return-void
.end method

.method private appendOperations(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Transaction;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Transaction;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Transaction;

    .line 187
    .local v0, "cashout":Lcom/tigo/mfsapp/model/Transaction;
    iget-object v2, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v0    # "cashout":Lcom/tigo/mfsapp/model/Transaction;
    :cond_1
    return-void
.end method

.method private doListRequest()V
    .locals 6

    .prologue
    .line 243
    new-instance v0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;-><init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->timerTask:Ljava/util/TimerTask;

    .line 258
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getRefreshTimeCashOut()I

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setRefreshTimeCashOut(I)V

    .line 263
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->t:Ljava/util/Timer;

    .line 264
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->timerTask:Ljava/util/TimerTask;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getRefreshTimeCashOut()I

    move-result v2

    int-to-long v2, v2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getRefreshTimeCashOut()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 266
    return-void
.end method

.method private selectItem()V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->submit()V

    .line 88
    return-void
.end method

.method private stopRequest()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->t:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 277
    :cond_0
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 221
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->thereWasAnError:Z

    .line 223
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 214
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->thereWasAnError:Z

    .line 216
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f0600fd

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 229
    iget-boolean v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->closeAndGoHome()V

    .line 231
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 114
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->submit()V

    .line 66
    :cond_0
    new-instance v0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;->setOperations(Ljava/util/ArrayList;)V

    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;-><init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

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
    .line 48
    const v1, 0x7f030060

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->listView:Landroid/widget/ListView;

    .line 50
    const v1, 0x7f0d0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->progressView:Landroid/view/View;

    .line 51
    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->noElementsView:Landroid/widget/TextView;

    .line 52
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 134
    instance-of v3, p2, Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 136
    check-cast v2, Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;

    .line 140
    .local v2, "listresponse":Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->hideProgressDialog()V

    .line 141
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 145
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 147
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->appendOperations(Ljava/util/ArrayList;)V

    .line 149
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->adapter:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;->notifyDataSetChanged()V

    .line 177
    .end local v2    # "listresponse":Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;
    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v2    # "listresponse":Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 159
    .end local v2    # "listresponse":Lcom/tigo/mfsapp/service/CashInConfirmationListResponse;
    :cond_2
    instance-of v3, p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    if-eqz v3, :cond_0

    .line 161
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    if-eqz v3, :cond_0

    .line 163
    check-cast p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/CashoutFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 164
    .local v0, "fee":F
    new-instance v1, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;-><init>()V

    .line 165
    .local v1, "fragment":Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setTransaction(Lcom/tigo/mfsapp/model/Transaction;)V

    .line 166
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Transaction;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setAmount(Ljava/lang/Float;)V

    .line 167
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Transaction;->getAgentCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setMSISDN(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Transaction;->getAgentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setTigoName(Ljava/lang/String;)V

    .line 169
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setFee(Ljava/lang/Float;)V

    .line 170
    const v3, 0x7f0602b3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->setTextTitle(I)V

    .line 171
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 172
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 94
    invoke-direct {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->doListRequest()V

    .line 95
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 237
    invoke-direct {p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->stopRequest()V

    .line 238
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 119
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestCashInConfirmationList(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Transaction;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Transaction;->getAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestCashoutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method
