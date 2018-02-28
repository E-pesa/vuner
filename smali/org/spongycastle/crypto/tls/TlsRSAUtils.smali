.class public Lorg/spongycastle/crypto/tls/TlsRSAUtils;
.super Ljava/lang/Object;
.source "TlsRSAUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B
    .locals 8
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p1, "rsaServerPublicKey"    # Lorg/spongycastle/crypto/params/RSAKeyParameters;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 20
    const/16 v6, 0x30

    new-array v4, v6, [B

    .line 21
    .local v4, "premasterSecret":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 22
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getClientVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    invoke-static {v6, v4, v5}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V

    .line 24
    new-instance v1, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;

    new-instance v6, Lorg/spongycastle/crypto/engines/RSABlindedEngine;

    invoke-direct {v6}, Lorg/spongycastle/crypto/engines/RSABlindedEngine;-><init>()V

    invoke-direct {v1, v6}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;-><init>(Lorg/spongycastle/crypto/AsymmetricBlockCipher;)V

    .line 25
    .local v1, "encoding":Lorg/spongycastle/crypto/encodings/PKCS1Encoding;
    new-instance v6, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-virtual {v1, v2, v6}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 29
    :try_start_0
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v6

    sget-object v7, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v7}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v7

    if-lt v6, v7, :cond_0

    .line 30
    .local v2, "isTls":Z
    :goto_0
    const/4 v5, 0x0

    array-length v6, v4

    invoke-virtual {v1, v4, v5, v6}, Lorg/spongycastle/crypto/encodings/PKCS1Encoding;->processBlock([BII)[B

    move-result-object v3

    .line 32
    .local v3, "keData":[B
    if-eqz v2, :cond_1

    .line 34
    invoke-static {v3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 49
    :goto_1
    return-object v4

    .end local v2    # "isTls":Z
    .end local v3    # "keData":[B
    :cond_0
    move v2, v5

    .line 29
    goto :goto_0

    .line 38
    .restart local v2    # "isTls":Z
    .restart local v3    # "keData":[B
    :cond_1
    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 41
    .end local v2    # "isTls":Z
    .end local v3    # "keData":[B
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v5, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v5
.end method
