.class public Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;
.super Lorg/spongycastle/crypto/PBEParametersGenerator;
.source "PKCS5S2ParametersGenerator.java"


# instance fields
.field private hMac:Lorg/spongycastle/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 34
    invoke-direct {p0}, Lorg/spongycastle/crypto/PBEParametersGenerator;-><init>()V

    .line 35
    new-instance v0, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    .line 36
    return-void
.end method

.method private F([B[BI[B[BI)V
    .locals 8
    .param p1, "P"    # [B
    .param p2, "S"    # [B
    .param p3, "c"    # I
    .param p4, "iBuf"    # [B
    .param p5, "out"    # [B
    .param p6, "outOff"    # I

    .prologue
    const/4 v7, 0x0

    .line 46
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v4

    new-array v3, v4, [B

    .line 47
    .local v3, "state":[B
    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 49
    .local v2, "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 51
    if-eqz p2, :cond_0

    .line 53
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    array-length v5, p2

    invoke-interface {v4, p2, v7, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 56
    :cond_0
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    array-length v5, p4

    invoke-interface {v4, p4, v7, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 58
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 60
    array-length v4, v3

    invoke-static {v3, v7, p5, p6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    if-nez p3, :cond_1

    .line 64
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "iteration count must be at least 1."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_1
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 69
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v2}, Lorg/spongycastle/crypto/Mac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 70
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    array-length v5, v3

    invoke-interface {v4, v3, v7, v5}, Lorg/spongycastle/crypto/Mac;->update([BII)V

    .line 71
    iget-object v4, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v4, v3, v7}, Lorg/spongycastle/crypto/Mac;->doFinal([BI)I

    .line 73
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v3

    if-eq v1, v4, :cond_2

    .line 75
    add-int v4, p6, v1

    aget-byte v5, p5, v4

    aget-byte v6, v3, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p5, v4

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 67
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "j":I
    :cond_3
    return-void
.end method

.method private generateDerivedKey(I)[B
    .locals 10
    .param p1, "dkLen"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->hMac:Lorg/spongycastle/crypto/Mac;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Mac;->getMacSize()I

    move-result v7

    .line 94
    .local v7, "hLen":I
    add-int v0, p1, v7

    add-int/lit8 v0, v0, -0x1

    div-int v9, v0, v7

    .line 95
    .local v9, "l":I
    const/4 v0, 0x4

    new-array v4, v0, [B

    .line 96
    .local v4, "iBuf":[B
    mul-int v0, v9, v7

    new-array v5, v0, [B

    .line 98
    .local v5, "out":[B
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    if-gt v8, v9, :cond_0

    .line 100
    invoke-direct {p0, v4, v8}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->intToOctet([BI)V

    .line 102
    iget-object v1, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->password:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->salt:[B

    iget v3, p0, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->iterationCount:I

    add-int/lit8 v0, v8, -0x1

    mul-int v6, v0, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->F([B[BI[B[BI)V

    .line 98
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v5
.end method

.method private intToOctet([BI)V
    .locals 2
    .param p1, "buf"    # [B
    .param p2, "i"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 85
    const/4 v0, 0x1

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 86
    const/4 v0, 0x2

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 87
    const/4 v0, 0x3

    int-to-byte v1, p2

    aput-byte v1, p1, v0

    .line 88
    return-void
.end method


# virtual methods
.method public generateDerivedMacParameters(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 1
    .param p1, "keySize"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v0

    return-object v0
.end method

.method public generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;
    .locals 3
    .param p1, "keySize"    # I

    .prologue
    .line 118
    div-int/lit8 p1, p1, 0x8

    .line 120
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 122
    .local v0, "dKey":[B
    new-instance v1, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    return-object v1
.end method

.method public generateDerivedParameters(II)Lorg/spongycastle/crypto/CipherParameters;
    .locals 4
    .param p1, "keySize"    # I
    .param p2, "ivSize"    # I

    .prologue
    .line 138
    div-int/lit8 p1, p1, 0x8

    .line 139
    div-int/lit8 p2, p2, 0x8

    .line 141
    add-int v1, p1, p2

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;->generateDerivedKey(I)[B

    move-result-object v0

    .line 143
    .local v0, "dKey":[B
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v2, Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    invoke-direct {v1, v2, v0, p1, p2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    return-object v1
.end method
