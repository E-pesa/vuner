.class public Lcom/tigo/mfsapp/service/PinListResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "PinListResponse.java"


# instance fields
.field private lastPage:Z

.field private pinList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getPinList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/service/PinListResponse;->pinList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/PinListResponse;->lastPage:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 26
    if-eqz p2, :cond_0

    .line 30
    :try_start_0
    const-string v5, "LastPage"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/tigo/mfsapp/service/PinListResponse;->lastPage:Z

    .line 31
    const-string v5, "Pins"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 33
    .local v3, "gson":Lcom/google/gson/Gson;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tigo/mfsapp/service/PinListResponse;->pinList:Ljava/util/ArrayList;

    .line 34
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 36
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v3, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 37
    .local v1, "array_element":Lcom/tigo/mfsapp/model/maps/Pin;
    iget-object v5, p0, Lcom/tigo/mfsapp/service/PinListResponse;->pinList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "array_element":Lcom/tigo/mfsapp/model/maps/Pin;
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v4    # "i":I
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 44
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    return-void
.end method
