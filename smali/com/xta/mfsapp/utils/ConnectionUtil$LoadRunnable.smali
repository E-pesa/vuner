.class Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;
.super Ljava/lang/Object;
.source "ConnectionUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/utils/ConnectionUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadRunnable"
.end annotation


# instance fields
.field private final listener:Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

.field final synthetic this$0:Lcom/tigo/mfsapp/utils/ConnectionUtil;

.field private final url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/utils/ConnectionUtil;Ljava/net/URL;Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;)V
    .locals 0
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->this$0:Lcom/tigo/mfsapp/utils/ConnectionUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->url:Ljava/net/URL;

    .line 72
    iput-object p3, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->listener:Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

    .line 73
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 82
    :try_start_0
    new-instance v7, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 83
    .local v7, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 84
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    new-instance v10, Lcom/tigo/mfsapp/utils/security/EasySSLSocketFactory;

    invoke-direct {v10}, Lcom/tigo/mfsapp/utils/security/EasySSLSocketFactory;-><init>()V

    const/16 v11, 0x1bb

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 86
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 87
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    new-instance v0, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v0, v3, v7}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 88
    .local v0, "cm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 90
    .local v2, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    iget-object v8, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 92
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 94
    .local v5, "response":Lorg/apache/http/HttpResponse;
    iget-object v8, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->this$0:Lcom/tigo/mfsapp/utils/ConnectionUtil;

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tigo/mfsapp/utils/ConnectionUtil;->access$000(Lcom/tigo/mfsapp/utils/ConnectionUtil;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "s":Ljava/lang/String;
    iget-object v8, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->listener:Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

    invoke-interface {v8, v6}, Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;->success(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v0    # "cm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v2    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "params":Lorg/apache/http/params/HttpParams;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v8, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->listener:Lcom/tigo/mfsapp/utils/ConnectionUtil$ConnectionUtilListener;

    iget-object v9, p0, Lcom/tigo/mfsapp/utils/ConnectionUtil$LoadRunnable;->url:Ljava/net/URL;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    throw v8
.end method
