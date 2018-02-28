.class public Lcom/tigo/mfsapp/service/BankLookupResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "BankLookupResponse.java"


# instance fields
.field banks:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getBanks()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/service/BankLookupResponse;->banks:Lorg/json/JSONArray;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 14
    if-eqz p2, :cond_0

    .line 18
    :try_start_0
    const-string v1, "Banks"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/BankLookupResponse;->banks:Lorg/json/JSONArray;
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
