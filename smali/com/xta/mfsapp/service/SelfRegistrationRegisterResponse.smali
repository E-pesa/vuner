.class public Lcom/tigo/mfsapp/service/SelfRegistrationRegisterResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "SelfRegistrationRegisterResponse.java"


# instance fields
.field private TransactionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterResponse;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 23
    if-eqz p2, :cond_0

    const-string v1, "TransactionID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    :try_start_0
    const-string v1, "TransactionID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterResponse;->TransactionID:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
