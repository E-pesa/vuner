.class Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/service/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GzipInflatingEntity"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/service/Request;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/service/Request;Lorg/apache/http/HttpEntity;)V
    .locals 0
    .param p2, "wrapped"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;->this$0:Lcom/tigo/mfsapp/service/Request;

    .line 545
    invoke-direct {p0, p2}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 546
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/tigo/mfsapp/service/Request$GzipInflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 557
    const-wide/16 v0, -0x1

    return-wide v0
.end method
