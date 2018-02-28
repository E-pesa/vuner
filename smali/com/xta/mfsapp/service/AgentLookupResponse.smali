.class public Lcom/tigo/mfsapp/service/AgentLookupResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "AgentLookupResponse.java"


# instance fields
.field private foundit:Z

.field private tigoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->tigoName:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->foundit:Z

    return-void
.end method


# virtual methods
.method public getTigoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->tigoName:Ljava/lang/String;

    return-object v0
.end method

.method public isFoundit()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->foundit:Z

    return v0
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
    const-string v2, "Agents"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 20
    .local v1, "tigoEntities":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "TigoName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->tigoName:Ljava/lang/String;

    .line 21
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tigo/mfsapp/service/AgentLookupResponse;->foundit:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "tigoEntities":Lorg/json/JSONArray;
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
