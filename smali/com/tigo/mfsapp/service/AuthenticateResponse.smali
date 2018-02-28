.class public Lcom/tigo/mfsapp/service/AuthenticateResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "AuthenticateResponse.java"


# instance fields
.field private role:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->sessionToken:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->role:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->role:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 3
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 25
    if-eqz p2, :cond_0

    .line 29
    :try_start_0
    const-string v1, "SessionToken"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->sessionToken:Ljava/lang/String;

    .line 30
    const-string v1, "role"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/AuthenticateResponse;->role:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
