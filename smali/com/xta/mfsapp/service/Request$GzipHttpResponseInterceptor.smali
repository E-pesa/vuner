.class Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lorg/apache/http/HttpResponseInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/service/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GzipHttpResponseInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/service/Request;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/service/Request;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/service/Request;Lcom/tigo/mfsapp/service/Request$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/service/Request;
    .param p2, "x1"    # Lcom/tigo/mfsapp/service/Request$1;

    .prologue
    .line 515
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;-><init>(Lcom/tigo/mfsapp/service/Request;)V

    return-void
.end method

.method private inflateGzip(Lorg/apache/http/HttpResponse;Lorg/apache/http/Header;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "encoding"    # Lorg/apache/http/Header;

    .prologue
    .line 530
    invoke-interface {p2}, Lorg/apache/http/Header;->getElements()[Lorg/apache/http/HeaderElement;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 532
    .local v0, "element":Lorg/apache/http/HeaderElement;
    invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "gzip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    new-instance v1, Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;

    iget-object v2, p0, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;->this$0:Lcom/tigo/mfsapp/service/Request;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;-><init>(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpEntity;)V

    invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 538
    .end local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_0
    return-void

    .line 530
    .restart local v0    # "element":Lorg/apache/http/HeaderElement;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 520
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 521
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 522
    .local v0, "encoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 524
    invoke-direct {p0, p1, v0}, Lcom/tigo/mfsapp/service/Request$GzipHttpResponseInterceptor;->inflateGzip(Lorg/apache/http/HttpResponse;Lorg/apache/http/Header;)V

    .line 526
    :cond_0
    return-void
.end method
