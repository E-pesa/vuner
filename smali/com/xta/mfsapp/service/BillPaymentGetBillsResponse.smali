.class public Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BillPaymentGetBillsResponse.java"


# instance fields
.field private bills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method

.method private parseDynamicParameters(Lorg/json/JSONObject;)Ljava/util/HashMap;
    .locals 6
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Float;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 61
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 65
    .local v2, "string":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "value":F
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-float v3, v4

    .line 74
    :goto_1
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :catch_0
    move-exception v4

    goto :goto_1

    .line 77
    .end local v2    # "string":Ljava/lang/String;
    .end local v3    # "value":F
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBills()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;->bills:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 8
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 21
    if-eqz p2, :cond_1

    .line 25
    :try_start_0
    const-string v6, "BillsList"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 26
    .local v3, "jarray":Lorg/json/JSONArray;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;->bills:Ljava/util/ArrayList;

    .line 27
    if-eqz v3, :cond_1

    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 30
    .local v4, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 32
    new-instance v0, Lcom/tigo/mfsapp/model/Bill;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/Bill;-><init>()V

    .line 33
    .local v0, "bill":Lcom/tigo/mfsapp/model/Bill;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "AmountToPay"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Bill;->setAmountToPay(F)V

    .line 34
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "DueDate"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Bill;->setDueDate(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "ReferenceNumber"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Bill;->setReferenceNumber(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "DynamicParameters"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 38
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "DynamicParameters"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 39
    .local v5, "object":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 41
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Bill;->setDynParamsString(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, v5}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;->parseDynamicParameters(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/tigo/mfsapp/model/Bill;->setDynamicParameters(Ljava/util/HashMap;)V

    .line 45
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_0
    iget-object v6, p0, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;->bills:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "bill":Lcom/tigo/mfsapp/model/Bill;
    .end local v2    # "i":I
    .end local v3    # "jarray":Lorg/json/JSONArray;
    .end local v4    # "l":I
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 54
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method
