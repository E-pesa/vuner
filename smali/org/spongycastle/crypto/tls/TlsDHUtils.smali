.class public Lorg/spongycastle/crypto/tls/TlsDHUtils;
.super Ljava/lang/Object;
.source "TlsDHUtils.java"


# static fields
.field static final ONE:Ljava/math/BigInteger;

.field static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    .line 20
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDHBasicAgreement(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;)[B
    .locals 3
    .param p0, "publicKey"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .param p1, "privateKey"    # Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .prologue
    .line 25
    new-instance v1, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;

    invoke-direct {v1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;-><init>()V

    .line 26
    .local v1, "dhAgree":Lorg/spongycastle/crypto/agreement/DHBasicAgreement;
    invoke-virtual {v1, p1}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 27
    invoke-virtual {v1, p0}, Lorg/spongycastle/crypto/agreement/DHBasicAgreement;->calculateAgreement(Lorg/spongycastle/crypto/CipherParameters;)Ljava/math/BigInteger;

    move-result-object v0

    .line 28
    .local v0, "agreement":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v2

    return-object v2
.end method

.method public static generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;

    .prologue
    .line 33
    new-instance v0, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    .line 34
    .local v0, "dhGen":Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;
    new-instance v1, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;

    invoke-direct {v1, p0, p1}, Lorg/spongycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 35
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    return-object v1
.end method

.method public static generateEphemeralClientKeyExchange(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;Ljava/io/OutputStream;)Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    .locals 5
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "dhParams"    # Lorg/spongycastle/crypto/params/DHParameters;
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/tls/TlsDHUtils;->generateDHKeyPair(Ljava/security/SecureRandom;Lorg/spongycastle/crypto/params/DHParameters;)Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v1

    .line 42
    .local v1, "dhAgreeClientKeyPair":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;

    .line 44
    .local v2, "dhAgreeClientPrivateKey":Lorg/spongycastle/crypto/params/DHPrivateKeyParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 45
    .local v0, "Yc":Ljava/math/BigInteger;
    invoke-static {v0}, Lorg/spongycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 46
    .local v3, "keData":[B
    invoke-static {v3, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    .line 48
    return-object v2
.end method

.method public static validateDHPublicKey(Lorg/spongycastle/crypto/params/DHPublicKeyParameters;)Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .locals 6
    .param p0, "key"    # Lorg/spongycastle/crypto/params/DHPublicKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2f

    .line 54
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v0

    .line 55
    .local v0, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v3

    .line 56
    .local v3, "params":Lorg/spongycastle/crypto/params/DHParameters;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 57
    .local v2, "p":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    .line 59
    .local v1, "g":Ljava/math/BigInteger;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 61
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 63
    :cond_0
    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_1

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_2

    .line 65
    :cond_1
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 67
    :cond_2
    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-ltz v4, :cond_3

    sget-object v4, Lorg/spongycastle/crypto/tls/TlsDHUtils;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_4

    .line 69
    :cond_3
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 74
    :cond_4
    return-object p0
.end method
