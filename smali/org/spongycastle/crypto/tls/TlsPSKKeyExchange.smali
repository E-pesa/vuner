.class Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;
.super Ljava/lang/Object;
.source "TlsPSKKeyExchange.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsKeyExchange;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

.field protected dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

.field protected keyExchange:I

.field protected premasterSecret:[B

.field protected pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

.field protected psk_identity_hint:[B

.field protected rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;ILorg/spongycastle/crypto/tls/TlsPSKIdentity;)V
    .locals 2
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "keyExchange"    # I
    .param p3, "pskIdentity"    # Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 22
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 23
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 25
    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    .line 30
    packed-switch p2, :pswitch_data_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported key exchange algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :pswitch_0
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 41
    iput p2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    .line 42
    iput-object p3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    .line 43
    return-void

    .line 30
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public generateClientKeyExchange(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    array-length v1, v1

    if-nez v1, :cond_2

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->skipIdentityHint()V

    .line 111
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSKIdentity()[B

    move-result-object v0

    .line 113
    .local v0, "psk_identity":[B
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 115
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 117
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->rsaServerPublicKey:Lorg/spongycastle/crypto/params/RSAKeyParameters;

    invoke-static {v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsRSAUtils;->generateEncryptedPreMasterSecret(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/params/RSAKeyParameters;Ljava/io/OutputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    .line 125
    :cond_1
    :goto_1
    return-void

    .line 108
    .end local v0    # "psk_identity":[B
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    invoke-interface {v1, v2}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->notifyIdentityHint([B)V

    goto :goto_0

    .line 120
    .restart local v0    # "psk_identity":[B
    :cond_3
    iget v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    .line 122
    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v1}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iget-object v2, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    goto :goto_1
.end method

.method protected generateOtherSecret(I)[B
    .locals 2
    .param p1, "pskLength"    # I

    .prologue
    .line 140
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeClientPrivateKey:Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->premasterSecret:[B

    goto :goto_0

    .line 150
    :cond_1
    new-array v0, p1, [B

    goto :goto_0
.end method

.method public generatePremasterSecret()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v3, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->pskIdentity:Lorg/spongycastle/crypto/tls/TlsPSKIdentity;

    invoke-interface {v3}, Lorg/spongycastle/crypto/tls/TlsPSKIdentity;->getPSK()[B

    move-result-object v2

    .line 130
    .local v2, "psk":[B
    array-length v3, v2

    invoke-virtual {p0, v3}, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->generateOtherSecret(I)[B

    move-result-object v1

    .line 132
    .local v1, "other_secret":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x4

    array-length v4, v2

    add-int/2addr v3, v4

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 133
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 134
    invoke-static {v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public processClientCredentials(Lorg/spongycastle/crypto/tls/TlsCredentials;)V
    .locals 2
    .param p1, "clientCredentials"    # Lorg/spongycastle/crypto/tls/TlsCredentials;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerCertificate(Lorg/spongycastle/crypto/tls/Certificate;)V
    .locals 2
    .param p1, "serverCertificate"    # Lorg/spongycastle/crypto/tls/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method

.method public processServerKeyExchange(Ljava/io/InputStream;)V
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 62
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 64
    iget v6, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->keyExchange:I

    const/16 v7, 0xe

    if-ne v6, v7, :cond_1

    .line 66
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v5

    .line 67
    .local v5, "pBytes":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 68
    .local v3, "gBytes":[B
    invoke-static {p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 70
    .local v1, "YsBytes":[B
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v8, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 71
    .local v4, "p":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v8, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 72
    .local v2, "g":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v8, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 74
    .local v0, "Ys":Ljava/math/BigInteger;
    new-instance v6, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    new-instance v7, Lorg/spongycastle/crypto/params/DHParameters;

    invoke-direct {v7, v4, v2}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v6, v0, v7}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-static {v6}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    move-result-object v6

    iput-object v6, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->dhAgreeServerPublicKey:Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    .line 82
    .end local v0    # "Ys":Ljava/math/BigInteger;
    .end local v1    # "YsBytes":[B
    .end local v2    # "g":Ljava/math/BigInteger;
    .end local v3    # "gBytes":[B
    .end local v4    # "p":Ljava/math/BigInteger;
    .end local v5    # "pBytes":[B
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v6, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    array-length v6, v6

    if-nez v6, :cond_0

    goto :goto_0
.end method

.method public skipClientCredentials()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public skipServerCertificate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method

.method public skipServerKeyExchange()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsPSKKeyExchange;->psk_identity_hint:[B

    .line 58
    return-void
.end method

.method public validateCertificateRequest(Lorg/spongycastle/crypto/tls/CertificateRequest;)V
    .locals 2
    .param p1, "certificateRequest"    # Lorg/spongycastle/crypto/tls/CertificateRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0
.end method
