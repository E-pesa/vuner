.class public Lorg/apache/http/impl/execchain/RedirectExec;
.super Ljava/lang/Object;
.source "RedirectExec.java"

# interfaces
.implements Lorg/apache/http/impl/execchain/ClientExecChain;


# annotations
.annotation build Lorg/apache/http/annotation/ThreadSafe;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# instance fields
.field private final redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

.field private final requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

.field private final routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V
    .locals 1
    .param p1, "requestExecutor"    # Lorg/apache/http/impl/execchain/ClientExecChain;
    .param p2, "routePlanner"    # Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .param p3, "redirectStrategy"    # Lorg/apache/http/client/RedirectStrategy;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "HTTP client request executor"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    const-string v0, "HTTP route planner"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 83
    const-string v0, "HTTP redirect strategy"

    invoke-static {p3, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    .line 85
    iput-object p2, p0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    .line 86
    iput-object p3, p0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    .line 87
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;
    .locals 22
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
    .line 94
    const-string v19, "HTTP route"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    const-string v19, "HTTP request"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    const-string v19, "HTTP context"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRedirectLocations()Ljava/util/List;

    move-result-object v15

    .line 99
    .local v15, "redirectLocations":Ljava/util/List;, "Ljava/util/List<Ljava/net/URI;>;"
    if-eqz v15, :cond_0

    .line 100
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 103
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v4

    .line 104
    .local v4, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v19

    if-lez v19, :cond_1

    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getMaxRedirects()I

    move-result v9

    .line 105
    .local v9, "maxRedirects":I
    :goto_0
    move-object/from16 v6, p1

    .line 106
    .local v6, "currentRoute":Lorg/apache/http/conn/routing/HttpRoute;
    move-object/from16 v5, p2

    .line 107
    .local v5, "currentRequest":Lorg/apache/http/client/methods/HttpRequestWrapper;
    const/4 v14, 0x0

    .line 108
    .local v14, "redirectCount":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->requestExecutor:Lorg/apache/http/impl/execchain/ClientExecChain;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-interface {v0, v6, v5, v1, v2}, Lorg/apache/http/impl/execchain/ClientExecChain;->execute(Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/client/methods/HttpRequestWrapper;Lorg/apache/http/client/protocol/HttpClientContext;Lorg/apache/http/client/methods/HttpExecutionAware;)Lorg/apache/http/client/methods/CloseableHttpResponse;

    move-result-object v16

    .line 111
    .local v16, "response":Lorg/apache/http/client/methods/CloseableHttpResponse;
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->isRedirectsEnabled()Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v5, v1, v2}, Lorg/apache/http/client/RedirectStrategy;->isRedirected(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 114
    if-lt v14, v9, :cond_2

    .line 115
    new-instance v19, Lorg/apache/http/client/RedirectException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Maximum redirects ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ") exceeded"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/http/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "ex":Ljava/lang/RuntimeException;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 170
    throw v7

    .line 104
    .end local v5    # "currentRequest":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .end local v6    # "currentRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .end local v7    # "ex":Ljava/lang/RuntimeException;
    .end local v9    # "maxRedirects":I
    .end local v14    # "redirectCount":I
    .end local v16    # "response":Lorg/apache/http/client/methods/CloseableHttpResponse;
    :cond_1
    const/16 v9, 0x32

    goto :goto_0

    .line 117
    .restart local v5    # "currentRequest":Lorg/apache/http/client/methods/HttpRequestWrapper;
    .restart local v6    # "currentRoute":Lorg/apache/http/conn/routing/HttpRoute;
    .restart local v9    # "maxRedirects":I
    .restart local v14    # "redirectCount":I
    .restart local v16    # "response":Lorg/apache/http/client/methods/CloseableHttpResponse;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    .line 119
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->redirectStrategy:Lorg/apache/http/client/RedirectStrategy;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, p3

    invoke-interface {v0, v5, v1, v2}, Lorg/apache/http/client/RedirectStrategy;->getRedirect(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v13

    .line 121
    .local v13, "redirect":Lorg/apache/http/HttpRequest;
    invoke-interface {v13}, Lorg/apache/http/HttpRequest;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 122
    invoke-virtual/range {p2 .. p2}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v11

    .line 123
    .local v11, "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v11}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/apache/http/HttpRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 125
    .end local v11    # "original":Lorg/apache/http/HttpRequest;
    :cond_3
    invoke-static {v13}, Lorg/apache/http/client/methods/HttpRequestWrapper;->wrap(Lorg/apache/http/HttpRequest;)Lorg/apache/http/client/methods/HttpRequestWrapper;

    move-result-object v5

    .line 127
    instance-of v0, v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 128
    move-object v0, v5

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 131
    :cond_4
    invoke-virtual {v5}, Lorg/apache/http/client/methods/HttpRequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v18

    .line 132
    .local v18, "uri":Ljava/net/URI;
    invoke-static/range {v18 .. v18}, Lorg/apache/http/client/utils/URIUtilsHC4;->extractHost(Ljava/net/URI;)Lorg/apache/http/HttpHost;

    move-result-object v10

    .line 133
    .local v10, "newTarget":Lorg/apache/http/HttpHost;
    if-nez v10, :cond_5

    .line 134
    new-instance v19, Lorg/apache/http/ProtocolException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Redirect URI does not specify a valid host name: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    .end local v10    # "newTarget":Lorg/apache/http/HttpHost;
    .end local v13    # "redirect":Lorg/apache/http/HttpRequest;
    .end local v18    # "uri":Ljava/net/URI;
    :catch_1
    move-exception v7

    .line 172
    .local v7, "ex":Ljava/io/IOException;
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 173
    throw v7

    .line 139
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v10    # "newTarget":Lorg/apache/http/HttpHost;
    .restart local v13    # "redirect":Lorg/apache/http/HttpRequest;
    .restart local v18    # "uri":Ljava/net/URI;
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lorg/apache/http/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 140
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v17

    .line 141
    .local v17, "targetAuthState":Lorg/apache/http/auth/AuthStateHC4;
    if-eqz v17, :cond_7

    .line 142
    const-string v19, "HttpClient"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 143
    const-string v19, "HttpClient"

    const-string v20, "Resetting target auth state"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_6
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 147
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lorg/apache/http/client/protocol/HttpClientContext;->getProxyAuthState()Lorg/apache/http/auth/AuthStateHC4;

    move-result-object v12

    .line 148
    .local v12, "proxyAuthState":Lorg/apache/http/auth/AuthStateHC4;
    if-eqz v12, :cond_9

    .line 149
    invoke-virtual {v12}, Lorg/apache/http/auth/AuthStateHC4;->getAuthScheme()Lorg/apache/http/auth/AuthScheme;

    move-result-object v3

    .line 150
    .local v3, "authScheme":Lorg/apache/http/auth/AuthScheme;
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lorg/apache/http/auth/AuthScheme;->isConnectionBased()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 151
    const-string v19, "HttpClient"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 152
    const-string v19, "HttpClient"

    const-string v20, "Resetting proxy auth state"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_8
    invoke-virtual {v12}, Lorg/apache/http/auth/AuthStateHC4;->reset()V

    .line 159
    .end local v3    # "authScheme":Lorg/apache/http/auth/AuthScheme;
    .end local v12    # "proxyAuthState":Lorg/apache/http/auth/AuthStateHC4;
    .end local v17    # "targetAuthState":Lorg/apache/http/auth/AuthStateHC4;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/http/impl/execchain/RedirectExec;->routePlanner:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-interface {v0, v10, v5, v1}, Lorg/apache/http/conn/routing/HttpRoutePlanner;->determineRoute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/conn/routing/HttpRoute;

    move-result-object v6

    .line 160
    const-string v19, "HttpClient"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 161
    const-string v19, "HttpClient"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Redirecting to \'"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\' via "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_a
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V

    .line 164
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/HttpException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 174
    .end local v10    # "newTarget":Lorg/apache/http/HttpHost;
    .end local v13    # "redirect":Lorg/apache/http/HttpRequest;
    .end local v18    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v7

    .line 178
    .local v7, "ex":Lorg/apache/http/HttpException;
    :try_start_3
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/http/util/EntityUtilsHC4;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    .line 186
    :goto_2
    throw v7

    .line 179
    :catch_3
    move-exception v8

    .line 180
    .local v8, "ioex":Ljava/io/IOException;
    :try_start_4
    const-string v19, "HttpClient"

    const/16 v20, 0x3

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 181
    const-string v19, "HttpClient"

    const-string v20, "I/O error while releasing connection"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    :cond_b
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    goto :goto_2

    .end local v8    # "ioex":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/client/methods/CloseableHttpResponse;->close()V

    throw v19

    .line 166
    .end local v7    # "ex":Lorg/apache/http/HttpException;
    :cond_c
    return-object v16
.end method
