.class public Lcom/tigo/mfsapp/service/BalanceResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BalanceResponse.java"


# instance fields
.field wallets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 19
    if-eqz p2, :cond_1

    .line 23
    :try_start_0
    const-string v7, "Balance"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 25
    .local v0, "balance":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 27
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 28
    .local v1, "currentBalance":Lorg/json/JSONObject;
    const-string v7, "WalletID"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 29
    .local v5, "walletId":Ljava/lang/String;
    const-string v7, "Balance"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v4, v8

    .line 31
    .local v4, "walletBalance":F
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/Wallet;

    .line 33
    .local v3, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/model/Wallet;->setBalance(F)V

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, v8, v9}, Lcom/tigo/mfsapp/model/Wallet;->setLastUpdated(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 42
    .end local v0    # "balance":Lorg/json/JSONArray;
    .end local v1    # "currentBalance":Lorg/json/JSONObject;
    .end local v3    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    .end local v4    # "walletBalance":F
    .end local v5    # "walletId":Ljava/lang/String;
    .end local v6    # "x":I
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    return-void

    .line 25
    .restart local v0    # "balance":Lorg/json/JSONArray;
    .restart local v1    # "currentBalance":Lorg/json/JSONObject;
    .restart local v4    # "walletBalance":F
    .restart local v5    # "walletId":Ljava/lang/String;
    .restart local v6    # "x":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
