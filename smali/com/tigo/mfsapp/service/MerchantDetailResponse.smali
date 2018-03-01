.class public Lcom/tigo/mfsapp/service/MerchantDetailResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "MerchantDetailResponse.java"


# instance fields
.field private merchantDetail:Lcom/tigo/mfsapp/model/maps/MerchantDetail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getMerchantDetail()Lcom/tigo/mfsapp/model/maps/MerchantDetail;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/service/MerchantDetailResponse;->merchantDetail:Lcom/tigo/mfsapp/model/maps/MerchantDetail;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 16
    if-eqz p2, :cond_0

    .line 20
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/model/maps/MerchantDetail;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/maps/MerchantDetail;

    iput-object v2, p0, Lcom/tigo/mfsapp/service/MerchantDetailResponse;->merchantDetail:Lcom/tigo/mfsapp/model/maps/MerchantDetail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
