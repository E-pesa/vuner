.class Lorg/spongycastle/crypto/tls/RecordStream;
.super Ljava/lang/Object;
.source "RecordStream.java"


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field private handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

.field private hash:Lorg/spongycastle/crypto/tls/CombinedHash;

.field private is:Ljava/io/InputStream;

.field private os:Ljava/io/OutputStream;

.field private readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

.field private writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

.field private writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsProtocolHandler;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "handler"    # Lorg/spongycastle/crypto/tls/TlsProtocolHandler;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "os"    # Ljava/io/OutputStream;

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 19
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 20
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 21
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 22
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 24
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 25
    iput-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    .line 29
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

    .line 30
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    .line 31
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    .line 32
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCompression;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCompression;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 34
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsNullCipher;

    invoke-direct {v0}, Lorg/spongycastle/crypto/tls/TlsNullCipher;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 36
    return-void
.end method

.method private static doFinal(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2
    .param p0, "d"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 187
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 188
    .local v0, "bs":[B
    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 189
    return-object v0
.end method

.method private getBufferContents()[B
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 181
    .local v0, "contents":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 182
    return-object v0
.end method


# virtual methods
.method clientCipherSpecDecided(Lorg/spongycastle/crypto/tls/TlsCompression;Lorg/spongycastle/crypto/tls/TlsCipher;)V
    .locals 0
    .param p1, "tlsCompression"    # Lorg/spongycastle/crypto/tls/TlsCompression;
    .param p2, "tlsCipher"    # Lorg/spongycastle/crypto/tls/TlsCipher;

    .prologue
    .line 46
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 47
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 48
    return-void
.end method

.method protected close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_1
    if-eqz v0, :cond_0

    .line 169
    throw v0

    .line 155
    :catch_0
    move-exception v1

    .line 157
    .local v1, "ex":Ljava/io/IOException;
    move-object v0, v1

    goto :goto_0

    .line 163
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 165
    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v0, v1

    goto :goto_1

    .line 171
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method protected decodeAndVerify(SLjava/io/InputStream;I)[B
    .locals 6
    .param p1, "type"    # S
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    new-array v0, p3, [B

    .line 75
    .local v0, "buf":[B
    invoke-static {v0, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 76
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    array-length v4, v0

    invoke-interface {v3, p1, v0, v5, v4}, Lorg/spongycastle/crypto/tls/TlsCipher;->decodeCiphertext(S[BII)[B

    move-result-object v2

    .line 78
    .local v2, "decoded":[B
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v3, v4}, Lorg/spongycastle/crypto/tls/TlsCompression;->decompress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v1

    .line 80
    .local v1, "cOut":Ljava/io/OutputStream;
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v1, v3, :cond_0

    .line 87
    .end local v2    # "decoded":[B
    :goto_0
    return-object v2

    .line 85
    .restart local v2    # "decoded":[B
    :cond_0
    array-length v3, v2

    invoke-virtual {v1, v2, v5, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v2

    goto :goto_0
.end method

.method protected flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 176
    return-void
.end method

.method getCurrentHash([B)[B
    .locals 5
    .param p1, "sender"    # [B

    .prologue
    const/4 v2, 0x0

    .line 133
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, v3}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V

    .line 135
    .local v0, "d":Lorg/spongycastle/crypto/Digest;
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v3

    sget-object v4, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v1, 0x1

    .line 137
    .local v1, "isTls":Z
    :goto_0
    if-nez v1, :cond_0

    .line 139
    if-eqz p1, :cond_0

    .line 141
    array-length v3, p1

    invoke-interface {v0, p1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 145
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/crypto/tls/RecordStream;->doFinal(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v2

    return-object v2

    .end local v1    # "isTls":Z
    :cond_1
    move v1, v2

    .line 135
    goto :goto_0
.end method

.method init(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 40
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/RecordStream;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 41
    new-instance v0, Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/tls/CombinedHash;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    .line 42
    return-void
.end method

.method public readData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v3

    .line 61
    .local v3, "type":S
    sget-object v1, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    .line 62
    .local v1, "expectedVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 64
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x2f

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 67
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-static {v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v2

    .line 68
    .local v2, "size":I
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->is:Ljava/io/InputStream;

    invoke-virtual {p0, v3, v4, v2}, Lorg/spongycastle/crypto/tls/RecordStream;->decodeAndVerify(SLjava/io/InputStream;I)[B

    move-result-object v0

    .line 69
    .local v0, "buf":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->handler:Lorg/spongycastle/crypto/tls/TlsProtocolHandler;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-virtual {v4, v3, v0, v5, v6}, Lorg/spongycastle/crypto/tls/TlsProtocolHandler;->processData(S[BII)V

    .line 70
    return-void
.end method

.method serverClientSpecReceived()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    .line 53
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->readCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    .line 54
    return-void
.end method

.method updateHandshakeData([BII)V
    .locals 1
    .param p1, "message"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 125
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/RecordStream;->hash:Lorg/spongycastle/crypto/tls/CombinedHash;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/tls/CombinedHash;->update([BII)V

    .line 126
    return-void
.end method

.method protected writeMessage(S[BII)V
    .locals 7
    .param p1, "type"    # S
    .param p2, "message"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 92
    const/16 v4, 0x16

    if-ne p1, v4, :cond_0

    .line 94
    invoke-virtual {p0, p2, p3, p4}, Lorg/spongycastle/crypto/tls/RecordStream;->updateHandshakeData([BII)V

    .line 97
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCompression:Lorg/spongycastle/crypto/tls/TlsCompression;

    iget-object v5, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-interface {v4, v5}, Lorg/spongycastle/crypto/tls/TlsCompression;->compress(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v0

    .line 100
    .local v0, "cOut":Ljava/io/OutputStream;
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->buffer:Ljava/io/ByteArrayOutputStream;

    if-ne v0, v4, :cond_1

    .line 102
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    invoke-interface {v4, p1, p2, p3, p4}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object v1

    .line 112
    .local v1, "ciphertext":[B
    :goto_0
    array-length v4, v1

    add-int/lit8 v4, v4, 0x5

    new-array v3, v4, [B

    .line 113
    .local v3, "writeMessage":[B
    invoke-static {p1, v3, v6}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(S[BI)V

    .line 116
    sget-object v4, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 117
    array-length v4, v1

    const/4 v5, 0x3

    invoke-static {v4, v3, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(I[BI)V

    .line 118
    const/4 v4, 0x5

    array-length v5, v1

    invoke-static {v1, v6, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v4, v3}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 121
    return-void

    .line 106
    .end local v1    # "ciphertext":[B
    .end local v3    # "writeMessage":[B
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    .line 107
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 108
    invoke-direct {p0}, Lorg/spongycastle/crypto/tls/RecordStream;->getBufferContents()[B

    move-result-object v2

    .line 109
    .local v2, "compressed":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/tls/RecordStream;->writeCipher:Lorg/spongycastle/crypto/tls/TlsCipher;

    array-length v5, v2

    invoke-interface {v4, p1, v2, v6, v5}, Lorg/spongycastle/crypto/tls/TlsCipher;->encodePlaintext(S[BII)[B

    move-result-object v1

    .restart local v1    # "ciphertext":[B
    goto :goto_0
.end method
