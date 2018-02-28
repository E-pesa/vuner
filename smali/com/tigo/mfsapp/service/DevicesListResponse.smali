.class public Lcom/tigo/mfsapp/service/DevicesListResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "DevicesListResponse.java"


# instance fields
.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Device;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Device;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/tigo/mfsapp/service/DevicesListResponse;->devices:Ljava/util/List;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 21
    if-eqz p2, :cond_0

    .line 23
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 24
    .local v1, "gson":Lcom/google/gson/Gson;
    new-instance v3, Lcom/tigo/mfsapp/service/DevicesListResponse$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/service/DevicesListResponse$1;-><init>(Lcom/tigo/mfsapp/service/DevicesListResponse;)V

    .line 25
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/DevicesListResponse$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 28
    .local v2, "listOfDeviceObject":Ljava/lang/reflect/Type;
    :try_start_0
    const-string v3, "Devices"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/tigo/mfsapp/service/DevicesListResponse;->devices:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "listOfDeviceObject":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-void

    .line 30
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "listOfDeviceObject":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tigo/mfsapp/service/DevicesListResponse;->devices:Ljava/util/List;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
