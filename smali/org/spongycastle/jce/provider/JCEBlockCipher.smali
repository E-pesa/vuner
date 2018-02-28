.class public Lorg/spongycastle/jce/provider/JCEBlockCipher;
.super Ljavax/crypto/CipherSpi;
.source "JCEBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/jcajce/provider/symmetric/util/PBE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithAESCBC;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithSHAAndTwofish;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd40BitRC2;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithSHAAnd128BitRC2;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndRC2;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithSHA1AndDES;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndRC2;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$PBEWithMD5AndDES;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$RC2CBC;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$RC2;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$GOST28147cbc;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$GOST28147;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$DESCBC;,
        Lorg/spongycastle/jce/provider/JCEBlockCipher$DES;
    }
.end annotation


# instance fields
.field private availableSpecs:[Ljava/lang/Class;

.field private baseEngine:Lorg/spongycastle/crypto/BlockCipher;

.field private cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private ivLength:I

.field private ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

.field private modeName:Ljava/lang/String;

.field private padded:Z

.field private pbeAlgorithm:Ljava/lang/String;

.field private pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 5
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 98
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 85
    iput v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 89
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 90
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 99
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    .line 101
    new-instance v0, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 102
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/BlockCipher;I)V
    .locals 5
    .param p1, "engine"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 85
    iput v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 89
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 90
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    .line 110
    new-instance v0, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 111
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 112
    return-void
.end method

