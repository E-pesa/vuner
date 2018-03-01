.class public Lcom/tigo/mfsapp/service/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Lcom/tigo/mfsapp/service/Request$RequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/service/Connection$ConnectionListener;
    }
.end annotation


# static fields
.field private static final MAX_SIM_THREADS:I = 0x5


# instance fields
.field private canceled:Z

.field private connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

.field private final poolExecutor:Ljava/util/concurrent/ExecutorService;

.field private final requestedImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final serialExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/service/Connection;->serialExecutor:Ljava/util/concurrent/ExecutorService;

    .line 61
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/Connection;->requestedImages:Ljava/util/ArrayList;

    .line 63
    return-void
.end method

.method private processResponse(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Lcom/tigo/mfsapp/service/Response;
    .locals 4
    .param p1, "request"    # Lcom/tigo/mfsapp/service/Request;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 89
    if-eqz p3, :cond_0

    .line 90
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/Request;->getResponseClass()Ljava/lang/Class;

    move-result-object v2

    .line 93
    .local v2, "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/service/Response;

    .line 94
    .local v1, "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/Request;->getReference()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/service/Response;->setReference(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1, p1}, Lcom/tigo/mfsapp/service/Response;->setRequest(Lcom/tigo/mfsapp/service/Request;)V

    .line 96
    invoke-virtual {v1, p3, p2}, Lcom/tigo/mfsapp/service/Response;->init(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1    # "response":Lcom/tigo/mfsapp/service/Response;
    .end local v2    # "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 98
    .restart local v2    # "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 106
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v2    # "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 101
    .restart local v2    # "responseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method private removeImage(Lcom/tigo/mfsapp/service/Request;)V
    .locals 4
    .param p1, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 110
    move-object v0, p1

    check-cast v0, Lcom/tigo/mfsapp/service/ImageRequest;

    .line 111
    .local v0, "imageRequest":Lcom/tigo/mfsapp/service/ImageRequest;
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->requestedImages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    .local v1, "imageUrl":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/ImageRequest;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->requestedImages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 118
    .end local v1    # "imageUrl":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    .line 1523
    return-void
.end method

.method public didReceiveContent(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 3
    .param p1, "request"    # Lcom/tigo/mfsapp/service/Request;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 75
    instance-of v1, p1, Lcom/tigo/mfsapp/service/ImageRequest;

    if-eqz v1, :cond_0

    .line 76
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/Connection;->removeImage(Lcom/tigo/mfsapp/service/Request;)V

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    if-nez v1, :cond_2

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/tigo/mfsapp/service/Connection;->processResponse(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Lcom/tigo/mfsapp/service/Response;

    move-result-object v0

    .line 81
    .local v0, "processResponse":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Response;->setResultCode(I)V

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    invoke-interface {v1, p0, v0}, Lcom/tigo/mfsapp/service/Connection$ConnectionListener;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 86
    .end local v0    # "processResponse":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    return-void
.end method

.method public didReceiveError(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/tigo/mfsapp/service/Request;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/tigo/mfsapp/service/Connection;->processResponse(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)Lcom/tigo/mfsapp/service/Response;

    move-result-object v0

    .line 125
    .local v0, "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Request;->setResponse(Lcom/tigo/mfsapp/service/Response;)V

    .line 127
    .end local v0    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    invoke-interface {v1, p0, p1}, Lcom/tigo/mfsapp/service/Connection$ConnectionListener;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 131
    :cond_1
    return-void
.end method

.method public didReceiveNetworkingError(Ljava/lang/Exception;Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;
    .param p3, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    if-nez v1, :cond_0

    .line 137
    new-instance v0, Lcom/tigo/mfsapp/service/Response;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/Response;-><init>()V

    .line 138
    .local v0, "r":Lcom/tigo/mfsapp/service/Response;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Response;->setResultCode(I)V

    .line 140
    invoke-virtual {p2, v0}, Lcom/tigo/mfsapp/service/Request;->setResponse(Lcom/tigo/mfsapp/service/Response;)V

    .line 142
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    invoke-interface {v1, p0, p2}, Lcom/tigo/mfsapp/service/Connection$ConnectionListener;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 144
    .end local v0    # "r":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    return-void
.end method

.method public getConnectionListener()Lcom/tigo/mfsapp/service/Connection$ConnectionListener;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    return-object v0
.end method

.method public getSubsctriptionFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Double;

    .prologue
    .line 1406
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1407
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    const-string v2, "Wallet"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    new-instance v1, Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1412
    .local v1, "request":Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1413
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1414
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsFeeRequest;->run()V

    .line 1415
    return-void
.end method

.method public requestActivateNewUsers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;

    .prologue
    .line 1345
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1346
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1347
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    new-instance v1, Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1350
    .local v1, "request":Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1351
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1352
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/ActivateNewUsersRequest;->run()V

    .line 1353
    return-void
.end method

.method public requestActivityLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "pageNumber"    # I

    .prologue
    .line 688
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 689
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string v2, "PageNumber"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    new-instance v1, Lcom/tigo/mfsapp/service/ActivityLogRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/ActivityLogRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 694
    .local v1, "request":Lcom/tigo/mfsapp/service/ActivityLogRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/ActivityLogRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 695
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/ActivityLogRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 696
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/ActivityLogRequest;->run()V

    .line 697
    return-void
.end method

.method public requestAgentLookup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "AgentID"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 357
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 358
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 360
    .local v4, "tigoEntity":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "AgentID"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 362
    const-string v5, "SessionToken"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 363
    const-string v5, "Agents"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    new-instance v3, Lcom/tigo/mfsapp/service/AgentLookupRequest;

    iget-object v5, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v5}, Lcom/tigo/mfsapp/service/AgentLookupRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 369
    .local v3, "request":Lcom/tigo/mfsapp/service/AgentLookupRequest;
    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/service/AgentLookupRequest;->setJsonParameters(Lorg/json/JSONObject;)V

    .line 370
    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/service/AgentLookupRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 371
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/AgentLookupRequest;->run()V

    .line 372
    return-void

    .line 364
    .end local v3    # "request":Lcom/tigo/mfsapp/service/AgentLookupRequest;
    :catch_0
    move-exception v1

    .line 365
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestAnyoneToAnyoneTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "walletId"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 602
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 603
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    if-eqz p4, :cond_0

    .line 607
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    new-instance v1, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 613
    .local v1, "request":Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 614
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 615
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferRequest;->run()V

    .line 616
    return-void
.end method

.method public requestAnyoneToAnyoneTransferAmount(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 580
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 581
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    new-instance v1, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 584
    .local v1, "request":Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 585
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 586
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountRequest;->run()V

    .line 587
    return-void
.end method

.method public requestAnyoneToAnyoneTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 590
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 591
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    new-instance v1, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 596
    .local v1, "request":Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 597
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 598
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferFeeRequest;->run()V

    .line 599
    return-void
.end method

.method public requestAuthenticate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "MSISDN"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 156
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "GUID"

    const-string v3, ""

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v2, "LanguageKey"

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v1, Lcom/tigo/mfsapp/service/AuthenticateRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/AuthenticateRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 162
    .local v1, "request":Lcom/tigo/mfsapp/service/AuthenticateRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/AuthenticateRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 163
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/AuthenticateRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 164
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AuthenticateRequest;->run()V

    .line 166
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ui_action"

    const-string v4, "sign_in"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    const-string v7, ""

    .line 167
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v2, v3, v4, v5}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public requestBalance(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "PINCode"    # Ljava/lang/String;
   # .param p2, "fee"    # Ljava/lang/Float;

    .prologue
    .line 314
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 315
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

  

    .line 318
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

   
    .line 328
    return-void
.end method

.method public requestBalanceFee(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 868
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 869
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    const-string v2, "1"

    .line 873
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 874
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 877
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    new-instance v1, Lcom/tigo/mfsapp/service/BalanceFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/BalanceFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 880
    .local v1, "request":Lcom/tigo/mfsapp/service/BalanceFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BalanceFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 881
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BalanceFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 882
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BalanceFeeRequest;->run()V

    .line 883
    return-void
.end method

.method public requestBankLookup(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 700
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 701
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    new-instance v1, Lcom/tigo/mfsapp/service/BankLookupRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BankLookupRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 704
    .local v1, "request":Lcom/tigo/mfsapp/service/BankLookupRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BankLookupRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 705
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BankLookupRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 706
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BankLookupRequest;->run()V

    .line 707
    return-void
.end method

.method public requestBankToWallet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pinCode"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 710
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 711
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    new-instance v1, Lcom/tigo/mfsapp/service/BankToWalletRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BankToWalletRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 715
    .local v1, "request":Lcom/tigo/mfsapp/service/BankToWalletRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BankToWalletRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 716
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BankToWalletRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 717
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BankToWalletRequest;->run()V

    .line 718
    return-void
.end method

.method public requestBankTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "bankId"    # Ljava/lang/String;
    .param p4, "accountNumber"    # Ljava/lang/String;
    .param p5, "walletId"    # Ljava/lang/String;
    .param p6, "amount"    # Ljava/lang/Float;
    .param p7, "transactionDescription"    # Ljava/lang/String;
    .param p8, "fee"    # Ljava/lang/Float;

    .prologue
    .line 640
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 641
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v2, "BankID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    const-string v2, "AccountNumber"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p7}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    if-eqz p5, :cond_0

    .line 648
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    :cond_0
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p8}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    new-instance v1, Lcom/tigo/mfsapp/service/BankTransferRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BankTransferRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 654
    .local v1, "request":Lcom/tigo/mfsapp/service/BankTransferRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BankTransferRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 655
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BankTransferRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 656
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BankTransferRequest;->run()V

    .line 657
    return-void
.end method

.method public requestBankTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "bankId"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/Float;

    .prologue
    .line 436
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 437
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    if-eqz p2, :cond_0

    .line 439
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_0
    const-string v2, "BankID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 445
    const-string v2, "WalletID"

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    :cond_1
    new-instance v1, Lcom/tigo/mfsapp/service/BankTransferFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BankTransferFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 449
    .local v1, "request":Lcom/tigo/mfsapp/service/BankTransferFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BankTransferFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 450
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BankTransferFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 451
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BankTransferFeeRequest;->run()V

    .line 452
    return-void
.end method

.method public requestBillPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 13
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "companyId"    # Ljava/lang/String;
    .param p3, "referenceNumber"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/String;
    .param p5, "walletId"    # Ljava/lang/String;
    .param p6, "pinCode"    # Ljava/lang/String;
    .param p7, "referenceType"    # Ljava/lang/String;
    .param p8, "DynamicParameters"    # Ljava/lang/String;
    .param p9, "transactionDescription"    # Ljava/lang/String;
    .param p10, "fee"    # Ljava/lang/Float;

    .prologue
    .line 801
    new-instance v4, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v4}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 802
    .local v4, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v9, "SessionToken"

    invoke-virtual {v4, v9, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const-string v9, "CompanyID"

    invoke-virtual {v4, v9, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v9, "ReferenceNumber"

    move-object/from16 v0, p3

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const-string v9, "Amount"

    move-object/from16 v0, p4

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v9, "TransactionDescription"

    move-object/from16 v0, p9

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    if-eqz p5, :cond_0

    .line 809
    const-string v9, "WalletID"

    move-object/from16 v0, p5

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    :cond_0
    const-string v9, "Fee"

    move-object/from16 v0, p10

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    if-eqz p7, :cond_1

    .line 815
    const-string v9, "IdType"

    move-object/from16 v0, p7

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    :cond_1
    const-string v9, "PINCode"

    move-object/from16 v0, p6

    invoke-virtual {v4, v9, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    const-string v9, "LanguageKey"

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "language"

    const-string v12, ""

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 820
    .local v6, "object":Lorg/json/JSONObject;
    if-eqz p8, :cond_3

    .line 822
    :try_start_0
    const-string v9, "DynamicParameters"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 824
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 825
    .local v2, "dynObj":Lcom/google/gson/Gson;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 826
    .local v1, "dyn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "dyn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 828
    .restart local v1    # "dyn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 829
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 831
    .local v5, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 832
    .local v8, "value":Ljava/lang/Object;
    instance-of v10, v8, Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 833
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 835
    .end local v8    # "value":Ljava/lang/Object;
    :cond_2
    const-string v10, "DynamicParameters"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v10, v5, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 836
    :catch_0
    move-exception v3

    .line 838
    .local v3, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 845
    .end local v1    # "dyn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "dynObj":Lcom/google/gson/Gson;
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "key":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 847
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 851
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    new-instance v7, Lcom/tigo/mfsapp/service/BillPaymentRequest;

    iget-object v9, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v7, v9}, Lcom/tigo/mfsapp/service/BillPaymentRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 852
    .local v7, "request":Lcom/tigo/mfsapp/service/BillPaymentRequest;
    invoke-virtual {v7, v6}, Lcom/tigo/mfsapp/service/BillPaymentRequest;->setJsonParameters(Lorg/json/JSONObject;)V

    .line 853
    invoke-virtual {v7, p0}, Lcom/tigo/mfsapp/service/BillPaymentRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 854
    invoke-virtual {v7}, Lcom/tigo/mfsapp/service/BillPaymentRequest;->run()V

    .line 855
    return-void

    .line 839
    .end local v7    # "request":Lcom/tigo/mfsapp/service/BillPaymentRequest;
    .restart local v1    # "dyn":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "dynObj":Lcom/google/gson/Gson;
    .restart local v5    # "key":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 841
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public requestBillPaymentFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "companyId"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/String;

    .prologue
    .line 785
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 786
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    if-eqz p2, :cond_0

    .line 788
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    :cond_0
    const-string v2, "CompanyID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    new-instance v1, Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 794
    .local v1, "request":Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 795
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 796
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BillPaymentFeeRequest;->run()V

    .line 797
    return-void
.end method

.method public requestBillPaymentGetBills(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "companyId"    # Ljava/lang/String;
    .param p4, "referenceNumber"    # Ljava/lang/String;
    .param p5, "IdType"    # Ljava/lang/String;

    .prologue
    .line 927
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 928
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v2, "CompanyID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    const-string v2, "ReferenceNumber"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 933
    const-string v2, "IdType"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 937
    .local v1, "request":Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 938
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 939
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsRequest;->run()V

    .line 940
    return-void
.end method

.method public requestCashInConfirmationList(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 914
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 915
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    new-instance v1, Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 918
    .local v1, "request":Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 919
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 920
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CashInConfirmationListRequest;->run()V

    .line 921
    return-void
.end method

.method public requestCashout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "transactionDescirption"    # Ljava/lang/String;
    .param p5, "walletId"    # Ljava/lang/String;
    .param p6, "amount"    # Ljava/lang/Float;

    .prologue
    .line 619
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 620
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "AgentID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    if-eqz p5, :cond_0

    .line 627
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    new-instance v1, Lcom/tigo/mfsapp/service/CashoutRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CashoutRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 632
    .local v1, "request":Lcom/tigo/mfsapp/service/CashoutRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CashoutRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 633
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CashoutRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 634
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CashoutRequest;->run()V

    .line 635
    return-void
.end method

.method public requestCashoutConfirmationApproverTransaction(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "txnId"    # Ljava/lang/String;
    .param p3, "approve"    # Z
    .param p4, "fee"    # Ljava/lang/Float;

    .prologue
    .line 896
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 897
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    const-string v2, "TxnId"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    if-eqz p3, :cond_0

    .line 900
    const-string v2, "Action"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :goto_0
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v1, Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 908
    .local v1, "request":Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 909
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 910
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;->run()V

    .line 911
    return-void

    .line 902
    .end local v1    # "request":Lcom/tigo/mfsapp/service/CashoutConfirmationApproverTransactionRequest;
    :cond_0
    const-string v2, "Action"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestCashoutConfirmationList(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 886
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 887
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    new-instance v1, Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 890
    .local v1, "request":Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 891
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 892
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CashOutConfirmationListRequest;->run()V

    .line 893
    return-void
.end method

.method public requestCashoutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 416
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 417
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v3, "TargetMSISDN"

    invoke-virtual {v0, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v3, "Amount"

    invoke-virtual {v0, v3, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v2, "1"

    .line 423
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 424
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 427
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    new-instance v1, Lcom/tigo/mfsapp/service/CashoutFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/CashoutFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 430
    .local v1, "request":Lcom/tigo/mfsapp/service/CashoutFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CashoutFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 431
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CashoutFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 432
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CashoutFeeRequest;->run()V

    .line 433
    return-void
.end method

.method public requestChangeLanguage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 1052
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1053
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    const-string v2, "LanguageKey"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    new-instance v1, Lcom/tigo/mfsapp/service/ChangeLanguageRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/ChangeLanguageRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1057
    .local v1, "request":Lcom/tigo/mfsapp/service/ChangeLanguageRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/ChangeLanguageRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1058
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/ChangeLanguageRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1059
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/ChangeLanguageRequest;->run()V

    .line 1060
    return-void
.end method

.method public requestChangePinCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "oldPINCode"    # Ljava/lang/String;
    .param p3, "newPINCode"    # Ljava/lang/String;
    .param p4, "confirmedPINCode"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 172
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 173
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_0
    const-string v2, "GUID"

    const-string v3, ""

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "OldPINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v2, "NewPINCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v2, "ConfirmedPINCode"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Lcom/tigo/mfsapp/service/ChangePinCodeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/ChangePinCodeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 181
    .local v1, "request":Lcom/tigo/mfsapp/service/ChangePinCodeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/ChangePinCodeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 182
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/ChangePinCodeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 183
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/ChangePinCodeRequest;->run()V

    .line 184
    return-void
.end method

.method public requestChangeSecurityQuestion(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "questionID"    # I
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    .line 187
    new-instance v1, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v1}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 188
    .local v1, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v1, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v3, "QuestionID"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :try_start_0
    const-string v3, "Answer"

    const-string v4, "UTF-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :goto_0
    new-instance v2, Lcom/tigo/mfsapp/service/ChangeQuestionRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Lcom/tigo/mfsapp/service/ChangeQuestionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 200
    .local v2, "request":Lcom/tigo/mfsapp/service/ChangeQuestionRequest;
    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/service/ChangeQuestionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 201
    invoke-virtual {v2, p0}, Lcom/tigo/mfsapp/service/ChangeQuestionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 202
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/ChangeQuestionRequest;->run()V

    .line 203
    return-void

    .line 194
    .end local v2    # "request":Lcom/tigo/mfsapp/service/ChangeQuestionRequest;
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestCommissionStatementList(Ljava/lang/String;II)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "month"    # I
    .param p3, "PageNumber"    # I

    .prologue
    .line 1120
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1121
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v2, "month"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string v2, "PageNumber"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    new-instance v1, Lcom/tigo/mfsapp/service/CommissionStatementListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CommissionStatementListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1126
    .local v1, "request":Lcom/tigo/mfsapp/service/CommissionStatementListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CommissionStatementListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1127
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CommissionStatementListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1128
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CommissionStatementListRequest;->run()V

    .line 1129
    return-void
.end method

.method public requestConfirmInternationalRemittancePickUpByCustomer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;

    .prologue
    .line 980
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 981
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v2, "Reference"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 985
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 986
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 987
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmRequest;->run()V

    .line 988
    return-void
.end method

.method public requestConfirmInternationalRemittanceSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;

    .prologue
    .line 1015
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1016
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v2, "Reference"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1020
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1021
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1022
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittanceConfirmSendRequest;->run()V

    .line 1023
    return-void
.end method

.method public requestCreateMerchantPayment(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1042
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1043
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    new-instance v1, Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1046
    .local v1, "request":Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1047
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1048
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/CreateMerchantPaymentRequest;->run()V

    .line 1049
    return-void
.end method

.method public requestDepositMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "walletId"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 563
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 564
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    if-eqz p4, :cond_0

    .line 568
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    new-instance v1, Lcom/tigo/mfsapp/service/DepositMoneyRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DepositMoneyRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 574
    .local v1, "request":Lcom/tigo/mfsapp/service/DepositMoneyRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DepositMoneyRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 575
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DepositMoneyRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 576
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DepositMoneyRequest;->run()V

    .line 577
    return-void
.end method

.method public requestDepositMoneyCommission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 551
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 552
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    new-instance v1, Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 557
    .local v1, "request":Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 558
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 559
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DepositMoneyCommissionRequest;->run()V

    .line 560
    return-void
.end method

.method public requestDepositMoneyFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 531
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 532
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const-string v3, "TargetMSISDN"

    invoke-virtual {v0, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const-string v3, "Amount"

    invoke-virtual {v0, v3, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    const-string v2, "1"

    .line 538
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 539
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 542
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    new-instance v1, Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 545
    .local v1, "request":Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 546
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 547
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DepositMoneyFeeRequest;->run()V

    .line 548
    return-void
.end method

.method public requestDeregisterAllDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "SessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;

    .prologue
    .line 261
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 262
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    new-instance v1, Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 267
    .local v1, "request":Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 268
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 269
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DevicesDeregisterAllRequest;->run()V

    .line 270
    return-void
.end method

.method public requestDeregisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "SessionToken"    # Ljava/lang/String;
    .param p2, "GUID"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 237
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "GUIDToDeactivate"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v1, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 242
    .local v1, "request":Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 243
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 244
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->run()V

    .line 245
    return-void
.end method

.method public requestDeregisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "SessionToken"    # Ljava/lang/String;
    .param p2, "GUID"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;
    .param p4, "unencrypted"    # Ljava/lang/Boolean;

    .prologue
    .line 248
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 249
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v2, "GUIDToDeactivate"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v2, "Unencrypted"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v1, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 255
    .local v1, "request":Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 256
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 257
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DevicesDeregisterRequest;->run()V

    .line 258
    return-void
.end method

.method public requestDevicesList(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 858
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 859
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    new-instance v1, Lcom/tigo/mfsapp/service/DevicesListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/DevicesListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 862
    .local v1, "request":Lcom/tigo/mfsapp/service/DevicesListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/DevicesListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 863
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/DevicesListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 864
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DevicesListRequest;->run()V

    .line 865
    return-void
.end method

.method public requestGetAgentDetail(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1091
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1092
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string v2, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    new-instance v1, Lcom/tigo/mfsapp/service/AgentDetailRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/AgentDetailRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1097
    .local v1, "request":Lcom/tigo/mfsapp/service/AgentDetailRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/AgentDetailRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1098
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/AgentDetailRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1099
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/AgentDetailRequest;->run()V

    .line 1100
    return-void
.end method

.method public requestGetMarks(Ljava/lang/String;Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V
    .locals 12
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam;

    .prologue
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 1063
    new-instance v1, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v1}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1064
    .local v1, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v5, "SessionToken"

    invoke-virtual {v1, v5, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1067
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;->getLat()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->getLat()D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1068
    .local v2, "lat":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;->getLng()D

    move-result-wide v6

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->getLng()D

    move-result-wide v8

    add-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "lng":Ljava/lang/String;
    const-string v5, "Latitude"

    invoke-virtual {v1, v5, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    const-string v5, "Longitude"

    invoke-virtual {v1, v5, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    new-instance v4, Lcom/tigo/mfsapp/service/MarksRequest;

    iget-object v5, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v4, v5}, Lcom/tigo/mfsapp/service/MarksRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1073
    .local v4, "request":Lcom/tigo/mfsapp/service/MarksRequest;
    invoke-virtual {v4, v1}, Lcom/tigo/mfsapp/service/MarksRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1074
    invoke-virtual {v4, p0}, Lcom/tigo/mfsapp/service/MarksRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1075
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/MarksRequest;->run()V

    .line 1076
    return-void
.end method

.method public requestGetMerchantDetail(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1079
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1080
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1082
    const-string v2, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    new-instance v1, Lcom/tigo/mfsapp/service/MerchantDetailRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/MerchantDetailRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1085
    .local v1, "request":Lcom/tigo/mfsapp/service/MerchantDetailRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MerchantDetailRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1086
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MerchantDetailRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1087
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MerchantDetailRequest;->run()V

    .line 1088
    return-void
.end method

.method public requestGetPins(Ljava/lang/String;Lcom/tigo/mfsapp/model/maps/GetMarksParam;I)V
    .locals 8
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "params"    # Lcom/tigo/mfsapp/model/maps/GetMarksParam;
    .param p3, "pageNumber"    # I

    .prologue
    .line 1103
    new-instance v1, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v1}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1104
    .local v1, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v5, "SessionToken"

    invoke-virtual {v1, v5, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1106
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, "sw":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1108
    .local v2, "ne":Ljava/lang/String;
    const-string v5, "SW"

    invoke-virtual {v1, v5, v4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1109
    const-string v5, "NE"

    invoke-virtual {v1, v5, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    const-string v5, "MinScreenSide"

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getMinScreenSide()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    const-string v5, "Type"

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    const-string v5, "PageNumber"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    new-instance v3, Lcom/tigo/mfsapp/service/PinListRequest;

    iget-object v5, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v5}, Lcom/tigo/mfsapp/service/PinListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1114
    .local v3, "request":Lcom/tigo/mfsapp/service/PinListRequest;
    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/service/PinListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1115
    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/service/PinListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1116
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/PinListRequest;->run()V

    .line 1117
    return-void
.end method

.method public requestGetSecurityQuestion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;

    .prologue
    .line 303
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 304
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "GUID"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v1, Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 308
    .local v1, "request":Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 309
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 310
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/GetSecurityQuestionRequest;->run()V

    .line 311
    return-void
.end method

.method public requestHeaderEnrichmentTokenForServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "GUID"    # Ljava/lang/String;

    .prologue
    .line 1506
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1507
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "Code"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    new-instance v1, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1512
    .local v1, "request":Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "staging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1513
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichementName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0659632375"

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getHeMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    :cond_1
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1517
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1518
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/HERegisterTokenForServicesRequest;->run()V

    .line 1519
    return-void
.end method

.method public requestHeaderEnrichmentTokenRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;

    .prologue
    .line 1488
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1489
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "Code"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    new-instance v1, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1494
    .local v1, "request":Lcom/tigo/mfsapp/service/HERegisterTokenRequest;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "staging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1495
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichementName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0659632375"

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getHeMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1498
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichmentURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->setURL(Ljava/lang/String;)V

    .line 1499
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1500
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1501
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/HERegisterTokenRequest;->run()V

    .line 1502
    return-void
.end method

.method public requestInformationActivateNewUsers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;

    .prologue
    .line 1334
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1335
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    const-string v2, "SubscriberMSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    new-instance v1, Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1339
    .local v1, "request":Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1340
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1341
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersRequest;->run()V

    .line 1342
    return-void
.end method

.method public requestInterestPayment(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 721
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 722
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    new-instance v1, Lcom/tigo/mfsapp/service/InterestPaymentRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InterestPaymentRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 725
    .local v1, "request":Lcom/tigo/mfsapp/service/InterestPaymentRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InterestPaymentRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 726
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InterestPaymentRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 727
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InterestPaymentRequest;->run()V

    .line 728
    return-void
.end method

.method public requestInternationalRemittanceMerchantPaymetConfirm(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "txnId"    # Ljava/lang/String;
    .param p3, "approve"    # Z

    .prologue
    .line 1026
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1027
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    const-string v2, "TxnId"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1029
    if-eqz p3, :cond_0

    .line 1030
    const-string v2, "Action"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    :goto_0
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1036
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1037
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1038
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;->run()V

    .line 1039
    return-void

    .line 1032
    .end local v1    # "request":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetConfirmRequest;
    :cond_0
    const-string v2, "Action"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public requestInternationalRemittancePickUpByCustomer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "reference"    # Ljava/lang/String;
    .param p3, "kyc"    # Ljava/lang/String;

    .prologue
    .line 953
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 954
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    const-string v2, "Reference"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 957
    const-string v2, "Kyc"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 961
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 962
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 963
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerRequest;->run()V

    .line 964
    return-void
.end method

.method public requestInternationalRemittancePickUpByCustomerCompanies(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 943
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 944
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 947
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 948
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 949
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCompaniesRequest;->run()V

    .line 950
    return-void
.end method

.method public requestInternationalRemittancePickUpByCustomerEnquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "paymentAggregatorId"    # Ljava/lang/String;
    .param p4, "remittIDNumber"    # Ljava/lang/String;

    .prologue
    .line 967
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 968
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v2, "PinCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v2, "RemittancePartnerId"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 971
    const-string v2, "RemittIDNumber"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 974
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 975
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 976
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireRequest;->run()V

    .line 977
    return-void
.end method

.method public requestInternationalRemittanceSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "receiverName"    # Ljava/lang/String;
    .param p3, "receiverID"    # Ljava/lang/String;
    .param p4, "receiverCountry"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/String;

    .prologue
    .line 1001
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1002
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    const-string v2, "ReceiverName"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string v2, "ReceiverID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v2, "ReceiverCountry"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1009
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1010
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1011
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittanceSendRequest;->run()V

    .line 1012
    return-void
.end method

.method public requestLookup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;

    .prologue
    .line 337
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 338
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 339
    .local v0, "arr":Lorg/json/JSONArray;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 341
    .local v4, "tigoEntity":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "MSISDN"

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 343
    const-string v5, "SessionToken"

    invoke-virtual {v2, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 344
    const-string v5, "TigoEntities"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    new-instance v3, Lcom/tigo/mfsapp/service/LookupRequest;

    iget-object v5, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v5}, Lcom/tigo/mfsapp/service/LookupRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 350
    .local v3, "request":Lcom/tigo/mfsapp/service/LookupRequest;
    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/service/LookupRequest;->setJsonParameters(Lorg/json/JSONObject;)V

    .line 351
    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/service/LookupRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 352
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/LookupRequest;->run()V

    .line 353
    return-void

    .line 345
    .end local v3    # "request":Lcom/tigo/mfsapp/service/LookupRequest;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestMerchantPaymentList(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 991
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 992
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    new-instance v1, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 995
    .local v1, "request":Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 996
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 997
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InternationalRemittanceMerchantPaymetRequest;->run()V

    .line 998
    return-void
.end method

.method public requestMiniStatement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "walletId"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "dateFrom"    # Ljava/lang/String;
    .param p6, "dateTo"    # Ljava/lang/String;
    .param p7, "phone"    # Ljava/lang/String;
    .param p8, "transactions"    # Ljava/lang/Integer;

    .prologue
    .line 661
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 662
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    if-eqz p3, :cond_0

    .line 665
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    :cond_0
    if-eqz p4, :cond_1

    .line 668
    const-string v2, "Type"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    :cond_1
    if-eqz p5, :cond_2

    .line 671
    const-string v2, "DateFrom"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    :cond_2
    if-eqz p6, :cond_3

    .line 674
    const-string v2, "DateTo"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_3
    if-eqz p7, :cond_4

    .line 677
    const-string v2, "Phone"

    invoke-virtual {v0, v2, p7}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    :cond_4
    const-string v2, "Transactions"

    invoke-virtual {v0, v2, p8}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    new-instance v1, Lcom/tigo/mfsapp/service/MiniStatementRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/MiniStatementRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 682
    .local v1, "request":Lcom/tigo/mfsapp/service/MiniStatementRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MiniStatementRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 683
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MiniStatementRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 684
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MiniStatementRequest;->run()V

    .line 685
    return-void
.end method

.method public requestMoneyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "walletId"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 514
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 515
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    if-eqz p4, :cond_0

    .line 519
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v1, Lcom/tigo/mfsapp/service/MoneyTransferRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/MoneyTransferRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 525
    .local v1, "request":Lcom/tigo/mfsapp/service/MoneyTransferRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MoneyTransferRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 526
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MoneyTransferRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 527
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MoneyTransferRequest;->run()V

    .line 528
    return-void
.end method

.method public requestMoneyTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 494
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 495
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    const-string v3, "TargetMSISDN"

    invoke-virtual {v0, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    const-string v3, "Amount"

    invoke-virtual {v0, v3, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v2, "1"

    .line 501
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 502
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 505
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    new-instance v1, Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 508
    .local v1, "request":Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 509
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 510
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MoneyTransferFeeRequest;->run()V

    .line 511
    return-void
.end method

.method public requestMonthlyStatement(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "monthsFromNow"    # I
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "fileType"    # Ljava/lang/String;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .param p5, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1356
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1357
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    const-string v2, "MonthsFromNow"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    const-string v2, "Email"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    const-string v2, "FileType"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1363
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    new-instance v1, Lcom/tigo/mfsapp/service/MonthlyStatementRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/MonthlyStatementRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1366
    .local v1, "request":Lcom/tigo/mfsapp/service/MonthlyStatementRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MonthlyStatementRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1367
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MonthlyStatementRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1368
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MonthlyStatementRequest;->run()V

    .line 1369
    return-void
.end method

.method public requestMonthlyStatementFee(ILjava/lang/String;)V
    .locals 4
    .param p1, "monthsFromNow"    # I
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1372
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1373
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    const-string v2, "MonthsFromNow"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    new-instance v1, Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1377
    .local v1, "request":Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1378
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1379
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/MonthlyStatementFeeRequest;->run()V

    .line 1380
    return-void
.end method

.method public requestParameters()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/tigo/mfsapp/service/ParametersRequest;

    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/service/ParametersRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 332
    .local v0, "request":Lcom/tigo/mfsapp/service/ParametersRequest;
    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/service/ParametersRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 333
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/ParametersRequest;->run()V

    .line 334
    return-void
.end method

.method public requestPeer2peer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "walletId"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "transactionDescription"    # Ljava/lang/String;
    .param p7, "fee"    # Ljava/lang/Float;

    .prologue
    .line 476
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 477
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    if-eqz p4, :cond_0

    .line 482
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p7}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    new-instance v1, Lcom/tigo/mfsapp/service/Peer2peerRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/Peer2peerRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 488
    .local v1, "request":Lcom/tigo/mfsapp/service/Peer2peerRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/Peer2peerRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 489
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/Peer2peerRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 490
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Peer2peerRequest;->run()V

    .line 491
    return-void
.end method

.method public requestPeer2peerFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 455
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 456
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v3, "TargetMSISDN"

    invoke-virtual {v0, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const-string v3, "Amount"

    invoke-virtual {v0, v3, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v2, "1"

    .line 462
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 463
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 466
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    new-instance v1, Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 469
    .local v1, "request":Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 470
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 471
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Peer2peerFeeRequest;->run()V

    .line 472
    return-void
.end method

.method public requestPendingTransactionCount(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1132
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1133
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-instance v1, Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1136
    .local v1, "request":Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1137
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1138
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/PendingTransactionCountRequest;->run()V

    .line 1139
    return-void
.end method

.method public requestPendingVouchersList(Ljava/lang/String;I)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "PageNumber"    # I

    .prologue
    .line 1142
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1143
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v2, "PageNumber"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    new-instance v1, Lcom/tigo/mfsapp/service/PendingVouchersListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/PendingVouchersListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1147
    .local v1, "request":Lcom/tigo/mfsapp/service/PendingVouchersListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/PendingVouchersListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1148
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/PendingVouchersListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1149
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/PendingVouchersListRequest;->run()V

    .line 1150
    return-void
.end method

.method public requestRegisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "email"    # Ljava/lang/String;
    .param p4, "UDID"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x14

    .line 206
    new-instance v2, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v2}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 207
    .local v2, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v4, "GUID"

    invoke-virtual {v2, v4, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v4, "MSISDN"

    invoke-virtual {v2, v4, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    :try_start_0
    const-string v4, "Email"

    const-string v5, "UTF-8"

    invoke-static {p3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_0
    :goto_0
    const-string v4, "SourceSystem"

    const-string v5, "App"

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "android_id":Ljava/lang/String;
    const-string v4, "UDID"

    invoke-virtual {v2, v4, v0}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v4, "Manufacturer"

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v5, "Model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v5, v4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v4, "Type"

    const-string v5, "Phone"

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v4, "LanguageKey"

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "language"

    const-string v7, ""

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 226
    const-string v4, "AccessToken"

    const-string v5, ""

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getHEAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_1
    new-instance v3, Lcom/tigo/mfsapp/service/RegisterDeviceRequest;

    iget-object v4, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v4}, Lcom/tigo/mfsapp/service/RegisterDeviceRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 230
    .local v3, "request":Lcom/tigo/mfsapp/service/RegisterDeviceRequest;
    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/service/RegisterDeviceRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 231
    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/service/RegisterDeviceRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 232
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/RegisterDeviceRequest;->run()V

    .line 233
    return-void

    .line 212
    .end local v0    # "android_id":Ljava/lang/String;
    .end local v3    # "request":Lcom/tigo/mfsapp/service/RegisterDeviceRequest;
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e1":Ljava/io/UnsupportedEncodingException;
    .restart local v0    # "android_id":Ljava/lang/String;
    :cond_2
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_1
.end method

.method public requestRegisterDeviceVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "SMSCode"    # Ljava/lang/String;

    .prologue
    .line 273
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 274
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "GUID"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v2, "SMSCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    new-instance v1, Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 279
    .local v1, "request":Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 280
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 281
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/RegisterDeviceVerifyRequest;->run()V

    .line 282
    return-void
.end method

.method public requestRegisterNewUsers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "MSISDN"    # Ljava/lang/String;
    .param p5, "idType"    # Ljava/lang/String;
    .param p6, "idNumber"    # Ljava/lang/String;
    .param p7, "dateOfBirth"    # Ljava/lang/String;
    .param p8, "nationality"    # Ljava/lang/String;
    .param p9, "residencialAddress"    # Ljava/lang/String;
    .param p10, "crfNumber"    # Ljava/lang/String;

    .prologue
    .line 1313
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1314
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    const-string v2, "FirstName"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    const-string v2, "LastName"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    const-string v2, "Nationality"

    invoke-virtual {v0, v2, p8}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string v2, "ResidencialAddress"

    invoke-virtual {v0, v2, p9}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    const-string v2, "IdType"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    const-string v2, "IdNumber"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v2, p7}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    const-string v2, "CRFNumber"

    invoke-virtual {v0, v2, p10}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    new-instance v1, Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1328
    .local v1, "request":Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1329
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1330
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/RegisterNewUsersRequest;->run()V

    .line 1331
    return-void
.end method

.method public requestResendOrCancelVoucher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "SessionToken"    # Ljava/lang/String;
    .param p2, "voucherID"    # Ljava/lang/String;
    .param p3, "pincode"    # Ljava/lang/String;
    .param p4, "actionSubmit"    # I

    .prologue
    .line 1153
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1154
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string v2, "VoucherID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    const-string v2, "Action"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    new-instance v1, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1160
    .local v1, "request":Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1161
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1162
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/ResendOrCancelVoucherRequest;->run()V

    .line 1163
    return-void
.end method

.method public requestSelfRegistrationCancelRegister(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SelfRegistrationField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1458
    .local p1, "registrationFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/SelfRegistrationField;>;"
    new-instance v4, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v4}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1460
    .local v4, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 1461
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1462
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1464
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v8

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 1465
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v7

    .line 1466
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldValue()Ljava/lang/String;

    move-result-object v1

    .line 1467
    .local v1, "fieldselected":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestSelfRegistrationCancelRegister "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1469
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1464
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1477
    .end local v1    # "fieldselected":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    .line 1478
    .local v5, "p":Lcom/google/gson/Gson;
    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1479
    .local v0, "data":Ljava/lang/String;
    const-string v8, "YESICA"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    new-instance v6, Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;

    iget-object v8, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v6, v8}, Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1482
    .local v6, "request":Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;
    invoke-virtual {v6, v4}, Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1483
    invoke-virtual {v6, p0}, Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1484
    invoke-virtual {v6}, Lcom/tigo/mfsapp/service/SelfRegistrationCancelRequest;->run()V

    .line 1485
    return-void
.end method

.method public requestSelfRegistrationFields()V
    .locals 2

    .prologue
    .line 1419
    new-instance v0, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;

    iget-object v1, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1421
    .local v0, "request":Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;
    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1422
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/SelfRegistrationFieldsRequest;->run()V

    .line 1423
    return-void
.end method

.method public requestSelfRegistrationRegister(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SelfRegistrationField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1427
    .local p1, "registrationFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/SelfRegistrationField;>;"
    new-instance v3, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v3}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1429
    .local v3, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 1430
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1431
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v6

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 1434
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getName()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription()Ljava/lang/String;

    move-result-object v5

    .line 1435
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getFieldValue()Ljava/lang/String;

    move-result-object v0

    .line 1436
    .local v0, "fieldselected":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestSelfRegistrationCancelRegister "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1438
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SelfRegistrationField;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField;->getOptions()[Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SelfRegistrationField$FieldOptions;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1433
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1450
    .end local v0    # "fieldselected":Ljava/lang/String;
    .end local v2    # "j":I
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;

    iget-object v6, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v4, v6}, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1451
    .local v4, "request":Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;
    invoke-virtual {v4, v3}, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1452
    invoke-virtual {v4, p0}, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1453
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/SelfRegistrationRegisterRequest;->run()V

    .line 1454
    return-void
.end method

.method public requestSendMoneyGenerateVoucher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "msisdn"    # Ljava/lang/String;
    .param p4, "transactionDescription"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1285
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1286
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    new-instance v1, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1294
    .local v1, "request":Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1295
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1296
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherRequest;->run()V

    .line 1297
    return-void
.end method

.method public requestSendMoneyGenerateVoucherFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 1300
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1301
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    const-string v2, "AgentMSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    new-instance v1, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1306
    .local v1, "request":Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1307
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1308
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SendMoneyGenerateVoucherFeeRequest;->run()V

    .line 1309
    return-void
.end method

.method public requestSetInterestPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 731
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 732
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    const-string v2, "PinCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    const-string v2, "OptionID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    new-instance v1, Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 737
    .local v1, "request":Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 738
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 739
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InterestSetPaymentRequest;->run()V

    .line 740
    return-void
.end method

.method public requestSubscriptionCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "subscriptionCode"    # Ljava/lang/String;
    .param p4, "PinCode"    # Ljava/lang/String;
    .param p5, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1393
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1394
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const-string v2, "Wallet"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    const-string v2, "SubscriptionCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v2, "PinCode"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    new-instance v1, Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1400
    .local v1, "request":Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1401
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1402
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsCreateSubscriptionRequest;->run()V

    .line 1403
    return-void
.end method

.method public requestSubscriptionsList(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1383
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1384
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    new-instance v1, Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1387
    .local v1, "request":Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1388
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1389
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/SubscriptionsGetListRequest;->run()V

    .line 1390
    return-void
.end method

.method public requestTigoCompanies(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 764
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 765
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    new-instance v1, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 768
    .local v1, "request":Lcom/tigo/mfsapp/service/TigoCompaniesRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 769
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 770
    const-wide/32 v2, 0x6ddd00

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;->setResponseCachingTime(J)V

    .line 771
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TigoCompaniesRequest;->run()V

    .line 772
    return-void
.end method

.method public requestTigoCompanyCategories(Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 775
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 776
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    new-instance v1, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 779
    .local v1, "request":Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 780
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 781
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesRequest;->run()V

    .line 782
    return-void
.end method

.method public requestTigoEntities(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 8
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 743
    .local p2, "MSISDNList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 744
    .local v2, "jsonObject":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 746
    .local v0, "arr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 747
    .local v4, "string":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 748
    .local v5, "tigoEntity":Lorg/json/JSONObject;
    const-string v7, "MSISDN"

    invoke-virtual {v5, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 749
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 753
    .end local v4    # "string":Ljava/lang/String;
    .end local v5    # "tigoEntity":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 757
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    new-instance v3, Lcom/tigo/mfsapp/service/TigoEntitiesRequest;

    iget-object v6, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v6}, Lcom/tigo/mfsapp/service/TigoEntitiesRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 758
    .local v3, "request":Lcom/tigo/mfsapp/service/TigoEntitiesRequest;
    invoke-virtual {v3, v2}, Lcom/tigo/mfsapp/service/TigoEntitiesRequest;->setJsonParameters(Lorg/json/JSONObject;)V

    .line 759
    invoke-virtual {v3, p0}, Lcom/tigo/mfsapp/service/TigoEntitiesRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 760
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/TigoEntitiesRequest;->run()V

    .line 761
    return-void

    .line 751
    .end local v3    # "request":Lcom/tigo/mfsapp/service/TigoEntitiesRequest;
    :cond_0
    :try_start_1
    const-string v6, "SessionToken"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 752
    const-string v6, "TigoEntities"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public requestTopup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "pinCode"    # Ljava/lang/String;
    .param p3, "targetMSISDN"    # Ljava/lang/String;
    .param p4, "transactionDescription"    # Ljava/lang/String;
    .param p5, "walletId"    # Ljava/lang/String;
    .param p6, "amount"    # Ljava/lang/Float;
    .param p7, "fee"    # Ljava/lang/Float;

    .prologue
    .line 396
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 397
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v2, "PINCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v2, "TargetMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    if-eqz p5, :cond_0

    .line 404
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :cond_0
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p7}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v1, Lcom/tigo/mfsapp/service/TopupRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/TopupRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 410
    .local v1, "request":Lcom/tigo/mfsapp/service/TopupRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/TopupRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 411
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/TopupRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 412
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TopupRequest;->run()V

    .line 413
    return-void
.end method

.method public requestTopupFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 375
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 376
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "SessionToken"

    invoke-virtual {v0, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v3, "TargetMSISDN"

    invoke-virtual {v0, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v3, "Amount"

    invoke-virtual {v0, v3, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v2, "1"

    .line 382
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 383
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 386
    :cond_0
    const-string v3, "WalletID"

    invoke-virtual {v0, v3, v2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Lcom/tigo/mfsapp/service/TopupFeeRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v3}, Lcom/tigo/mfsapp/service/TopupFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 389
    .local v1, "request":Lcom/tigo/mfsapp/service/TopupFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/TopupFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 390
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/TopupFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 391
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TopupFeeRequest;->run()V

    .line 392
    return-void
.end method

.method public requestValidateSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "GUID"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "answer"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v1, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v1}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 286
    .local v1, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v3, "GUID"

    invoke-virtual {v1, v3, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v3, "MSISDN"

    invoke-virtual {v1, v3, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :try_start_0
    const-string v3, "Answer"

    const-string v4, "UTF-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    new-instance v2, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;

    iget-object v3, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v2, v3}, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 297
    .local v2, "request":Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;
    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 298
    invoke-virtual {v2, p0}, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 299
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;->run()V

    .line 300
    return-void

    .line 291
    .end local v2    # "request":Lcom/tigo/mfsapp/service/ValidateSecurityQuestionRequest;
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e1":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public requestWithDrawMoneyCashOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "agentMsisdn"    # Ljava/lang/String;
    .param p4, "transactionDescription"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1254
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1255
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1256
    if-eqz p2, :cond_0

    .line 1257
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    :cond_0
    const-string v2, "AgentMSISDN"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v2, "TransactionDescription"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1265
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1266
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1267
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutRequest;->run()V

    .line 1268
    return-void
.end method

.method public requestWithDrawMoneyCashOutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "amount"    # Ljava/lang/Float;

    .prologue
    .line 1231
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1232
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    const-string v2, "AgentMSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1237
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1238
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1239
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawMoneyCashOutFeeRequest;->run()V

    .line 1240
    return-void
.end method

.method public requestWithDrawMoneyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "VoucherCode"    # Ljava/lang/String;

    .prologue
    .line 1271
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1272
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1277
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1278
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1279
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferRequest;->run()V

    .line 1280
    return-void
.end method

.method public requestWithDrawMoneyTransferVoucher(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "VoucherNumber"    # Ljava/lang/String;

    .prologue
    .line 1243
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1244
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1248
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1249
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1250
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherRequest;->run()V

    .line 1251
    return-void
.end method

.method public requestWithDrawVoucherCashOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "VoucherCode"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/Float;
    .param p5, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1198
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1199
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    if-eqz p2, :cond_0

    .line 1201
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    :cond_0
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1208
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1209
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1210
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutRequest;->run()V

    .line 1211
    return-void
.end method

.method public requestWithDrawVoucherCashOutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "walletId"    # Ljava/lang/String;
    .param p3, "VoucherCode"    # Ljava/lang/String;
    .param p4, "amount"    # Ljava/lang/Float;

    .prologue
    .line 1166
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1167
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    if-eqz p2, :cond_0

    .line 1169
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    :cond_0
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1175
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1176
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1177
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeRequest;->run()V

    .line 1178
    return-void
.end method

.method public requestWithDrawVoucherDeposit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "walletId"    # Ljava/lang/String;
    .param p4, "VoucherCode"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;
    .param p6, "fee"    # Ljava/lang/Float;

    .prologue
    .line 1214
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1215
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    const-string v2, "Fee"

    invoke-virtual {v0, v2, p6}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1223
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1224
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1225
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositRequest;->run()V

    .line 1226
    return-void
.end method

.method public requestWithDrawVoucherDepositFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 3
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "MSISDN"    # Ljava/lang/String;
    .param p3, "walletId"    # Ljava/lang/String;
    .param p4, "VoucherCode"    # Ljava/lang/String;
    .param p5, "amount"    # Ljava/lang/Float;

    .prologue
    .line 1181
    new-instance v0, Lcom/tigo/mfsapp/service/JsonParameters;

    invoke-direct {v0}, Lcom/tigo/mfsapp/service/JsonParameters;-><init>()V

    .line 1182
    .local v0, "jsonParameters":Lcom/tigo/mfsapp/service/JsonParameters;
    const-string v2, "SessionToken"

    invoke-virtual {v0, v2, p1}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    const-string v2, "MSISDN"

    invoke-virtual {v0, v2, p2}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    const-string v2, "Amount"

    invoke-virtual {v0, v2, p5}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    if-eqz p3, :cond_0

    .line 1186
    const-string v2, "WalletID"

    invoke-virtual {v0, v2, p3}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    :cond_0
    const-string v2, "VoucherCode"

    invoke-virtual {v0, v2, p4}, Lcom/tigo/mfsapp/service/JsonParameters;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    new-instance v1, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Connection;->poolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 1192
    .local v1, "request":Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;->setJsonParameters(Lcom/tigo/mfsapp/service/JsonParameters;)V

    .line 1193
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;->setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 1194
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeRequest;->run()V

    .line 1195
    return-void
.end method

.method public setCanceled(Z)V
    .locals 0
    .param p1, "canceled"    # Z

    .prologue
    .line 1526
    iput-boolean p1, p0, Lcom/tigo/mfsapp/service/Connection;->canceled:Z

    .line 1527
    return-void
.end method

.method public setConnectionListener(Lcom/tigo/mfsapp/service/Connection$ConnectionListener;)V
    .locals 0
    .param p1, "connectionListener"    # Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Connection;->connectionListener:Lcom/tigo/mfsapp/service/Connection$ConnectionListener;

    .line 71
    return-void
.end method
