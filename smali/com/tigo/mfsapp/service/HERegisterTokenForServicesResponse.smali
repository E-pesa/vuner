.class public Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "HERegisterTokenForServicesResponse.java"


# instance fields
.field private successfullyObtainedToken:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;->successfullyObtainedToken:Z

    return-void
.end method


# virtual methods
.method public isSuccessfullyObtainedToken()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;->successfullyObtainedToken:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSuccess"    # Z

    .prologue
    const/4 v0, 0x0

    .line 34
    const-string v3, "YESICA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-eqz p2, :cond_1

    .line 38
    :try_start_0
    const-string v3, "MSISDN"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MSISDN"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "MSISDN":Ljava/lang/String;
    :goto_0
    const-string v3, "AccessToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "AccessToken"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "AccessToken":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 43
    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setHeMSISDN(Ljava/lang/String;)V

    .line 44
    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->setHEAccessToken(Ljava/lang/String;)V

    .line 47
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;->successfullyObtainedToken:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "AccessToken":Ljava/lang/String;
    .end local v1    # "MSISDN":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    :cond_2
    move-object v1, v0

    .line 38
    goto :goto_0

    .line 47
    .restart local v0    # "AccessToken":Ljava/lang/String;
    .restart local v1    # "MSISDN":Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 51
    .end local v0    # "AccessToken":Ljava/lang/String;
    .end local v1    # "MSISDN":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 52
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public setSuccessfullyObtainedToken(Z)V
    .locals 0
    .param p1, "successfullyObtainedToken"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesResponse;->successfullyObtainedToken:Z

    .line 25
    return-void
.end method
