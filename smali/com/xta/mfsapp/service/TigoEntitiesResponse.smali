.class public Lcom/tigo/mfsapp/service/TigoEntitiesResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "TigoEntitiesResponse.java"


# instance fields
.field private final tigoMSISDNs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;->tigoMSISDNs:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public getTigoEntities()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;->tigoMSISDNs:Ljava/util/HashSet;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 17
    if-eqz p2, :cond_0

    .line 22
    :try_start_0
    const-string v4, "TigoEntities"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    const-string v4, "TigoEntities"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 26
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 28
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "current":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/service/TigoEntitiesResponse;->tigoMSISDNs:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "current":Ljava/lang/String;
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "x":I
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 39
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
