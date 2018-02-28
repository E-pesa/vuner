.class public abstract Lcom/tigo/mfsapp/service/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;,
        Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;,
        Lcom/tigo/mfsapp/service/Request$RequestListener;,
        Lcom/tigo/mfsapp/service/Request$RunGetContents;
    }
.end annotation


# static fields
.field private static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field private static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final INVALID_TIME:J = -0x1L

.field public static final URL_BASE:Ljava/lang/String; = ""

.field public static httpclient:Lorg/apache/http/client/HttpClient;


# instance fields
.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final extraHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private reference:Ljava/lang/Object;

.field private requestId:Ljava/lang/String;

.field private requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

.field private response:Lcom/tigo/mfsapp/service/Response;

.field private responseCachingTime:J

.field private times:I

.field private urlBase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/service/Request;->extraHeaders:Ljava/util/ArrayList;

    .line 336
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tigo/mfsapp/service/Request;->responseCachingTime:J

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/service/Request;->times:I

    .line 341
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 342
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/service/Request;
    .param p1, "x1"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/Request;->httpGZIPClient(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/service/Request;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request;->extraHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/service/Request;)I
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 54
    iget v0, p0, Lcom/tigo/mfsapp/service/Request;->times:I

    return v0
.end method

.method public static getNewHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12

    .prologue
    .line 428
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 429
    .local v4, "params":Lorg/apache/http/params/HttpParams;
    const/4 v8, 0x1

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 431
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 432
    const-string v8, "UTF-8"

    invoke-static {v4, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 437
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 438
    .local v7, "trustStore":Ljava/security/KeyStore;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 440
    new-instance v6, Lcom/tigo/mfsapp/service/MySSLSocketFactory;

    invoke-direct {v6, v7}, Lcom/tigo/mfsapp/service/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 443
    .local v6, "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 445
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 447
    .local v3, "packageName":Ljava/lang/String;
    const-string v8, "dev"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "test"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "staging"

    invoke-virtual {v3, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 449
    :cond_0
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->BROWSER_COMPATIBLE_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 452
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HostnameVerifier "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 454
    new-instance v5, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 455
    .local v5, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 456
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v5, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 457
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v4, v5}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 458
    .local v0, "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    .end local v0    # "ccm":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v6    # "sf":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v8

    .line 460
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNewHttpClient error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 466
    :try_start_1
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 469
    :catch_1
    move-exception v2

    .line 472
    .local v2, "ea":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getNewHttpClient error no ccm"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 473
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    goto :goto_0
.end method

.method private httpGZIPClient(Lorg/apache/http/impl/client/DefaultHttpClient;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 2
    .param p1, "client"    # Lorg/apache/http/impl/client/DefaultHttpClient;

    .prologue
    .line 481
    new-instance v0, Lcom/tigo/mfsapp/service/Request$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/service/Request$1;-><init>(Lcom/tigo/mfsapp/service/Request;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 495
    new-instance v0, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;-><init>(Lcom/tigo/mfsapp/service/Request;Lcom/tigo/mfsapp/service/Request$1;)V

    invoke-virtual {p1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 497
    return-object p1
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "headerKey"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "pair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request;->extraHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public abstract asHttpString()Ljava/lang/String;
.end method

.method protected doRetryAction()V
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/tigo/mfsapp/service/Request;->times:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tigo/mfsapp/service/Request;->times:I

    .line 372
    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/Request;->run()V

    .line 373
    return-void
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    const-string v0, "POST"

    return-object v0
.end method

.method public getPayLoad()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReference()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestListener()Lcom/tigo/mfsapp/service/Request$RequestListener;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    return-object v0
.end method

.method public getResponse()Lcom/tigo/mfsapp/service/Response;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/tigo/mfsapp/service/Request;->response:Lcom/tigo/mfsapp/service/Response;

    return-object v0
.end method

.method public getResponseCachingTime()J
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/tigo/mfsapp/service/Request;->responseCachingTime:J

    return-wide v0
.end method

.method public abstract getResponseClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method public getURLBase()Ljava/lang/String;
    .locals 5

    .prologue
    .line 396
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request;->urlBase:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 398
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "url_base"

    const-string v4, "string"

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 400
    .local v0, "identifier":I
    if-lez v0, :cond_0

    .line 402
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/service/Request;->urlBase:Ljava/lang/String;

    .line 405
    .end local v0    # "identifier":I
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request;->urlBase:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request;->urlBase:Ljava/lang/String;

    .line 407
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public isResponseCachingEnabled()Z
    .locals 4

    .prologue
    .line 512
    iget-wide v0, p0, Lcom/tigo/mfsapp/service/Request;->responseCachingTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/Request;->getURLBase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/service/Request;->asHttpString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "urlString":Ljava/lang/String;
    new-instance v0, Lcom/tigo/mfsapp/service/Request$RunGetContents;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/tigo/mfsapp/service/Request$RunGetContents;-><init>(Lcom/tigo/mfsapp/service/Request;Ljava/lang/String;Lcom/tigo/mfsapp/service/Request$RequestListener;)V

    .line 364
    .local v0, "runGetContents":Lcom/tigo/mfsapp/service/Request$RunGetContents;
    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 365
    return-void
.end method

.method public setReference(Ljava/lang/Object;)V
    .locals 0
    .param p1, "reference"    # Ljava/lang/Object;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request;->reference:Ljava/lang/Object;

    .line 392
    return-void
.end method

.method public setRequestListener(Lcom/tigo/mfsapp/service/Request$RequestListener;)V
    .locals 0
    .param p1, "requestListener"    # Lcom/tigo/mfsapp/service/Request$RequestListener;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request;->requestListener:Lcom/tigo/mfsapp/service/Request$RequestListener;

    .line 357
    return-void
.end method

.method public setResponse(Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request;->response:Lcom/tigo/mfsapp/service/Response;

    .line 423
    return-void
.end method

.method public setResponseCachingTime(J)V
    .locals 1
    .param p1, "responseCachingTime"    # J

    .prologue
    .line 507
    iput-wide p1, p0, Lcom/tigo/mfsapp/service/Request;->responseCachingTime:J

    .line 508
    return-void
.end method
