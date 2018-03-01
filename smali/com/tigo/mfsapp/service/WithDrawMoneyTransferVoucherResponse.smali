.class public Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "WithDrawMoneyTransferVoucherResponse.java"


# instance fields
.field private amount:F

.field private senderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmount()F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->amount:F

    return v0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->senderName:Ljava/lang/String;

    return-object v0
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
    const-string v1, "Amount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    double-to-float v1, v2

    iput v1, p0, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->amount:F

    .line 19
    const-string v1, "SenderName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->senderName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
