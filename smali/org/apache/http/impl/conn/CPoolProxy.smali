.class Lorg/apache/http/impl/conn/CPoolProxy;
.super Ljava/lang/Object;
.source "CPoolProxy.java"

# interfaces
.implements Lorg/apache/http/conn/ManagedHttpClientConnection;
.implements Lorg/apache/http/protocol/HttpContext;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private volatile poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;


# direct methods
.method constructor <init>(Lorg/apache/http/impl/conn/CPoolEntry;)V
    .locals 0
    .param p1, "entry"    # Lorg/apache/http/impl/conn/CPoolEntry;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 56
    return-void
.end method

.method public static detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1
    .param p0, "conn"    # Lorg/apache/http/HttpClientConnection;

    .prologue
    .line 242
    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolProxy;->detach()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    return-object v0
.end method

.method public static getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 2
    .param p0, "proxy"    # Lorg/apache/http/HttpClientConnection;

    .prologue
    .line 234
    invoke-static {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 235
    .local v0, "entry":Lorg/apache/http/impl/conn/CPoolEntry;
    if-nez v0, :cond_0

    .line 236
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    .line 238
    :cond_0
    return-object v0
.end method

.method private static getProxy(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolProxy;
    .locals 3
    .param p0, "conn"    # Lorg/apache/http/HttpClientConnection;

    .prologue
    .line 227
    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected connection proxy class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    const-class v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/impl/conn/CPoolProxy;

    return-object v0
.end method

.method public static newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;
    .locals 1
    .param p0, "poolEntry"    # Lorg/apache/http/impl/conn/CPoolEntry;

    .prologue
    .line 223
    new-instance v0, Lorg/apache/http/impl/conn/CPoolProxy;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/conn/CPoolProxy;-><init>(Lorg/apache/http/impl/conn/CPoolEntry;)V

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/net/Socket;)V
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->bind(Ljava/net/Socket;)V

    .line 130
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 86
    .local v0, "local":Lorg/apache/http/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->closeConnection()V

    .line 89
    :cond_0
    return-void
.end method

.method detach()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 64
    .local v0, "local":Lorg/apache/http/impl/conn/CPoolEntry;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 65
    return-object v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->flush()V

    .line 162
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 186
    .local v0, "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    .end local v0    # "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    :goto_0
    return-object v1

    .restart local v0    # "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 70
    .local v0, "local":Lorg/apache/http/impl/conn/CPoolEntry;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ManagedHttpClientConnection;

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getMetrics()Lorg/apache/http/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method getPoolEntry()Lorg/apache/http/impl/conn/CPoolEntry;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 78
    .local v0, "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    if-nez v0, :cond_0

    .line 79
    new-instance v1, Lorg/apache/http/impl/conn/ConnectionShutdownException;

    invoke-direct {v1}, Lorg/apache/http/impl/conn/ConnectionShutdownException;-><init>()V

    throw v1

    .line 81
    :cond_0
    return-object v0
.end method

.method public isOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 100
    .local v0, "local":Lorg/apache/http/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 103
    :cond_0
    return v1
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->isResponseAvailable(I)Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 2

    .prologue
    .line 108
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 109
    .local v0, "conn":Lorg/apache/http/HttpClientConnection;
    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lorg/apache/http/HttpClientConnection;->isStale()Z

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public receiveResponseEntity(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->receiveResponseEntity(Lorg/apache/http/HttpResponse;)V

    .line 158
    return-void
.end method

.method public receiveResponseHeader()Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ManagedHttpClientConnection;->receiveResponseHeader()Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 202
    .local v0, "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 203
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    .end local v0    # "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .restart local v0    # "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 150
    return-void
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 146
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 194
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 195
    .local v0, "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    instance-of v1, v0, Lorg/apache/http/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 196
    check-cast v0, Lorg/apache/http/protocol/HttpContext;

    .end local v0    # "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    invoke-interface {v0, p1, p2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getValidConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/conn/ManagedHttpClientConnection;->setSocketTimeout(I)V

    .line 118
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/http/impl/conn/CPoolProxy;->poolEntry:Lorg/apache/http/impl/conn/CPoolEntry;

    .line 93
    .local v0, "local":Lorg/apache/http/impl/conn/CPoolEntry;
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->shutdownConnection()V

    .line 96
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CPoolProxy{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/CPoolProxy;->getConnection()Lorg/apache/http/conn/ManagedHttpClientConnection;

    move-result-object v0

    .line 213
    .local v0, "conn":Lorg/apache/http/conn/ManagedHttpClientConnection;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    :goto_0
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 216
    :cond_0
    const-string v2, "detached"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
