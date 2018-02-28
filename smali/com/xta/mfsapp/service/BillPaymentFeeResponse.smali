.class public Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BillPaymentFeeResponse.java"


# instance fields
.field private fee:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getFee()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;->fee:F

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 14
    if-eqz p2, :cond_0

    .line 18
    :try_start_0
    const-string v1, "Fee"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;->fee:F
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :cond_0
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 21
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
