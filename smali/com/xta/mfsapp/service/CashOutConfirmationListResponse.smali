.class public Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "CashOutConfirmationListResponse.java"


# instance fields
.field private ResponseTransactionStatus:Ljava/lang/String;

.field private TransactionID:Ljava/lang/String;

.field private TransactionMessage:Ljava/lang/String;

.field private Transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->Transactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getResponseTransactionStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->ResponseTransactionStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->TransactionMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Transaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->Transactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 22
    :try_start_0
    const-string v5, "TransactionID"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->setTransactionID(Ljava/lang/String;)V

    .line 23
    const-string v5, "ResponseTransactionStatus"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->setResponseTransactionStatus(Ljava/lang/String;)V

    .line 24
    const-string v5, "TransactionMessage"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->setTransactionMessage(Ljava/lang/String;)V

    .line 25
    const-string v5, "Transactions"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 26
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 29
    .local v2, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 32
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 33
    .local v3, "temp":Lorg/json/JSONObject;
    new-instance v4, Lcom/tigo/mfsapp/model/Transaction;

    invoke-direct {v4}, Lcom/tigo/mfsapp/model/Transaction;-><init>()V

    .line 34
    .local v4, "transaction":Lcom/tigo/mfsapp/model/Transaction;
    const-string v5, "AgentCode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setAgentCode(Ljava/lang/String;)V

    .line 35
    const-string v5, "AgentName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setAgentName(Ljava/lang/String;)V

    .line 36
    const-string v5, "Amount"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setAmount(F)V

    .line 37
    const-string v5, "Date"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setDate(Ljava/lang/String;)V

    .line 38
    const-string v5, "Msisdn"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setMsisdn(Ljava/lang/String;)V

    .line 39
    const-string v5, "TxnId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/model/Transaction;->setTxnId(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->getTransactions()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "l":I
    .end local v3    # "temp":Lorg/json/JSONObject;
    .end local v4    # "transaction":Lcom/tigo/mfsapp/model/Transaction;
    :catch_0
    move-exception v5

    .line 49
    :cond_0
    return-void
.end method

.method public setResponseTransactionStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseTransactionStatus"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->ResponseTransactionStatus:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTransactionID(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionID"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->TransactionID:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTransactionMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionMessage"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->TransactionMessage:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setTransactions(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 58
    .local p1, "transactions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Transaction;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/service/CashOutConfirmationListResponse;->Transactions:Ljava/util/ArrayList;

    .line 59
    return-void
.end method
