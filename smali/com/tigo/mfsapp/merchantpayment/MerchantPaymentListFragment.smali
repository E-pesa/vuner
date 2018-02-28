.class public Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MerchantPaymentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

.field final handler:Landroid/os/Handler;

.field private listView:Landroid/widget/ListView;

.field private mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

.field operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Landroid/view/View;

.field t:Ljava/util/Timer;

.field private thereWasAnError:Z

.field timerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->handler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->t:Ljava/util/Timer;

    .line 71
    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;Lcom/tigo/mfsapp/model/MerchantPaymet;)Lcom/tigo/mfsapp/model/MerchantPaymet;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/MerchantPaymet;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->selectItem()V

    return-void
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->submit()V

    return-void
.end method

.method private appendOperations(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/MerchantPaymet;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/MerchantPaymet;

    .line 171
    .local v0, "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    iget-object v2, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 173
    .end local v0    # "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    :cond_1
    return-void
.end method

.method private doListRequest()V
    .locals 6

    .prologue
    .line 227
    new-instance v0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;-><init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->timerTask:Ljava/util/TimerTask;

    .line 242
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getRefreshTimeCashOut()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/model/Parameters;->setRefreshTimeCashOut(I)V

    .line 247
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->t:Ljava/util/Timer;

    .line 248
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->t:Ljava/util/Timer;

    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->timerTask:Ljava/util/TimerTask;

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

    .line 250
    return-void
.end method

.method private selectItem()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->submit()V

    .line 86
    return-void
.end method

.method private stopRequest()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->t:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 205
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->thereWasAnError:Z

    .line 207
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 197
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 198
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->thereWasAnError:Z

    .line 200
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const v0, 0x7f060188

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 212
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 213
    iget-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->closeAndGoHome()V

    .line 215
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 105
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 112
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->submit()V

    .line 64
    :cond_0
    new-instance v0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->setOperations(Ljava/util/ArrayList;)V

    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;-><init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v1, 0x7f03006e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0193

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->listView:Landroid/widget/ListView;

    .line 48
    const v1, 0x7f0d0194

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->progressView:Landroid/view/View;

    .line 50
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 132
    instance-of v3, p2, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;

    if-eqz v3, :cond_1

    move-object v2, p2

    .line 134
    check-cast v2, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;

    .line 138
    .local v2, "listresponse":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;->getTransactionList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->appendOperations(Ljava/util/ArrayList;)V

    .line 139
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->hideProgressDialog()V

    .line 140
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->beginUpdate()V

    .line 141
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->notifyDataSetChanged()V

    .line 142
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->adapter:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->endUpdate()V

    .line 161
    .end local v2    # "listresponse":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;
    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    :goto_0
    return-void

    .line 143
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_1
    instance-of v3, p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    if-eqz v3, :cond_0

    .line 147
    check-cast p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/CashoutFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 148
    .local v0, "fee":F
    new-instance v1, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;-><init>()V

    .line 149
    .local v1, "fragment":Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setTransaction(Lcom/tigo/mfsapp/model/MerchantPaymet;)V

    .line 150
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getAmount()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setAmount(Ljava/lang/Float;)V

    .line 151
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setMSISDN(Ljava/lang/String;)V

    .line 152
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setTigoName(Ljava/lang/String;)V

    .line 153
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setFee(Ljava/lang/Float;)V

    .line 154
    const v3, 0x7f0602b4

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setTextTitle(I)V

    .line 155
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 156
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 92
    invoke-direct {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->doListRequest()V

    .line 93
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 221
    invoke-direct {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->stopRequest()V

    .line 222
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 117
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    if-nez v1, :cond_0

    .line 121
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestMerchantPaymentList(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->mp:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getAmount()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestCashoutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method
