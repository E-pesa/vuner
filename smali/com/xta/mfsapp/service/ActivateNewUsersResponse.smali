.class public Lcom/tigo/mfsapp/service/ActivateNewUsersResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "ActivateNewUsersResponse.java"


# instance fields
.field private TransactionID:Ljava/lang/String;

.field private serialNumberOfRegistrationForm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerialNumberOfRegistrationForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tigo/mfsapp/service/ActivateNewUsersResponse;->serialNumberOfRegistrationForm:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/service/ActivateNewUsersResponse;->TransactionID:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 15
    if-eqz p2, :cond_0

    .line 19
    :try_start_0
    const-string v1, "TransactionID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/ActivateNewUsersResponse;->TransactionID:Ljava/lang/String;

    .line 20
    const-string v1, "SerialNumberOfRegistrationForm"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/ActivateNewUsersResponse;->serialNumberOfRegistrationForm:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
