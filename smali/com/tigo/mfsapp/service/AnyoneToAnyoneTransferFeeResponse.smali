.class public Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "AnyoneToAnyoneTransferFeeResponse.java"


# instance fields
.field commission:Ljava/lang/Float;

.field commissionTax:Ljava/lang/Float;

.field fee:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->fee:Ljava/lang/Float;

    .line 9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commission:Ljava/lang/Float;

    .line 10
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commissionTax:Ljava/lang/Float;

    return-void
.end method


# virtual methods
.method public getCommission()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commission:Ljava/lang/Float;

    return-object v0
.end method

.method public getCommissionTax()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commissionTax:Ljava/lang/Float;

    return-object v0
.end method

.method public getFee()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->fee:Ljava/lang/Float;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 15
    if-eqz p2, :cond_0

    .line 19
    :try_start_0
    const-string v1, "Fee"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->fee:Ljava/lang/Float;

    .line 20
    const-string v1, "Commission"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commission:Ljava/lang/Float;

    .line 21
    const-string v1, "CommissionTax"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeResponse;->commissionTax:Ljava/lang/Float;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :cond_0
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
