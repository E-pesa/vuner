.class public Lorg/apache/http/client/protocol/RequestAddCookiesHC4;
.super Ljava/lang/Object;
.source "RequestAddCookiesHC4.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HttpClient"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 31
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const-string v28, "HTTP request"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    const-string v28, "HTTP context"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 81
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v15

    .line 82
    .local v15, "method":Ljava/lang/String;
    const-string v28, "CONNECT"

    move-object/from16 v0, v28

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static/range {p2 .. p2}, Lorg/apache/http/client/protocol/HttpClientContext;->adapt(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/client/protocol/HttpClientContext;

    move-result-object v3

    .line 89
    .local v3, "clientContext":Lorg/apache/http/client/protocol/HttpClientContext;
    invoke-virtual {v3}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v8

    .line 90
    .local v8, "cookieStore":Lorg/apache/http/client/CookieStore;
    if-nez v8, :cond_2

    .line 91
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 92
    const-string v28, "HttpClient"

    const-string v29, "Cookie store not specified in HTTP context"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_2
    invoke-virtual {v3}, Lorg/apache/http/client/protocol/HttpClientContext;->getCookieSpecRegistry()Lorg/apache/http/config/Lookup;

    move-result-object v22

    .line 99
    .local v22, "registry":Lorg/apache/http/config/Lookup;, "Lorg/apache/http/config/Lookup<Lorg/apache/http/cookie/CookieSpecProvider;>;"
    if-nez v22, :cond_3

    .line 100
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 101
    const-string v28, "HttpClient"

    const-string v29, "CookieSpec registry not specified in HTTP context"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_3
    invoke-virtual {v3}, Lorg/apache/http/client/protocol/HttpClientContext;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v26

    .line 108
    .local v26, "targetHost":Lorg/apache/http/HttpHost;
    if-nez v26, :cond_4

    .line 109
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 110
    const-string v28, "HttpClient"

    const-string v29, "Target host not set in the context"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {v3}, Lorg/apache/http/client/protocol/HttpClientContext;->getHttpRoute()Lorg/apache/http/conn/routing/RouteInfo;

    move-result-object v25

    .line 117
    .local v25, "route":Lorg/apache/http/conn/routing/RouteInfo;
    if-nez v25, :cond_5

    .line 118
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_0

    .line 119
    const-string v28, "HttpClient"

    const-string v29, "Connection route not set in the context"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    :cond_5
    invoke-virtual {v3}, Lorg/apache/http/client/protocol/HttpClientContext;->getRequestConfig()Lorg/apache/http/client/config/RequestConfig;

    move-result-object v4

    .line 125
    .local v4, "config":Lorg/apache/http/client/config/RequestConfig;
    invoke-virtual {v4}, Lorg/apache/http/client/config/RequestConfig;->getCookieSpec()Ljava/lang/String;

    move-result-object v19

    .line 126
    .local v19, "policy":Ljava/lang/String;
    if-nez v19, :cond_6

    .line 127
    const-string v19, "best-match"

    .line 129
    :cond_6
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 130
    const-string v28, "HttpClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "CookieSpec selected: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_7
    const/16 v23, 0x0

    .line 134
    .local v23, "requestURI":Ljava/net/URI;
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    move/from16 v28, v0

    if-eqz v28, :cond_9

    move-object/from16 v28, p1

    .line 135
    check-cast v28, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v23

    .line 142
    :goto_1
    if-eqz v23, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v18

    .line 143
    .local v18, "path":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v12

    .line 144
    .local v12, "hostName":Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v20

    .line 145
    .local v20, "port":I
    if-gez v20, :cond_8

    .line 146
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/routing/RouteInfo;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v20

    .line 149
    :cond_8
    new-instance v6, Lorg/apache/http/cookie/CookieOrigin;

    if-ltz v20, :cond_b

    .end local v20    # "port":I
    :goto_3
    invoke-static/range {v18 .. v18}, Lorg/apache/http/util/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-nez v28, :cond_c

    .end local v18    # "path":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v25 .. v25}, Lorg/apache/http/conn/routing/RouteInfo;->isSecure()Z

    move-result v28

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v6, v12, v0, v1, v2}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 156
    .local v6, "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/apache/http/config/Lookup;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/http/cookie/CookieSpecProvider;

    .line 157
    .local v21, "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    if-nez v21, :cond_d

    .line 158
    new-instance v28, Lorg/apache/http/HttpException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Unsupported cookie policy: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v28

    .line 138
    .end local v6    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v12    # "hostName":Ljava/lang/String;
    .end local v21    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    :cond_9
    :try_start_0
    new-instance v24, Ljava/net/URI;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v23    # "requestURI":Ljava/net/URI;
    .local v24, "requestURI":Ljava/net/URI;
    move-object/from16 v23, v24

    .line 140
    .end local v24    # "requestURI":Ljava/net/URI;
    .restart local v23    # "requestURI":Ljava/net/URI;
    goto :goto_1

    .line 142
    :cond_a
    const/16 v18, 0x0

    goto :goto_2

    .line 149
    .restart local v12    # "hostName":Ljava/lang/String;
    .restart local v18    # "path":Ljava/lang/String;
    .restart local v20    # "port":I
    :cond_b
    const/16 v20, 0x0

    goto :goto_3

    .end local v20    # "port":I
    :cond_c
    const-string v18, "/"

    goto :goto_4

    .line 160
    .end local v18    # "path":Ljava/lang/String;
    .restart local v6    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .restart local v21    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    :cond_d
    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Lorg/apache/http/cookie/CookieSpecProvider;->create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object v7

    .line 162
    .local v7, "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    new-instance v9, Ljava/util/ArrayList;

    invoke-interface {v8}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 164
    .local v9, "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v14, "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    .line 166
    .local v17, "now":Ljava/util/Date;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 167
    .local v5, "cookie":Lorg/apache/http/cookie/Cookie;
    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Lorg/apache/http/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v28

    if-nez v28, :cond_10

    .line 168
    invoke-interface {v7, v5, v6}, Lorg/apache/http/cookie/CookieSpec;->match(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 169
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 170
    const-string v28, "HttpClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " match "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_f
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 175
    :cond_10
    const-string v28, "HttpClient"

    const/16 v29, 0x3

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 176
    const-string v28, "HttpClient"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Cookie "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " expired"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 181
    .end local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_11
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v28

    if-nez v28, :cond_12

    .line 182
    invoke-interface {v7, v14}, Lorg/apache/http/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 183
    .local v11, "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/http/Header;

    .line 184
    .local v10, "header":Lorg/apache/http/Header;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    goto :goto_6

    .line 188
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v11    # "headers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/Header;>;"
    :cond_12
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v27

    .line 189
    .local v27, "ver":I
    if-lez v27, :cond_16

    .line 190
    const/16 v16, 0x0

    .line 191
    .local v16, "needVersionHeader":Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_13
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/cookie/Cookie;

    .line 192
    .restart local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    invoke-interface {v5}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    instance-of v0, v5, Lorg/apache/http/cookie/SetCookie2;

    move/from16 v28, v0

    if-nez v28, :cond_13

    .line 193
    :cond_14
    const/16 v16, 0x1

    goto :goto_7

    .line 197
    .end local v5    # "cookie":Lorg/apache/http/cookie/Cookie;
    :cond_15
    if-eqz v16, :cond_16

    .line 198
    invoke-interface {v7}, Lorg/apache/http/cookie/CookieSpec;->getVersionHeader()Lorg/apache/http/Header;

    move-result-object v10

    .line 199
    .restart local v10    # "header":Lorg/apache/http/Header;
    if-eqz v10, :cond_16

    .line 201
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lorg/apache/http/HttpRequest;->addHeader(Lorg/apache/http/Header;)V

    .line 208
    .end local v10    # "header":Lorg/apache/http/Header;
    .end local v16    # "needVersionHeader":Z
    :cond_16
    const-string v28, "http.cookie-spec"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v7}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    const-string v28, "http.cookie-origin"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    .end local v6    # "cookieOrigin":Lorg/apache/http/cookie/CookieOrigin;
    .end local v7    # "cookieSpec":Lorg/apache/http/cookie/CookieSpec;
    .end local v9    # "cookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v12    # "hostName":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v14    # "matchedCookies":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v17    # "now":Ljava/util/Date;
    .end local v21    # "provider":Lorg/apache/http/cookie/CookieSpecProvider;
    .end local v27    # "ver":I
    :catch_0
    move-exception v28

    goto/16 :goto_1
.end method