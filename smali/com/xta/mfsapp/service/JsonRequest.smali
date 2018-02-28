.class public Lcom/tigo/mfsapp/service/JsonRequest;
.super Lcom/tigo/mfsapp/service/Request;
.source "JsonRequest.java"


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private map:Lcom/tigo/mfsapp/service/JsonParameters;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/Request;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asHttpString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tigo/mfsapp/service/JsonRequest;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMap()Lcom/tigo/mfsapp/service/JsonParameters;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/service/JsonRequest;->map:Lcom/tigo/mfsapp/service/JsonParameters;

    return-object v0
.end method

.method public getPayLoad()Ljava/lang/String;
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonRequest;->map:Lcom/tigo/mfsapp/service/JsonParameters;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonRequest;->map:Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/JsonParameters;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonRequest;->map:Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 46
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 48
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonRequest;->jsonObject:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonRequest;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V
    .locals 0
    .param p1, "jsonParameters"    # Lcom/tigo/mfsapp/service/JsonParameters;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/service/JsonRequest;->map:Lcom/tigo/mfsapp/service/JsonParameters;

    .line 33
    return-void
.end method

.method public setJsonParameters(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/service/JsonRequest;->jsonObject:Lorg/json/JSONObject;

    .line 38
    return-void
.end method
