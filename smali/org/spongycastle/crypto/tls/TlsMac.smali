.class public Lorg/spongycastle/crypto/tls/TlsMac;
.super Ljava/lang/Object;
.source "TlsMac.java"


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected mac:Lorg/spongycastle/crypto/Mac;

.field protected secret:[B

.field protected seqNo:J


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/Digest;[BII)V
    .locals 4
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p3, "key_block"    # [B
    .param p4, "offset"    # I
    .param p5, "len"    # I

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsMac;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 35
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    .line 37
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p3, p4, p5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 39
    .local v1, "param":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->secret:[B

    .line 41
    invoke-interface {p1}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v2

    sget-object v3, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v0, 0x1

    .line 43
    .local v0, "isTls":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 45
    new-instance v2, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v2, p2}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    .line 52
    :goto_1
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v2, v1}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 53
    return-void

    .line 41
    .end local v0    # "isTls":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 49
    .restart local v0    # "isTls":Z
    :cond_1
    new-instance v2, Lorg/spongycastle/crypto/tls/SSL3Mac;

    invoke-direct {v2, p2}, Lorg/spongycastle/crypto/tls/SSL3Mac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v2, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    goto :goto_1
.end method


# virtual methods
.method public calculateMac(S[BII)[B
    .locals 10
    .param p1, "type"    # S
    .param p2, "message"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 100
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v6}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 101
    .local v5, "serverVersion":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v6

    sget-object v7, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v7

    if-lt v6, v7, :cond_1

    const/4 v2, 0x1

    .line 103
    .local v2, "isTls":Z
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v2, :cond_2

    const/16 v6, 0xd

    :goto_1
    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 106
    .local v0, "bosMac":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-wide v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    invoke-static {v6, v7, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint64(JLjava/io/OutputStream;)V

    .line 107
    invoke-static {p1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 109
    if-eqz v2, :cond_0

    .line 111
    invoke-static {v5, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V

    .line 114
    :cond_0
    invoke-static {p4, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 123
    .local v3, "macHeader":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v7, 0x0

    array-length v8, v3

    invoke-interface {v6, v3, v7, v8}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 124
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v6, p2, p3, p4}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 126
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v6}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v6

    new-array v4, v6, [B

    .line 127
    .local v4, "result":[B
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    const/4 v7, 0x0

    invoke-interface {v6, v4, v7}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 128
    return-object v4

    .line 101
    .end local v0    # "bosMac":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "isTls":Z
    .end local v3    # "macHeader":[B
    .end local v4    # "result":[B
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 103
    .restart local v2    # "isTls":Z
    :cond_2
    const/16 v6, 0xb

    goto :goto_1

    .line 116
    .restart local v0    # "bosMac":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Internal error during mac calculation"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getMACSecret()[B
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->secret:[B

    return-object v0
.end method

.method public getSequenceNumber()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    return-wide v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->mac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v0

    return v0
.end method

.method public incSequenceNumber()V
    .locals 4

    .prologue
    .line 76
    iget-wide v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/tls/TlsMac;->seqNo:J

    .line 77
    return-void
.end method
