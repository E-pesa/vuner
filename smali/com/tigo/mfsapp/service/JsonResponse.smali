.class public abstract Lcom/tigo/mfsapp/service/JsonResponse;
.super Lcom/tigo/mfsapp/service/Response;
.source "JsonResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/service/JsonResponse$BadDoubleDeserializer;
    }
.end annotation


# static fields
.field public static CUSTOM_ERROR_KEY:Ljava/lang/String;


# instance fields
.field private bundle:Landroid/os/Bundle;

.field jsonObject:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "customerror"

    sput-object v0, Lcom/tigo/mfsapp/service/JsonResponse;->CUSTOM_ERROR_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/Response;-><init>()V

    .line 25
    return-void
.end method

.method public static getHeadersAsString([Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 5
    .param p0, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Headers:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 83
    .local v1, "s":Ljava/lang/StringBuffer;
    const-string v2, "------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 85
    .local v0, "h":Lorg/apache/http/Header;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "h":Lorg/apache/http/Header;
    :cond_0
    const-string v2, "------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private processCustomError(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 115
    :try_start_0
    const-string v2, "ErrorData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "CustomError"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    .local v1, "value":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/tigo/mfsapp/service/JsonResponse;->bundle:Landroid/os/Bundle;

    .line 121
    iget-object v2, p0, Lcom/tigo/mfsapp/service/JsonResponse;->bundle:Landroid/os/Bundle;

    sget-object v3, Lcom/tigo/mfsapp/service/JsonResponse;->CUSTOM_ERROR_KEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void

    .line 116
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    const v3, 0x7f060137

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private processError(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tigo/mfsapp/service/JsonResponse;->processCustomError(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/tigo/mfsapp/service/JsonResponse;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGson()Lcom/google/gson/Gson;
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lcom/tigo/mfsapp/service/JsonResponse$BadDoubleDeserializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/tigo/mfsapp/service/JsonResponse$BadDoubleDeserializer;-><init>(Lcom/tigo/mfsapp/service/JsonResponse$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public init(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/service/Response;->init(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    .line 51
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/service/JsonResponse;->getHeadersAsString([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 53
    if-eqz p1, :cond_1

    .line 57
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    .line 59
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "ErrorCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    .line 61
    .local v2, "isSucess":Z
    :goto_0
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "ErrorCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    const-string v5, "ErrorCode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 64
    .local v1, "errorCode":I
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/service/JsonResponse;->setResultCode(I)V

    .line 65
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0, v1, v4}, Lcom/tigo/mfsapp/service/JsonResponse;->processError(ILorg/json/JSONObject;)V

    .line 67
    .end local v1    # "errorCode":I
    :cond_0
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v4, v2}, Lcom/tigo/mfsapp/service/JsonResponse;->processResponse(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v2    # "isSucess":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 59
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    const/16 v4, 0x63

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/service/JsonResponse;->setResultCode(I)V

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    iget-object v4, p0, Lcom/tigo/mfsapp/service/JsonResponse;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v4, v3}, Lcom/tigo/mfsapp/service/JsonResponse;->processResponse(Lorg/json/JSONObject;Z)V

    goto :goto_1
.end method

.method public abstract processResponse(Lorg/json/JSONObject;Z)V
.end method