.method protected constructor <init>(Lorg/spongycastle/crypto/BufferedBlockCipher;I)V
    .locals 5
    .param p1, "engine"    # Lorg/spongycastle/crypto/BufferedBlockCipher;
    .param p2, "ivLength"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-class v2, Ljavax/crypto/spec/RC5ParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljavax/crypto/spec/PBEParameterSpec;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    .line 85
    iput v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 89
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 90
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 92
    iput-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lorg/spongycastle/crypto/BufferedBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    .line 120
    new-instance v0, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    invoke-direct {v0, p1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 121
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 122
    return-void
.end method

.method private isAEADModeName(Ljava/lang/String;)Z
    .locals 1
    .param p1, "modeName"    # Ljava/lang/String;

    .prologue
    .line 740
    const-string v0, "CCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EAX"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 716
    const/4 v7, 0x0

    .line 718
    .local v7, "len":I
    if-eqz p3, :cond_0

    .line 720
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 725
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    add-int v1, p5, v7

    invoke-interface {v0, p4, v1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 727
    :catch_0
    move-exception v6

    .line 729
    .local v6, "e":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    .end local v6    # "e":Lorg/spongycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 733
    .local v6, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 675
    const/4 v7, 0x0

    .line 676
    .local v7, "len":I
    invoke-virtual {p0, p3}, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineGetOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    .line 678
    .local v4, "tmp":[B
    if-eqz p3, :cond_0

    .line 680
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v7

    .line 685
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, v4, v7}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/spongycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    add-int/2addr v7, v0

    .line 696
    array-length v0, v4

    if-ne v7, v0, :cond_1

    .line 705
    .end local v4    # "tmp":[B
    :goto_0
    return-object v4

    .line 687
    .restart local v4    # "tmp":[B
    :catch_0
    move-exception v6

    .line 689
    .local v6, "e":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    .end local v6    # "e":Lorg/spongycastle/crypto/DataLengthException;
    :catch_1
    move-exception v6

    .line 693
    .local v6, "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    .end local v6    # "e":Lorg/spongycastle/crypto/InvalidCipherTextException;
    :cond_1
    new-array v8, v7, [B

    .line 703
    .local v8, "out":[B
    invoke-static {v4, v5, v8, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 705
    goto :goto_0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;

    .prologue
    .line 137
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v0, p1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .prologue
    const/16 v3, 0x2f

    .line 148
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v2, :cond_0

    .line 150
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v2, :cond_1

    .line 154
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    sget-object v3, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 155
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    :goto_1
    return-object v2

    .line 157
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_2

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 173
    :cond_2
    :try_start_1
    sget-object v2, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->PROVIDER_NAME:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 174
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 176
    :catch_1
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 573
    const/4 v1, 0x0

    .line 575
    .local v1, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_1

    .line 577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    .line 581
    :try_start_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->availableSpecs:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 590
    :cond_0
    if-nez v1, :cond_1

    .line 592
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t handle parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 584
    :catch_0
    move-exception v2

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 596
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2, v1, p4}, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 598
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 599
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 609
    const/4 v1, 0x0

    :try_start_0
    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v1, p3}, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 14
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 362
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 363
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 364
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->engineParams:Ljava/security/AlgorithmParameters;

    .line 369
    move-object/from16 v0, p2

    instance-of v11, v0, Ljavax/crypto/SecretKey;

    if-nez v11, :cond_0

    .line 371
    new-instance v11, Ljava/security/InvalidKeyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key for algorithm "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not suitable for symmetric enryption."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 377
    :cond_0
    if-nez p3, :cond_1

    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 379
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "RC5 requires an RC5ParametersSpec to be passed in."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 385
    :cond_1
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    if-eqz v11, :cond_8

    move-object/from16 v5, p2

    .line 387
    check-cast v5, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 389
    .local v5, "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 391
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getOID()Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    invoke-virtual {v11}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    .line 398
    :goto_0
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v11

    if-eqz v11, :cond_6

    .line 400
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getParam()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v7

    .line 401
    .local v7, "param":Lorg/spongycastle/crypto/CipherParameters;
    new-instance v11, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getSalt()[B

    move-result-object v12

    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getIterationCount()I

    move-result v13

    invoke-direct {v11, v12, v13}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 413
    :goto_1
    instance-of v11, v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v11, :cond_2

    move-object v11, v7

    .line 415
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 516
    .end local v5    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    :goto_2
    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_17

    instance-of v11, v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v11, :cond_17

    .line 518
    move-object/from16 v4, p4

    .line 520
    .local v4, "ivRandom":Ljava/security/SecureRandom;
    if-nez v4, :cond_3

    .line 522
    new-instance v4, Ljava/security/SecureRandom;

    .end local v4    # "ivRandom":Ljava/security/SecureRandom;
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 525
    .restart local v4    # "ivRandom":Ljava/security/SecureRandom;
    :cond_3
    const/4 v11, 0x1

    if-eq p1, v11, :cond_4

    const/4 v11, 0x3

    if-ne p1, v11, :cond_15

    .line 527
    :cond_4
    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    new-array v3, v11, [B

    .line 529
    .local v3, "iv":[B
    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 530
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-direct {v8, v7, v3}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .local v8, "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 531
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 539
    .end local v3    # "iv":[B
    .end local v4    # "ivRandom":Ljava/security/SecureRandom;
    :goto_3
    if-eqz p4, :cond_16

    iget-boolean v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->padded:Z

    if-eqz v11, :cond_16

    .line 541
    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    move-object/from16 v0, p4

    invoke-direct {v7, v8, v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;-><init>(Lorg/spongycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    .line 546
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :goto_4
    packed-switch p1, :pswitch_data_0

    .line 557
    :try_start_0
    new-instance v11, Ljava/security/InvalidParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "unknown opmode "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " passed"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 560
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 395
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v5    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_5
    invoke-virtual {v5}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeAlgorithm:Ljava/lang/String;

    goto/16 :goto_0

    .line 403
    :cond_6
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v11, :cond_7

    move-object/from16 v11, p3

    .line 405
    check-cast v11, Ljavax/crypto/spec/PBEParameterSpec;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;

    .line 406
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v11

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-static {v5, v0, v11}, Lorg/spongycastle/jcajce/provider/symmetric/util/PBE$Util;->makePBEParameters(Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v7

    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_1

    .line 410
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_7
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "PBE requires PBE parameters to be set."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 418
    .end local v5    # "k":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    :cond_8
    if-nez p3, :cond_9

    .line 420
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 422
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_9
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v11, :cond_e

    .line 424
    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_c

    move-object/from16 v6, p3

    .line 426
    check-cast v6, Ljavax/crypto/spec/IvParameterSpec;

    .line 428
    .local v6, "p":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v11

    array-length v11, v11

    iget v12, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eq v11, v12, :cond_a

    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v11}, Lorg/spongycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 430
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IV must be "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " bytes long."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 433
    :cond_a
    move-object/from16 v0, p2

    instance-of v11, v0, Lorg/spongycastle/jce/spec/RepeatedSecretKeySpec;

    if-eqz v11, :cond_b

    .line 435
    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    const/4 v11, 0x0

    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v7

    .line 436
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_2

    .line 440
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_b
    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithIV;

    new-instance v11, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v6}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v7

    .line 441
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_2

    .line 446
    .end local v6    # "p":Ljavax/crypto/spec/IvParameterSpec;
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_c
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    if-eqz v11, :cond_d

    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v12, "ECB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 448
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "ECB mode does not use an IV"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 451
    :cond_d
    new-instance v7, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    invoke-direct {v7, v11}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 454
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_e
    move-object/from16 v0, p3

    instance-of v11, v0, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    if-eqz v11, :cond_f

    move-object/from16 v2, p3

    .line 456
    check-cast v2, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    .line 458
    .local v2, "gost28147Param":Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;
    new-instance v7, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    new-instance v11, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    check-cast p3, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->getSbox()[B

    move-result-object v12

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .line 461
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 463
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 464
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    .end local v2    # "gost28147Param":Lorg/spongycastle/jce/spec/GOST28147ParameterSpec;
    :goto_5
    move-object v7, v8

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_2

    .line 467
    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_f
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v11, :cond_10

    move-object/from16 v9, p3

    .line 469
    check-cast v9, Ljavax/crypto/spec/RC2ParameterSpec;

    .line 471
    .local v9, "rc2Param":Ljavax/crypto/spec/RC2ParameterSpec;
    new-instance v7, Lorg/spongycastle/crypto/params/RC2Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    check-cast p3, Ljavax/crypto/spec/RC2ParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v12

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/params/RC2Parameters;-><init>([BI)V

    .line 473
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    invoke-virtual {v9}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 475
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v9}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 476
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto :goto_5

    .line 479
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .end local v9    # "rc2Param":Ljavax/crypto/spec/RC2ParameterSpec;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_10
    move-object/from16 v0, p3

    instance-of v11, v0, Ljavax/crypto/spec/RC5ParameterSpec;

    if-eqz v11, :cond_14

    move-object/from16 v10, p3

    .line 481
    check-cast v10, Ljavax/crypto/spec/RC5ParameterSpec;

    .line 483
    .local v10, "rc5Param":Ljavax/crypto/spec/RC5ParameterSpec;
    new-instance v7, Lorg/spongycastle/crypto/params/RC5Parameters;

    invoke-interface/range {p2 .. p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v11

    check-cast p3, Ljavax/crypto/spec/RC5ParameterSpec;

    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual/range {p3 .. p3}, Ljavax/crypto/spec/RC5ParameterSpec;->getRounds()I

    move-result v12

    invoke-direct {v7, v11, v12}, Lorg/spongycastle/crypto/params/RC5Parameters;-><init>([BI)V

    .line 484
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 486
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-32"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 488
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v11

    const/16 v12, 0x20

    if-eq v11, v12, :cond_13

    .line 490
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RC5 already set up for a word size of 32 not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 493
    :cond_11
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "RC5-64"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 495
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v11

    const/16 v12, 0x40

    if-eq v11, v12, :cond_13

    .line 497
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RC5 already set up for a word size of 64 not "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getWordSize()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 503
    :cond_12
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "RC5 parameters passed to a cipher that is not RC5."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 505
    :cond_13
    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v11

    if-eqz v11, :cond_2

    iget v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    if-eqz v11, :cond_2

    .line 507
    new-instance v8, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v10}, Ljavax/crypto/spec/RC5ParameterSpec;->getIV()[B

    move-result-object v11

    invoke-direct {v8, v7, v11}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    move-object v11, v8

    .line 508
    check-cast v11, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iput-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivParam:Lorg/spongycastle/crypto/params/ParametersWithIV;

    goto/16 :goto_5

    .line 513
    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .end local v10    # "rc5Param":Ljavax/crypto/spec/RC5ParameterSpec;
    .restart local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_14
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "unknown parameter type."

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 533
    .end local p3    # "params":Ljava/security/spec/AlgorithmParameterSpec;
    .restart local v4    # "ivRandom":Ljava/security/SecureRandom;
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_15
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v11}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v11

    invoke-interface {v11}, Lorg/spongycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PGPCFB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_17

    .line 535
    new-instance v11, Ljava/security/InvalidAlgorithmParameterException;

    const-string v12, "no IV set when one expected"

    invoke-direct {v11, v12}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 550
    .end local v4    # "ivRandom":Ljava/security/SecureRandom;
    :pswitch_0
    :try_start_1
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v12, 0x1

    invoke-interface {v11, v12, v7}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 564
    :goto_6
    return-void

    .line 554
    :pswitch_1
    iget-object v11, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v12, 0x0

    invoke-interface {v11, v12, v7}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    :cond_16
    move-object v7, v8

    .end local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_4

    :cond_17
    move-object v8, v7

    .end local v7    # "param":Lorg/spongycastle/crypto/CipherParameters;
    .restart local v8    # "param":Lorg/spongycastle/crypto/CipherParameters;
    goto/16 :goto_3

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 6
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 190
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    .line 192
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "ECB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    iput v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 195
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 295
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CBC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 200
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "OFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 205
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 206
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 208
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 210
    .local v1, "wordSize":I
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 215
    .end local v1    # "wordSize":I
    :cond_2
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/OFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/crypto/modes/OFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 219
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 221
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 222
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v4, :cond_4

    .line 224
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 226
    .restart local v1    # "wordSize":I
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 231
    .end local v1    # "wordSize":I
    :cond_4
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v5}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    mul-int/lit8 v5, v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 235
    :cond_5
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "PGP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 237
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "PGPCFBwithIV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 239
    .local v0, "inlineIV":Z
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 240
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/crypto/modes/PGPCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Z)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 243
    .end local v0    # "inlineIV":Z
    :cond_6
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "OpenPGPCFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 245
    iput v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 246
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/OpenPGPCFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 249
    :cond_7
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "SIC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 251
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 252
    iget v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_8

    .line 254
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_8
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 259
    :cond_9
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CTR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 261
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 262
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/modes/SICBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/modes/SICBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 265
    :cond_a
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "GOFB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 267
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 268
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/BufferedBlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/modes/GOFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 271
    :cond_b
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CTS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 273
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 274
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/CTSBlockCipher;

    new-instance v4, Lorg/spongycastle/crypto/modes/CBCBlockCipher;

    iget-object v5, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 276
    :cond_c
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "CCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 278
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 279
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/CCMBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/CCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 281
    :cond_d
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "EAX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 283
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 284
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/EAXBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/EAXBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 286
    :cond_e
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    const-string v3, "GCM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 288
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    iput v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->ivLength:I

    .line 289
    new-instance v2, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;

    new-instance v3, Lorg/spongycastle/crypto/modes/GCMBlockCipher;

    iget-object v4, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->baseEngine:Lorg/spongycastle/crypto/BlockCipher;

    invoke-direct {v3, v4}, Lorg/spongycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$AEADGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/modes/AEADBlockCipher;)V

    iput-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 293
    :cond_f
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t support mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v1}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->wrapOnNoPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/BufferedBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/BufferedBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v1, "WITHCTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    new-instance v2, Lorg/spongycastle/crypto/modes/CTSBlockCipher;

    iget-object v3, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/spongycastle/crypto/modes/CTSBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BufferedBlockCipher;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 316
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->padded:Z

    .line 318
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->modeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/spongycastle/jce/provider/JCEBlockCipher;->isAEADModeName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 320
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only NoPadding can be used with AEAD modes."

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_3
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 324
    :cond_4
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 326
    :cond_5
    const-string v1, "ZEROBYTEPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 328
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/paddings/ZeroBytePadding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/ZeroBytePadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto :goto_0

    .line 330
    :cond_6
    const-string v1, "ISO10126PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "ISO10126-2PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    :cond_7
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/paddings/ISO10126d2Padding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/ISO10126d2Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 334
    :cond_8
    const-string v1, "X9.23PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "X923PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 336
    :cond_9
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/paddings/X923Padding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/X923Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 338
    :cond_a
    const-string v1, "ISO7816-4PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "ISO9797-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 340
    :cond_b
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/ISO7816d4Padding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 342
    :cond_c
    const-string v1, "TBCPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 344
    new-instance v1, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;

    iget-object v2, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    invoke-interface {v2}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUnderlyingCipher()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v2

    new-instance v3, Lorg/spongycastle/crypto/paddings/TBCPadding;

    invoke-direct {v3}, Lorg/spongycastle/crypto/paddings/TBCPadding;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/spongycastle/jce/provider/JCEBlockCipher$BufferedGenericBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/paddings/BlockCipherPadding;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    goto/16 :goto_0

    .line 348
    :cond_d
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " unknown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 661
    :try_start_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I
    :try_end_0
    .catch Lorg/spongycastle/crypto/DataLengthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 663
    :catch_0
    move-exception v6

    .line 665
    .local v6, "e":Lorg/spongycastle/crypto/DataLengthException;
    new-instance v0, Ljavax/crypto/ShortBufferException;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/DataLengthException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    .line 622
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    move/from16 v0, p3

    invoke-interface {v1, v0}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->getUpdateOutputSize(I)I

    move-result v13

    .line 624
    .local v13, "length":I
    if-lez v13, :cond_2

    .line 626
    new-array v5, v13, [B

    .line 628
    .local v5, "out":[B
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-interface/range {v1 .. v6}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    move-result v12

    .line 630
    .local v12, "len":I
    if-nez v12, :cond_0

    .line 632
    const/4 v14, 0x0

    .line 648
    .end local v5    # "out":[B
    .end local v12    # "len":I
    :goto_0
    return-object v14

    .line 634
    .restart local v5    # "out":[B
    .restart local v12    # "len":I
    :cond_0
    array-length v1, v5

    if-eq v12, v1, :cond_1

    .line 636
    new-array v14, v12, [B

    .line 638
    .local v14, "tmp":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v14, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .end local v14    # "tmp":[B
    :cond_1
    move-object v14, v5

    .line 643
    goto :goto_0

    .line 646
    .end local v5    # "out":[B
    .end local v12    # "len":I
    :cond_2
    iget-object v6, p0, Lorg/spongycastle/jce/provider/JCEBlockCipher;->cipher:Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-interface/range {v6 .. v11}, Lorg/spongycastle/jce/provider/JCEBlockCipher$GenericBlockCipher;->processBytes([BII[BI)I

    .line 648
    const/4 v14, 0x0

    goto :goto_0
.end method
