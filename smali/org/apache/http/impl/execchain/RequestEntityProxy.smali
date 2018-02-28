.class Lorg/apache/http/impl/execchain/RequestEntityProxy;
.super Ljava/lang/Object;
.source "RequestEntityProxy.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private consumed:Z

.field private final original:Lorg/apache/http/HttpEntity;


# direct methods
.method constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p1, "original"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 79
    iput-object p1, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    .line 80
    return-void
.end method

.method static enhance(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;

    .prologue
    .line 48
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 49
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isEnhanced(Lorg/apache/http/HttpEntity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lorg/apache/http/impl/execchain/RequestEntityProxy;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/execchain/RequestEntityProxy;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-interface {p0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 52
    :cond_0
    return-void
.end method

.method static isEnhanced(Lorg/apache/http/HttpEntity;)Z
    .locals 1
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 55
    instance-of v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;

    return v0
.end method

.method static isRepeatable(Lorg/apache/http/HttpRequest;)Z
    .locals 4
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    const/4 v2, 0x1

    .line 59
    instance-of v3, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v3, :cond_0

    .line 60
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    .end local p0    # "request":Lorg/apache/http/HttpRequest;
    invoke-interface {p0}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 61
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v0, :cond_0

    .line 62
    invoke-static {v0}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isEnhanced(Lorg/apache/http/HttpEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v0

    .line 63
    check-cast v1, Lorg/apache/http/impl/execchain/RequestEntityProxy;

    .line 64
    .local v1, "proxy":Lorg/apache/http/impl/execchain/RequestEntityProxy;
    invoke-virtual {v1}, Lorg/apache/http/impl/execchain/RequestEntityProxy;->isConsumed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 71
    .end local v1    # "proxy":Lorg/apache/http/impl/execchain/RequestEntityProxy;
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 126
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 127
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getOriginal()Lorg/apache/http/HttpEntity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->consumed:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestEntityProxy{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 133
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->consumed:Z

    .line 116
    iget-object v0, p0, Lorg/apache/http/impl/execchain/RequestEntityProxy;->original:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 117
    return-void
.end method
