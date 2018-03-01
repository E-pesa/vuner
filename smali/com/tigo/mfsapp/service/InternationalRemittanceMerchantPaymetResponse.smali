.class public Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InternationalRemittanceMerchantPaymetResponse.java"


# instance fields
.field private TransactionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransactionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/MerchantPaymet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;->TransactionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 19
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;->TransactionList:Ljava/util/ArrayList;

    .line 20
    const-string v4, "transactionList"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 21
    .local v0, "arratlist":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 23
    new-instance v3, Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-direct {v3}, Lcom/tigo/mfsapp/model/MerchantPaymet;-><init>()V

    .line 24
    .local v3, "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 25
    .local v2, "jmp":Lorg/json/JSONObject;
    const-string v4, "Amount"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setAmount(F)V

    .line 26
    const-string v4, "Fee"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setFee(F)V

    .line 27
    const-string v4, "Total"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setTotal(F)V

    .line 28
    const-string v4, "MerchantID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setMerchantID(Ljava/lang/String;)V

    .line 29
    const-string v4, "MerchantName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setMerchantName(Ljava/lang/String;)V

    .line 30
    const-string v4, "ProductPicture"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setProductPicture(Ljava/lang/String;)V

    .line 31
    const-string v4, "TransactionDescription"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setTransactionDescription(Ljava/lang/String;)V

    .line 32
    const-string v4, "TransactionID"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setTransactionID(Ljava/lang/String;)V

    .line 33
    const-string v4, "TransactionDatetime"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/MerchantPaymet;->setTransactionDatetime(Ljava/lang/String;)V

    .line 34
    iget-object v4, p0, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetResponse;->TransactionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v0    # "arratlist":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v2    # "jmp":Lorg/json/JSONObject;
    .end local v3    # "mp":Lcom/tigo/mfsapp/model/MerchantPaymet;
    :catch_0
    move-exception v4

    .line 42
    :cond_0
    return-void
.end method
