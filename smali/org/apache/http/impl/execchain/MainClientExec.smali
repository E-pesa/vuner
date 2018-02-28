.class public Lorg/apache/http/impl/execchain/MainClientExec;
.super Ljava/lang/Object;
.source "MainClientExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

.field private final connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

.field private final keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field private final proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

.field private final requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

.field private final reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

.field private final routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

.field private final targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

.field private final userTokenHandler:Lorg/apache/http/client/UserTokenHandler;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V
    .locals 4
    .param p1, "requestExecutor"    # Lorg/apache/http/protocol/HttpRequestExecutor;
    .param p2, "connManager"    # Lorg/apache/http/conn/HttpClientConnectionManager;
    .param p3, "reuseStrategy"    # Lorg/apache/http/ConnectionReuseStrategy;
    .param p4, "keepAliveStrategy"    # Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
    .param p5, "targetAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p6, "proxyAuthStrategy"    # Lorg/apache/http/client/AuthenticationStrategy;
    .param p7, "userTokenHandler"    # Lorg/apache/http/client/UserTokenHandler;

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, "HTTP request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    const-string v0, "Client connection manager"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 114
    const-string v0, "Connection reuse strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    const-string v0, "Connection keep alive strategy"

    invoke-static {p4, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 116
    const-string v0, "Target authentication strategy"

    invoke-static {p5, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 117
    const-string v0, "Proxy authentication strategy"

    invoke-static {p6, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string v0, "User token handler"

    invoke-static {p7, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 119
    new-instance v0, Lorg/apache/http/impl/auth/HttpAuthenticator;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/HttpAuthenticator;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    .line 120
    new-instance v0, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/http/HttpRequestInterceptor;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/http/protocol/RequestTargetHostHC4;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestTargetHostHC4;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    .line 122
    new-instance v0, Lorg/apache/http/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lorg/apache/http/conn/routing/BasicRouteDirector;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    .line 123
    iput-object p1, p0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    .line 124
    iput-object p2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    .line 125
    iput-object p3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    .line 126
    iput-object p4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    .line 127
    iput-object p5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 128
    iput-object p6, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    .line 129
    iput-object p7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    .line 130
    return-void
.end method

.method private createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 2
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "hop"    # I
    .param p3, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 540
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 16
    .param p1, "proxyAuthState"    # Lorg/apache/http/auth/AuthStateHC4;
    .param p2, "managedConn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v10

    .line 446
    .local v10, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v10}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v15

    .line 448
    .local v15, "timeout":I
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v14

    .line 449
    .local v14, "target":Lorg/apache/http/HttpHost;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 450
    .local v4, "proxy":Lorg/apache/http/HttpHost;
    const/4 v5, 0x0

    .line 452
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {v14}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "authority":Ljava/lang/String;
    new-instance v11, Lorg/apache/http/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/HttpRequest;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v6

    invoke-direct {v11, v3, v9, v6}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/ProtocolVersion;)V

    .line 455
    .local v11, "connect":Lorg/apache/http/HttpRequest;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyHttpProcessor:Lorg/apache/http/protocol/HttpProcessor;

    move-object/from16 v0, p5

    invoke-virtual {v3, v11, v6, v0}, Lorg/apache/http/protocol/HttpRequestExecutor;->preProcess(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/protocol/HttpContext;)V

    .line 457
    :cond_0
    :goto_0
    if-nez v5, :cond_6

    .line 458
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v15, :cond_2

    move v3, v15

    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-interface {v6, v0, v1, v3, v2}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 466
    :cond_1
    const-string v3, "Proxy-Authorization"

    invoke-interface {v11, v3}, Lorg/apache/http/HttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v11, v0, v1}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 469
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v3, v11, v0, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 471
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 472
    .local v13, "status":I
    const/16 v3, 0xc8

    if-ge v13, v3, :cond_3

    .line 473
    new-instance v3, Lorg/apache/http/HttpException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected response to CONNECT request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 459
    .end local v13    # "status":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 477
    .restart local v13    # "status":I
    :cond_3
    invoke-virtual {v10}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-virtual/range {v3 .. v8}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 483
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, p5

    invoke-interface {v3, v5, v0}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 484
    const-string v3, "HttpClient"

    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 485
    const-string v3, "HttpClient"

    const-string v6, "Connection kept alive"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_4
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 489
    .local v12, "entity":Lorg/apache/http/HttpEntity;
    invoke-static {v12}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 493
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    :goto_2
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 491
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    goto :goto_2

    .line 499
    .end local v13    # "status":I
    :cond_6
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 501
    .restart local v13    # "status":I
    const/16 v3, 0x12b

    if-le v13, v3, :cond_8

    .line 504
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    .line 505
    .restart local v12    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v12, :cond_7

    .line 506
    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntityHC4;

    invoke-direct {v3, v12}, Lorg/apache/http/entity/BufferedHttpEntityHC4;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v5, v3}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 509
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 510
    new-instance v3, Lorg/apache/http/impl/execchain/TunnelRefusedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONNECT refused by proxy: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6, v5}, Lorg/apache/http/impl/execchain/TunnelRefusedException;-><init>(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    throw v3

    .line 518
    .end local v12    # "entity":Lorg/apache/http/HttpEntity;
    :cond_8
    const/4 v3, 0x0

    return v3
.end method

.method private needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z
    .locals 14
    .param p1, "targetAuthState"    # Lorg/apache/http/auth/AuthStateHC4;
    .param p2, "proxyAuthState"    # Lorg/apache/http/auth/AuthStateHC4;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "response"    # Lorg/apache/http/HttpResponse;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;

    .prologue
    .line 549
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v10

    .line 550
    .local v10, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v10}, Lorg/apache/http/client/config/RequestConfig;->isAuthenticationEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 551
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 552
    .local v1, "target":Lorg/apache/http/HttpHost;
    if-nez v1, :cond_0

    .line 553
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 555
    :cond_0
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_1

    .line 556
    new-instance v12, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v0, v2, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .local v12, "target":Lorg/apache/http/HttpHost;
    move-object v1, v12

    .line 561
    .end local v12    # "target":Lorg/apache/http/HttpHost;
    .restart local v1    # "target":Lorg/apache/http/HttpHost;
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v3, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v2, p4

    move-object v4, p1

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v13

    .line 564
    .local v13, "targetAuthRequested":Z
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 566
    .local v3, "proxy":Lorg/apache/http/HttpHost;
    if-nez v3, :cond_2

    .line 567
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v3

    .line 569
    :cond_2
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->isAuthenticationRequested(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v11

    .line 572
    .local v11, "proxyAuthRequested":Z
    if-eqz v13, :cond_3

    .line 573
    iget-object v4, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v7, p0, Lorg/apache/http/impl/execchain/MainClientExec;->targetAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object v5, v1

    move-object/from16 v6, p4

    move-object v8, p1

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    .line 581
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    .end local v11    # "proxyAuthRequested":Z
    .end local v13    # "targetAuthRequested":Z
    :goto_0
    return v0

    .line 576
    .restart local v1    # "target":Lorg/apache/http/HttpHost;
    .restart local v3    # "proxy":Lorg/apache/http/HttpHost;
    .restart local v11    # "proxyAuthRequested":Z
    .restart local v13    # "targetAuthRequested":Z
    :cond_3
    if-eqz v11, :cond_4

    .line 577
    iget-object v2, p0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    iget-object v5, p0, Lorg/apache/http/impl/execchain/MainClientExec;->proxyAuthStrategy:Lorg/apache/http/client/AuthenticationStrategy;

    move-object/from16 v4, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/apache/http/impl/auth/HttpAuthenticator;->handleAuthChallenge(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0

    .line 581
    .end local v1    # "target":Lorg/apache/http/HttpHost;
    .end local v3    # "proxy":Lorg/apache/http/HttpHost;
    .end local v11    # "proxyAuthRequested":Z
    .end local v13    # "targetAuthRequested":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    .locals 12
    .param p1, "proxyAuthState"    # Lorg/apache/http/auth/AuthStateHC4;
    .param p2, "managedConn"    # Lorg/apache/http/HttpClientConnection;
    .param p3, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p4, "request"    # Lorg/apache/http/HttpRequest;
    .param p5, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-virtual/range {p5 .. p5}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v1

    .line 363
    .local v1, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v1}, Lorg/apache/http/client/config/RequestConfig;->getConnectTimeout()I

    move-result v7

    .line 364
    .local v7, "timeout":I
    new-instance v8, Lorg/apache/http/conn/routing/RouteTracker;

    invoke-direct {v8, p3}, Lorg/apache/http/conn/routing/RouteTracker;-><init>(Lorg/apache/http/conn/routing/HttpRoute;)V

    .line 367
    .local v8, "tracker":Lorg/apache/http/conn/routing/RouteTracker;
    :cond_0
    invoke-virtual {v8}, Lorg/apache/http/conn/routing/RouteTracker;->toRoute()Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v2

    .line 368
    .local v2, "fact":Lorg/apache/http/conn/routing/HttpRoute;
    iget-object v9, p0, Lorg/apache/http/impl/execchain/MainClientExec;->routeDirector:Lorg/apache/http/conn/routing/HttpRouteDirector;

    invoke-interface {v9, p3, v2}, Lorg/apache/http/conn/routing/HttpRouteDirector;->nextStep(Lorg/apache/http/conn/routing/RouteInfo;Lorg/apache/http/conn/routing/RouteInfo;)I

    move-result v6

    .line 370
    .local v6, "step":I
    packed-switch v6, :pswitch_data_0

    .line 423
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown step indicator "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from RouteDirector."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 373
    :pswitch_0
    iget-object v10, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v7, :cond_1

    move v9, v7

    :goto_0
    move-object/from16 v0, p5

    invoke-interface {v10, p2, p3, v9, v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 378
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/routing/RouteTracker;->connectTarget(Z)V

    .line 427
    :goto_1
    if-gtz v6, :cond_0

    .line 428
    return-void

    .line 373
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 381
    :pswitch_1
    iget-object v10, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    if-lez v7, :cond_2

    move v9, v7

    :goto_2
    move-object/from16 v0, p5

    invoke-interface {v10, p2, p3, v9, v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V

    .line 386
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object v4

    .line 387
    .local v4, "proxy":Lorg/apache/http/HttpHost;
    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Lorg/apache/http/conn/routing/RouteTracker;->connectProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    .line 381
    .end local v4    # "proxy":Lorg/apache/http/HttpHost;
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 390
    :pswitch_2
    invoke-direct/range {p0 .. p5}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToTarget(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 392
    .local v5, "secure":Z
    const-string v9, "HttpClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 393
    const-string v9, "HttpClient"

    const-string v10, "Tunnel to target created."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_3
    invoke-virtual {v8, v5}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelTarget(Z)V

    goto :goto_1

    .line 403
    .end local v5    # "secure":Z
    :pswitch_3
    invoke-virtual {v2}, Lorg/apache/http/conn/routing/HttpRoute;->getHopCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .line 404
    .local v3, "hop":I
    move-object/from16 v0, p5

    invoke-direct {p0, p3, v3, v0}, Lorg/apache/http/impl/execchain/MainClientExec;->createTunnelToProxy(Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v5

    .line 405
    .restart local v5    # "secure":Z
    const-string v9, "HttpClient"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 406
    const-string v9, "HttpClient"

    const-string v10, "Tunnel to proxy created."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_4
    invoke-virtual {p3, v3}, Lorg/apache/http/conn/routing/HttpRoute;->getHopTarget(I)Lorg/apache/http/HttpHost;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Lorg/apache/http/conn/routing/RouteTracker;->tunnelProxy(Lorg/apache/http/HttpHost;Z)V

    goto :goto_1

    .line 412
    .end local v3    # "hop":I
    .end local v5    # "secure":Z
    :pswitch_4
    iget-object v9, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v0, p5

    invoke-interface {v9, p2, p3, v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    .line 413
    invoke-virtual {p3}, Lorg/apache/http/conn/routing/HttpRoute;->isSecure()Z

    move-result v9

    invoke-virtual {v8, v9}, Lorg/apache/http/conn/routing/RouteTracker;->layerProtocol(Z)V

    goto :goto_1

    .line 417
    :pswitch_5
    new-instance v9, Lorg/apache/http/HttpException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to establish route: planned = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; current = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 420
    :pswitch_6
    iget-object v9, p0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v0, p5

    invoke-interface {v9, p2, p3, v0}, Lorg/apache/http/conn/HttpClientConnectionManager;->routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V

    goto/16 :goto_1

    .line 370
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 29
    .param p1, "route"    # Lorg/apache/http/conn/routing/HttpRoute;
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpRequestWrapper;
    .param p3, "context"    # Lorg/apache/http/client/protocol/HttpClientContext;
    .param p4, "execAware"    # Lorg/apache/http/client/methods/HttpExecutionAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v4, "HTTP route"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 138
    const-string v4, "HTTP request"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 139
    const-string v4, "HTTP context"

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v26

    .line 142
    .local v26, "targetAuthState":Lorg/apache/http/auth/AuthStateHC4;
    if-nez v26, :cond_0

    .line 143
    new-instance v26, Lorg/apache/http/auth/AuthStateHC4;

    .end local v26    # "targetAuthState":Lorg/apache/http/auth/AuthStateHC4;
    invoke-direct/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 144
    .restart local v26    # "targetAuthState":Lorg/apache/http/auth/AuthStateHC4;
    const-string v4, "http.auth.target-scope"

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v5

    .line 147
    .local v5, "proxyAuthState":Lorg/apache/http/auth/AuthStateHC4;
    if-nez v5, :cond_1

    .line 148
    new-instance v5, Lorg/apache/http/auth/AuthStateHC4;

    .end local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthStateHC4;
    invoke-direct {v5}, Lorg/apache/http/auth/AuthStateHC4;-><init>()V

    .line 149
    .restart local v5    # "proxyAuthState":Lorg/apache/http/auth/AuthStateHC4;
    const-string v4, "http.auth.proxy-scope"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    :cond_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v4, :cond_2

    move-object/from16 v4, p2

    .line 153
    check-cast v4, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-static {v4}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 156
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getUserToken()Ljava/lang/Object;

    move-result-object v28

    .line 158
    .local v28, "userToken":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-interface {v4, v0, v1}, Lorg/apache/http/conn/HttpClientConnectionManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;

    move-result-object v16

    .line 159
    .local v16, "connRequest":Lorg/apache/http/conn/ConnectionRequest;
    if-eqz p4, :cond_4

    .line 160
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/conn/ConnectionRequest;->cancel()Z

    .line 162
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 164
    :cond_3
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 168
    :cond_4
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v14

    .line 172
    .local v14, "config":Lorg/apache/http/client/config/RequestConfig;
    :try_start_0
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->getConnectionRequestTimeout()I

    move-result v27

    .line 173
    .local v27, "timeout":I
    if-lez v27, :cond_9

    move/from16 v0, v27

    int-to-long v8, v0

    :goto_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    invoke-interface {v0, v8, v9, v4}, Lorg/apache/http/conn/ConnectionRequest;->get(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 185
    .local v6, "managedConn":Lorg/apache/http/HttpClientConnection;
    const-string v4, "http.connection"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->isStaleConnectionCheckEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 189
    invoke-interface {v6}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 190
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 191
    const-string v4, "HttpClient"

    const-string v7, "Stale connection check"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_5
    invoke-interface {v6}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 194
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 195
    const-string v4, "HttpClient"

    const-string v7, "Stale connection detected"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_6
    invoke-interface {v6}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 202
    :cond_7
    new-instance v15, Lorg/apache/http/impl/execchain/ConnectionHolder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->connManager:Lorg/apache/http/conn/HttpClientConnectionManager;

    invoke-direct {v15, v4, v6}, Lorg/apache/http/impl/execchain/ConnectionHolder;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/HttpClientConnection;)V

    .line 204
    .local v15, "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    if-eqz p4, :cond_8

    .line 205
    :try_start_1
    move-object/from16 v0, p4

    invoke-interface {v0, v15}, Lorg/apache/http/client/methods/HttpExecutionAware;->setCancellable(Lorg/apache/http/concurrent/Cancellable;)V

    .line 209
    :cond_8
    const/16 v21, 0x1

    .line 211
    .local v21, "execCount":I
    :goto_1
    const/4 v4, 0x1

    move/from16 v0, v21

    if-le v0, v4, :cond_b

    invoke-static/range {p2 .. p2}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isRepeatable(Lorg/apache/http/HttpRequest;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 212
    new-instance v4, Lorg/apache/http/client/NonRepeatableRequestException;

    const-string v7, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v4, v7}, Lorg/apache/http/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 336
    .end local v21    # "execCount":I
    :catch_0
    move-exception v20

    .line 337
    .local v20, "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    new-instance v23, Ljava/io/InterruptedIOException;

    const-string v4, "Connection has been shut down"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 339
    .local v23, "ioex":Ljava/io/InterruptedIOException;
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v23

    .line 173
    .end local v6    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .end local v15    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .end local v20    # "ex":Lorg/apache/http/impl/conn/ConnectionShutdownException;
    .end local v23    # "ioex":Ljava/io/InterruptedIOException;
    :cond_9
    const-wide/16 v8, 0x0

    goto :goto_0

    .line 174
    .end local v27    # "timeout":I
    :catch_1
    move-exception v22

    .line 175
    .local v22, "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 176
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    move-object/from16 v0, v22

    invoke-direct {v4, v7, v0}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 177
    .end local v22    # "interrupted":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v20

    .line 178
    .local v20, "ex":Ljava/util/concurrent/ExecutionException;
    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    .line 179
    .local v13, "cause":Ljava/lang/Throwable;
    if-nez v13, :cond_a

    .line 180
    move-object/from16 v13, v20

    .line 182
    :cond_a
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v7, "Request execution failed"

    invoke-direct {v4, v7, v13}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 216
    .end local v13    # "cause":Ljava/lang/Throwable;
    .end local v20    # "ex":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "managedConn":Lorg/apache/http/HttpClientConnection;
    .restart local v15    # "connHolder":Lorg/apache/http/impl/execchain/ConnectionHolder;
    .restart local v21    # "execCount":I
    .restart local v27    # "timeout":I
    :cond_b
    if-eqz p4, :cond_c

    :try_start_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 217
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 341
    .end local v21    # "execCount":I
    :catch_3
    move-exception v20

    .line 342
    .local v20, "ex":Lorg/apache/http/HttpException;
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 343
    throw v20

    .line 220
    .end local v20    # "ex":Lorg/apache/http/HttpException;
    .restart local v21    # "execCount":I
    :cond_c
    :try_start_3
    invoke-interface {v6}, Lorg/apache/http/HttpClientConnection;->isOpen()Z

    move-result v4

    if-nez v4, :cond_e

    .line 221
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 222
    const-string v4, "HttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening connection "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_d
    move-object/from16 v4, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 225
    :try_start_4
    invoke-virtual/range {v4 .. v9}, Lorg/apache/http/impl/execchain/MainClientExec;->establishRoute(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/protocol/HttpClientContext;)V
    :try_end_4
    .catch Lorg/apache/http/impl/execchain/TunnelRefusedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 234
    :cond_e
    :try_start_5
    invoke-virtual {v14}, Lorg/apache/http/client/config/RequestConfig;->getSocketTimeout()I

    move-result v27

    .line 235
    if-ltz v27, :cond_f

    .line 236
    move/from16 v0, v27

    invoke-interface {v6, v0}, Lorg/apache/http/HttpClientConnection;->setSocketTimeout(I)V

    .line 239
    :cond_f
    if-eqz p4, :cond_15

    invoke-interface/range {p4 .. p4}, Lorg/apache/http/client/methods/HttpExecutionAware;->isAborted()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 240
    new-instance v4, Lorg/apache/http/impl/execchain/RequestAbortedException;

    const-string v7, "Request aborted"

    invoke-direct {v4, v7}, Lorg/apache/http/impl/execchain/RequestAbortedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 344
    .end local v21    # "execCount":I
    :catch_4
    move-exception v20

    .line 345
    .local v20, "ex":Ljava/io/IOException;
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 346
    throw v20

    .line 226
    .end local v20    # "ex":Ljava/io/IOException;
    .restart local v21    # "execCount":I
    :catch_5
    move-exception v20

    .line 227
    .local v20, "ex":Lorg/apache/http/impl/execchain/TunnelRefusedException;
    :try_start_6
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 228
    const-string v4, "HttpClient"

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_10
    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/impl/execchain/TunnelRefusedException;->getResponse()Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 319
    .end local v20    # "ex":Lorg/apache/http/impl/execchain/TunnelRefusedException;
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :cond_11
    if-nez v28, :cond_12

    .line 320
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->userTokenHandler:Lorg/apache/http/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Lorg/apache/http/client/UserTokenHandler;->getUserToken(Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v28

    .line 321
    const-string v4, "http.user-token"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Lorg/apache/http/client/protocol/HttpClientContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    :cond_12
    if-eqz v28, :cond_13

    .line 324
    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setState(Ljava/lang/Object;)V

    .line 328
    :cond_13
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 329
    .local v17, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v17, :cond_14

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v4

    if-nez v4, :cond_25

    .line 331
    :cond_14
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->releaseConnection()V

    .line 332
    new-instance v4, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    const/4 v7, 0x0

    invoke-direct {v4, v11, v7}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V

    .line 334
    :goto_2
    return-object v4

    .line 243
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v17    # "entity":Lorg/apache/http/HttpEntity;
    :cond_15
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 244
    const-string v4, "HttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Executing request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_16
    const-string v4, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 248
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 249
    const-string v4, "HttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Target auth state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-virtual {v4, v0, v1, v2}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 253
    :cond_18
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lorg/apache/http/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 254
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 255
    const-string v4, "HttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Proxy auth state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->authenticator:Lorg/apache/http/impl/auth/HttpAuthenticator;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v5, v1}, Lorg/apache/http/impl/auth/HttpAuthenticator;->generateAuthResponse(Lorg/apache/http/HttpRequest;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/protocol/HttpContext;)V

    .line 260
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->requestExecutor:Lorg/apache/http/protocol/HttpRequestExecutor;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v6, v1}, Lorg/apache/http/protocol/HttpRequestExecutor;->execute(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpClientConnection;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 263
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->reuseStrategy:Lorg/apache/http/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v4, v11, v0}, Lorg/apache/http/ConnectionReuseStrategy;->keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 265
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/http/impl/execchain/MainClientExec;->keepAliveStrategy:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v4, v11, v0}, Lorg/apache/http/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v18

    .line 266
    .local v18, "duration":J
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 268
    const-wide/16 v8, 0x0

    cmp-long v4, v18, v8

    if-lez v4, :cond_1f

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "for "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 273
    .local v25, "s":Ljava/lang/String;
    :goto_3
    const-string v4, "HttpClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection can be kept alive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .end local v25    # "s":Ljava/lang/String;
    :cond_1b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1, v4}, Lorg/apache/http/impl/execchain/ConnectionHolder;->setValidFor(JLjava/util/concurrent/TimeUnit;)V

    .line 276
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markReusable()V

    .end local v18    # "duration":J
    :goto_4
    move-object/from16 v7, p0

    move-object/from16 v8, v26

    move-object v9, v5

    move-object/from16 v10, p1

    move-object/from16 v12, p3

    .line 281
    invoke-direct/range {v7 .. v12}, Lorg/apache/http/impl/execchain/MainClientExec;->needAuthentication(Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/auth/AuthStateHC4;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/HttpResponse;Lorg/apache/http/client/protocol/HttpClientContext;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 284
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v17

    .line 285
    .restart local v17    # "entity":Lorg/apache/http/HttpEntity;
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->isReusable()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 286
    invoke-static/range {v17 .. v17}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 307
    :cond_1c
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v24

    .line 308
    .local v24, "original":Lorg/apache/http/HttpRequest;
    const-string v4, "Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 309
    const-string v4, "Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 311
    :cond_1d
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 312
    const-string v4, "Proxy-Authorization"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpRequestWrapper;->removeHeaders(Ljava/lang/String;)V

    .line 209
    :cond_1e
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 271
    .end local v17    # "entity":Lorg/apache/http/HttpEntity;
    .end local v24    # "original":Lorg/apache/http/HttpRequest;
    .restart local v18    # "duration":J
    :cond_1f
    const-string v25, "indefinitely"

    .restart local v25    # "s":Ljava/lang/String;
    goto :goto_3

    .line 278
    .end local v18    # "duration":J
    .end local v25    # "s":Ljava/lang/String;
    :cond_20
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->markNonReusable()V
    :try_end_6
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    .line 347
    .end local v11    # "response":Lorg/apache/http/HttpResponse;
    .end local v21    # "execCount":I
    :catch_6
    move-exception v20

    .line 348
    .local v20, "ex":Ljava/lang/RuntimeException;
    invoke-virtual {v15}, Lorg/apache/http/impl/execchain/ConnectionHolder;->abortConnection()V

    .line 349
    throw v20

    .line 288
    .end local v20    # "ex":Ljava/lang/RuntimeException;
    .restart local v11    # "response":Lorg/apache/http/HttpResponse;
    .restart local v17    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v21    # "execCount":I
    :cond_21
    :try_start_7
    invoke-interface {v6}, Lorg/apache/http/HttpClientConnection;->close()V

    .line 289
    invoke-virtual {v5}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v4

    sget-object v7, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v4, v7, :cond_23

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_23

    invoke-virtual {v5}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 292
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 293
    const-string v4, "HttpClient"

    const-string v7, "Resetting proxy auth state"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_22
    invoke-virtual {v5}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 297
    :cond_23
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;->getState()Lorg/apache/http/auth/AuthProtocolState;

    move-result-object v4

    sget-object v7, Lorg/apache/http/auth/AuthProtocolState;->SUCCESS:Lorg/apache/http/auth/AuthProtocolState;

    if-ne v4, v7, :cond_1c

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_1c

    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 300
    const-string v4, "HttpClient"

    const/4 v7, 0x3

    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 301
    const-string v4, "HttpClient"

    const-string v7, "Resetting target auth state"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_24
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    goto/16 :goto_5

    .line 334
    :cond_25
    new-instance v4, Lorg/apache/http/impl/execchain/HttpResponseProxy;

    invoke-direct {v4, v11, v15}, Lorg/apache/http/impl/execchain/HttpResponseProxy;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/impl/execchain/ConnectionHolder;)V
    :try_end_7
    .catch Lorg/apache/http/impl/conn/ConnectionShutdownException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/apache/http/HttpException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_2
.end method