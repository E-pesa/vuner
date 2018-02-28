.class public Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "PendingTransactionCountResponse.java"


# instance fields
.field private count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;->count:I

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 1
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 13
    if-eqz p2, :cond_0

    .line 17
    :try_start_0
    const-string v0, "TransactionsCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/service/PendingTransactionCountResponse;->count:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    goto :goto_0
.end method
