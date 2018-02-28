.class public Lcom/tigo/mfsapp/service/PendingTransactionListResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "PendingTransactionListResponse.java"


# instance fields
.field private lastPage:Z

.field private final pendingTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/PendingTransactionListResponse;->pendingTransactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getPendingTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/PendingTransaction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/service/PendingTransactionListResponse;->pendingTransactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/PendingTransactionListResponse;->lastPage:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 22
    :try_start_0
    const-string v6, "Transactions"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 23
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 26
    .local v3, "length":I
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 28
    .local v1, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 31
    .local v4, "object":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/tigo/mfsapp/model/PendingTransaction;

    invoke-virtual {v1, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/PendingTransaction;

    .line 32
    .local v5, "transaction":Lcom/tigo/mfsapp/model/PendingTransaction;
    iget-object v6, p0, Lcom/tigo/mfsapp/service/PendingTransactionListResponse;->pendingTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "object":Lorg/json/JSONObject;
    .end local v5    # "transaction":Lcom/tigo/mfsapp/model/PendingTransaction;
    :catch_0
    move-exception v6

    .line 38
    :cond_0
    return-void
.end method
