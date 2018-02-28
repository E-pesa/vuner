.class public Lcom/tigo/mfsapp/service/LookupResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "LookupResponse.java"


# instance fields
.field private DocumentType:Ljava/lang/String;

.field private ID:Ljava/lang/String;

.field private foundit:Z

.field private tigoName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/LookupResponse;->foundit:Z

    return-void
.end method


# virtual methods
.method public getDocumentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/service/LookupResponse;->DocumentType:Ljava/lang/String;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/service/LookupResponse;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getTigoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/service/LookupResponse;->tigoName:Ljava/lang/String;

    return-object v0
.end method

.method public isFoundit()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/LookupResponse;->foundit:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 19
    if-eqz p2, :cond_2

    .line 24
    :try_start_0
    const-string v2, "TigoEntities"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 25
    .local v1, "tigoEntities":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "TigoName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/service/LookupResponse;->tigoName:Ljava/lang/String;

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 28
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentNumber"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/service/LookupResponse;->ID:Ljava/lang/String;

    .line 30
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 32
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "DocumentType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/service/LookupResponse;->setDocumentType(Ljava/lang/String;)V

    .line 34
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tigo/mfsapp/service/LookupResponse;->foundit:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "tigoEntities":Lorg/json/JSONArray;
    :cond_2
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, ""

    iput-object v2, p0, Lcom/tigo/mfsapp/service/LookupResponse;->tigoName:Ljava/lang/String;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Something went wrong, asigning empty as tigoName, reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDocumentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "documentType"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tigo/mfsapp/service/LookupResponse;->DocumentType:Ljava/lang/String;

    .line 80
    return-void
.end method
