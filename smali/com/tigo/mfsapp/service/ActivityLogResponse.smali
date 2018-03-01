.class public Lcom/tigo/mfsapp/service/ActivityLogResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "ActivityLogResponse.java"


# instance fields
.field private lastPage:Z

.field transactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/ActivityLogResponse;->transactions:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ActivityLogInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/service/ActivityLogResponse;->transactions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLastPage()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/tigo/mfsapp/service/ActivityLogResponse;->lastPage:Z

    return v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 23
    if-eqz p2, :cond_3

    .line 27
    :try_start_0
    const-string v10, "LastPage"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/tigo/mfsapp/service/ActivityLogResponse;->lastPage:Z

    .line 28
    const-string v10, "Activities"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 30
    .local v5, "jsonTransactions":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_3

    .line 32
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 33
    .local v4, "jsonTransaction":Lorg/json/JSONObject;
    new-instance v3, Lcom/tigo/mfsapp/model/ActivityLogInfo;

    invoke-direct {v3}, Lcom/tigo/mfsapp/model/ActivityLogInfo;-><init>()V

    .line 34
    .local v3, "info":Lcom/tigo/mfsapp/model/ActivityLogInfo;
    const-string v10, "OperationType"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->setOperationType(Ljava/lang/String;)V

    .line 35
    const-string v10, "DateTime"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->setDateTime(Ljava/lang/String;)V

    .line 37
    const-string v10, "AdditionalInfo"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-eqz v10, :cond_1

    .line 41
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 43
    .local v7, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "AdditionalInfo"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    .local v0, "aditionalInfo":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 46
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 48
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 49
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, "value":Ljava/lang/String;
    const-string v10, "Amount"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v10

    invoke-virtual {v10}, Lcom/tigo/mfsapp/model/Parameters;->getDecimalDigits()I

    move-result v10

    if-nez v10, :cond_0

    .line 52
    invoke-static {v9}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    :cond_0
    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 60
    .end local v0    # "aditionalInfo":Lorg/json/JSONObject;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 66
    :cond_1
    :goto_2
    :try_start_2
    iget-object v10, p0, Lcom/tigo/mfsapp/service/ActivityLogResponse;->transactions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .restart local v0    # "aditionalInfo":Lorg/json/JSONObject;
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v3, v7}, Lcom/tigo/mfsapp/model/ActivityLogInfo;->setDetail(Ljava/util/Map;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 68
    .end local v0    # "aditionalInfo":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/tigo/mfsapp/model/ActivityLogInfo;
    .end local v4    # "jsonTransaction":Lorg/json/JSONObject;
    .end local v5    # "jsonTransactions":Lorg/json/JSONArray;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    return-void
.end method
