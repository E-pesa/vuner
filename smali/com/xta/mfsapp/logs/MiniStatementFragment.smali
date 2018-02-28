.class public Lcom/tigo/mfsapp/logs/MiniStatementFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MiniStatementFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;
    }
.end annotation


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"

.field public static final PARAM_DATE_FROM:Ljava/lang/String; = "PARAM_DATE_FROM"

.field public static final PARAM_DATE_TO:Ljava/lang/String; = "PARAM_DATE_TO"

.field public static final PARAM_TRANSACTION_PHONE:Ljava/lang/String; = "PARAM_TRANSACTION_PHONE   "

.field public static final PARAM_TRANSACTION_TYPE:Ljava/lang/String; = "PARAM_TRANSACTION_TYPE"

.field public static final PARAM_WALLET:Ljava/lang/String; = "PARAM_WALLET"


# instance fields
.field private currentWallet:Ljava/lang/String;

.field dateFrom:Ljava/lang/String;

.field dateTo:Ljava/lang/String;

.field private filterContainer:Landroid/view/View;

.field private listView:Landroid/widget/ListView;

.field private pincode:Ljava/lang/String;

.field private selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

.field selectedWalletId:Ljava/lang/String;

.field private textDate:Landroid/widget/TextView;

.field private textTransactionPhoneNumber:Landroid/widget/TextView;

.field private textTransactionType:Landroid/widget/TextView;

.field private textWallet:Landroid/widget/TextView;

.field private thereWasAnError:Z

.field private transactions:Lorg/json/JSONArray;

.field transactiontype:Ljava/lang/String;

.field transationPhone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 46
    const-string v0, "1"

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->currentWallet:Ljava/lang/String;

    .line 154
    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/logs/MiniStatementFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->currentWallet:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->submit()V

    return-void
.end method

.method private prepareWallet()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->currentWallet:Ljava/lang/String;

    .line 152
    return-void
.end method

.method private processMiniStatementElement(Lorg/json/JSONObject;)Lcom/tigo/mfsapp/model/MiniStatementInfo;
    .locals 3
    .param p1, "element"    # Lorg/json/JSONObject;

    .prologue
    .line 187
    new-instance v1, Lcom/tigo/mfsapp/model/MiniStatementInfo;

    invoke-direct {v1}, Lcom/tigo/mfsapp/model/MiniStatementInfo;-><init>()V

    .line 190
    .local v1, "info":Lcom/tigo/mfsapp/model/MiniStatementInfo;
    :try_start_0
    const-string v2, "trxDate"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setDate(Ljava/lang/String;)V

    .line 191
    const-string v2, "amount"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setAmount(Ljava/lang/String;)V

    .line 192
    const-string v2, "type"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setType(Ljava/lang/String;)V

    .line 193
    const-string v2, "receiverId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setTo(Ljava/lang/String;)V

    .line 194
    const-string v2, "receiverEntity"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setTo_entity(Ljava/lang/String;)V

    .line 195
    const-string v2, "status"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setStatus(Ljava/lang/String;)V

    .line 196
    const-string v2, "transactionId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/MiniStatementInfo;->setTransactionId(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 279
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->thereWasAnError:Z

    .line 281
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 271
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 272
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->thereWasAnError:Z

    .line 274
    :cond_0
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "Mini_Statement (esta OCULTA en TZ y visible en SV)"

    return-object v0
.end method

.method public getTransactions()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 287
    iget-boolean v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->closeAndGoHome()V

    .line 289
    :cond_0
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 207
    const-string v0, "PARAM_DATE_FROM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateFrom:Ljava/lang/String;

    .line 208
    const-string v0, "PARAM_DATE_TO"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateTo:Ljava/lang/String;

    .line 209
    const-string v0, "PARAM_TRANSACTION_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactiontype:Ljava/lang/String;

    .line 210
    const-string v0, "PARAM_WALLET"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->selectedWalletId:Ljava/lang/String;

    .line 211
    const-string v0, "PARAM_TRANSACTION_PHONE   "

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transationPhone:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_5

    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->pincode:Ljava/lang/String;

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    if-nez v1, :cond_6

    .line 130
    :goto_1
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateTo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textDate:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactiontype:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textTransactionType:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->selectedWalletId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textWallet:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transationPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textTransactionPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    :cond_4
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->submit()V

    .line 141
    return-void

    .line 119
    :cond_5
    const-string v1, ""

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->pincode:Ljava/lang/String;

    goto :goto_0

    .line 127
    :cond_6
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->setupViews()V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0d0195

    const/16 v3, 0x8

    .line 70
    const v1, 0x7f03006f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d019c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->listView:Landroid/widget/ListView;

    .line 72
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->filterContainer:Landroid/view/View;

    .line 73
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowFiltersInMiniStatement()Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const v1, 0x7f0d0196

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/SelectWalletEdit;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    .line 77
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    new-instance v2, Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    const v1, 0x7f0d0197

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :goto_0
    const v1, 0x7f0d0198

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textDate:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0d0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textTransactionType:Landroid/widget/TextView;

    .line 99
    const v1, 0x7f0d019a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textWallet:Landroid/widget/TextView;

    .line 100
    const v1, 0x7f0d019b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->textTransactionPhoneNumber:Landroid/widget/TextView;

    .line 102
    invoke-direct {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->prepareWallet()V

    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->filterContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :cond_0
    return-object v0

    .line 94
    :cond_1
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 227
    check-cast p2, Lcom/tigo/mfsapp/service/MiniStatementResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/MiniStatementResponse;->getTransactions()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    .line 228
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->setupViews()V

    .line 229
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 9
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowFiltersInMiniStatement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->pincode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->selectedWalletId:Ljava/lang/String;

    iget-object v4, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactiontype:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateFrom:Ljava/lang/String;

    iget-object v6, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->dateTo:Ljava/lang/String;

    iget-object v7, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transationPhone:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/tigo/mfsapp/service/Connection;->requestMiniStatement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->pincode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->currentWallet:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/tigo/mfsapp/service/Connection;->requestMiniStatement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method

.method public processMiniStatementTrasactions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/MiniStatementInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/MiniStatementInfo;>;"
    iget-object v4, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 169
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 173
    :try_start_0
    iget-object v4, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 174
    .local v1, "element":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->processMiniStatementElement(Lorg/json/JSONObject;)Lcom/tigo/mfsapp/model/MiniStatementInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "element":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 181
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "i":I
    :cond_0
    return-object v3
.end method

.method public setTransactions(Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "transactions"    # Lorg/json/JSONArray;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->transactions:Lorg/json/JSONArray;

    .line 260
    return-void
.end method

.method public setupViews()V
    .locals 5

    .prologue
    .line 233
    const v1, 0x7f0300a1

    .line 234
    .local v1, "layout":I
    const-string v2, "YESICA"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "hn.tigo.mfsapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const v1, 0x7f0300a2

    .line 240
    :cond_0
    new-instance v0, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d022f

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->processMiniStatementTrasactions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/tigo/mfsapp/logs/MiniStatementAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 241
    .local v0, "adapter":Lcom/tigo/mfsapp/logs/MiniStatementAdapter;
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 245
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sv.tigo.mfsapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bo.tigo.mfsapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->listView:Landroid/widget/ListView;

    new-instance v3, Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 249
    :cond_1
    return-void
.end method
