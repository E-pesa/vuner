.class public Lcom/tigo/mfsapp/service/MarksResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "MarksResponse.java"


# instance fields
.field private clusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private pins:Ljava/util/ArrayList;
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
    .line 16
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getClusters()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Cluster;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/service/MarksResponse;->clusters:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPins()Ljava/util/ArrayList;
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
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/service/MarksResponse;->pins:Ljava/util/ArrayList;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 25
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/tigo/mfsapp/service/MarksResponse;->clusters:Ljava/util/ArrayList;

    .line 26
    if-eqz p2, :cond_2

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/MarksResponse;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 33
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v9, "agentsMerchantsList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 34
    .local v4, "jsonPinArray":Lorg/json/JSONArray;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/tigo/mfsapp/service/MarksResponse;->pins:Ljava/util/ArrayList;

    .line 36
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 38
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 39
    .local v6, "objPin":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    const-class v10, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2, v9, v10}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 40
    .local v7, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    iget-object v9, p0, Lcom/tigo/mfsapp/service/MarksResponse;->pins:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .end local v6    # "objPin":Lorg/json/JSONObject;
    .end local v7    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_0
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    .local v5, "jsonPins":Lcom/google/gson/Gson;
    new-instance v9, Lcom/tigo/mfsapp/service/MarksResponse$1;

    invoke-direct {v9, p0}, Lcom/tigo/mfsapp/service/MarksResponse$1;-><init>(Lcom/tigo/mfsapp/service/MarksResponse;)V

    .line 45
    invoke-virtual {v9}, Lcom/tigo/mfsapp/service/MarksResponse$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 46
    .local v0, "arrayPinsType":Ljava/lang/reflect/Type;
    iget-object v9, p0, Lcom/tigo/mfsapp/service/MarksResponse;->pins:Ljava/util/ArrayList;

    invoke-virtual {v5, v9, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "strPins":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "MAP_PINS"

    invoke-interface {v9, v10, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "arrayPinsType":Ljava/lang/reflect/Type;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "i":I
    .end local v4    # "jsonPinArray":Lorg/json/JSONArray;
    .end local v5    # "jsonPins":Lcom/google/gson/Gson;
    .end local v8    # "strPins":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 55
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "MAP_PINS"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 56
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "MAP_PINS"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method
