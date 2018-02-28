.class public Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUEncryptionKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 21

    .prologue
    .line 42
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v1, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->N:I

    .line 43
    .local v1, "N":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v0, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->q:I

    move/from16 v17, v0

    .line 44
    .local v17, "q":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v7, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->df:I

    .line 45
    .local v7, "df":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v2, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->df1:I

    .line 46
    .local v2, "df1":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v3, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->df2:I

    .line 47
    .local v3, "df2":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v4, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->df3:I

    .line 48
    .local v4, "df3":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v8, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->dg:I

    .line 49
    .local v8, "dg":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v10, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    .line 50
    .local v10, "fastFp":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v0, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move/from16 v18, v0

    .line 54
    .local v18, "sparse":Z
    const/4 v11, 0x0

    .line 62
    .local v11, "fp":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    .line 65
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v5, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    move/from16 v0, v18

    invoke-static {v1, v7, v7, v0, v5}, Lorg/spongycastle/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v19

    .line 66
    .local v19, "t":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :goto_1
    invoke-interface/range {v19 .. v19}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v9

    .line 67
    .local v9, "f":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v5, 0x3

    invoke-virtual {v9, v5}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 68
    iget-object v5, v9, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v6, 0x0

    aget v20, v5, v6

    add-int/lit8 v20, v20, 0x1

    aput v20, v5, v6

    .line 81
    :cond_1
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 82
    .local v12, "fq":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v12, :cond_0

    .line 90
    if-eqz v10, :cond_2

    .line 92
    new-instance v11, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .end local v11    # "fp":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {v11, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 93
    .restart local v11    # "fp":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    iget-object v5, v11, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v6, 0x0

    const/16 v20, 0x1

    aput v20, v5, v6

    .line 100
    :cond_2
    add-int/lit8 v5, v8, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static {v1, v8, v5, v6}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v13

    .line 101
    .local v13, "g":Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->invertFq(I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 107
    move/from16 v0, v17

    invoke-virtual {v13, v12, v0}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v14

    .line 108
    .local v14, "h":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    .line 109
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 110
    invoke-virtual {v13}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->clear()V

    .line 111
    invoke-virtual {v12}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clear()V

    .line 113
    new-instance v15, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v15, v14, v0, v11, v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;)V

    .line 114
    .local v15, "priv":Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;
    new-instance v16, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v14, v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;)V

    .line 115
    .local v16, "pub":Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;
    new-instance v5, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v0, v16

    invoke-direct {v5, v0, v15}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v5

    .line 65
    .end local v9    # "f":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v12    # "fq":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v13    # "g":Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;
    .end local v14    # "h":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v15    # "priv":Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;
    .end local v16    # "pub":Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;
    .end local v19    # "t":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move v5, v4

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v19

    goto/16 :goto_1

    .line 72
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    iget v5, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v5, :cond_5

    add-int/lit8 v5, v7, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    move/from16 v0, v18

    invoke-static {v1, v7, v5, v0, v6}, Lorg/spongycastle/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v19

    .line 73
    .restart local v19    # "t":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :goto_2
    invoke-interface/range {v19 .. v19}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v9

    .line 74
    .restart local v9    # "f":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v9}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 75
    if-nez v11, :cond_1

    goto/16 :goto_0

    .line 72
    .end local v9    # "f":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v19    # "t":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :cond_5
    add-int/lit8 v5, v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v19

    goto :goto_2
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 32
    check-cast p1, Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/NTRUEncryptionKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionKeyGenerationParameters;

    .line 33
    return-void
.end method
