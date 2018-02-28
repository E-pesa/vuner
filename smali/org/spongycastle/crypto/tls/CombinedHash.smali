.class Lorg/spongycastle/crypto/tls/CombinedHash;
.super Ljava/lang/Object;
.source "CombinedHash.java"

# interfaces
.implements Lorg/spongycastle/crypto/Digest;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected md5:Lorg/spongycastle/crypto/digests/MD5Digest;

.field protected sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    .line 19
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 20
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/CombinedHash;)V
    .locals 2
    .param p1, "t"    # Lorg/spongycastle/crypto/tls/CombinedHash;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iget-object v0, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 32
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    iget-object v1, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>(Lorg/spongycastle/crypto/digests/MD5Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    .line 33
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    iget-object v1, p1, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>(Lorg/spongycastle/crypto/digests/SHA1Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 34
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;)V
    .locals 1
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 25
    new-instance v0, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    .line 26
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    .line 27
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 75
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    if-eqz v3, :cond_0

    .line 77
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v3

    sget-object v4, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v2, 0x1

    .line 79
    .local v2, "isTls":Z
    :goto_0
    if-nez v2, :cond_0

    .line 81
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    sget-object v4, Lorg/spongycastle/crypto/tls/SSL3Mac;->MD5_IPAD:[B

    sget-object v5, Lorg/spongycastle/crypto/tls/SSL3Mac;->MD5_OPAD:[B

    invoke-virtual {p0, v3, v4, v5}, Lorg/spongycastle/crypto/tls/CombinedHash;->ssl3Complete(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 82
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    sget-object v4, Lorg/spongycastle/crypto/tls/SSL3Mac;->SHA1_IPAD:[B

    sget-object v5, Lorg/spongycastle/crypto/tls/SSL3Mac;->SHA1_OPAD:[B

    invoke-virtual {p0, v3, v4, v5}, Lorg/spongycastle/crypto/tls/CombinedHash;->ssl3Complete(Lorg/spongycastle/crypto/Digest;[B[B)V

    .line 86
    .end local v2    # "isTls":Z
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-virtual {v3, p1, p2}, Lorg/spongycastle/crypto/digests/MD5Digest;->doFinal([BI)I

    move-result v0

    .line 87
    .local v0, "i1":I
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    add-int/lit8 v4, p2, 0x10

    invoke-virtual {v3, p1, v4}, Lorg/spongycastle/crypto/digests/SHA1Digest;->doFinal([BI)I

    move-result v1

    .line 88
    .local v1, "i2":I
    add-int v3, v0, v1

    return v3

    .line 77
    .end local v0    # "i1":I
    .end local v1    # "i2":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/MD5Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x24

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/MD5Digest;->reset()V

    .line 97
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;->reset()V

    .line 98
    return-void
.end method

.method protected ssl3Complete(Lorg/spongycastle/crypto/Digest;[B[B)V
    .locals 4
    .param p1, "d"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "ipad"    # [B
    .param p3, "opad"    # [B

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v2, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v2}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    iget-object v0, v2, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    .line 104
    .local v0, "secret":[B
    array-length v2, v0

    invoke-interface {p1, v0, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 105
    array-length v2, p2

    invoke-interface {p1, p2, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 107
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v1, v2, [B

    .line 108
    .local v1, "tmp":[B
    invoke-interface {p1, v1, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 110
    array-length v2, v0

    invoke-interface {p1, v0, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 111
    array-length v2, p3

    invoke-interface {p1, p3, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 112
    array-length v2, v1

    invoke-interface {p1, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 113
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    .prologue
    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/MD5Digest;->update(B)V

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/digests/SHA1Digest;->update(B)V

    .line 59
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->md5:Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/MD5Digest;->update([BII)V

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/CombinedHash;->sha1:Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/spongycastle/crypto/digests/SHA1Digest;->update([BII)V

    .line 68
    return-void
.end method
