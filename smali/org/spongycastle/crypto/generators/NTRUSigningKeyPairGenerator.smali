.class public Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;
.super Ljava/lang/Object;
.source "NTRUSigningKeyPairGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$1;,
        Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;,
        Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;
    }
.end annotation


# instance fields
.field private params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    return-void
.end method

.method static synthetic access$100(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;)Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    .prologue
    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    return-object v0
.end method

.method private generateBasis()Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;
    .locals 48

    .prologue
    .line 177
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v4, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->N:I

    .line 178
    .local v4, "N":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v0, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->q:I

    move/from16 v42, v0

    .line 179
    .local v42, "q":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v0, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d:I

    move/from16 v30, v0

    .line 180
    .local v30, "d":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v5, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d1:I

    .line 181
    .local v5, "d1":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v6, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d2:I

    .line 182
    .local v6, "d2":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v8, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d3:I

    .line 183
    .local v8, "d3":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v0, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->basisType:I

    move/from16 v29, v0

    .line 194
    .local v29, "basisType":I
    mul-int/lit8 v7, v4, 0x2

    add-int/lit8 v28, v7, 0x1

    .line 195
    .local v28, "_2n1":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget-boolean v0, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->primeCheck:Z

    move/from16 v41, v0

    .line 201
    .local v41, "primeCheck":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v7, :cond_4

    add-int/lit8 v7, v30, 0x1

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    move/from16 v0, v30

    invoke-static {v4, v7, v0, v9}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v16

    .line 202
    .local v16, "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :goto_0
    invoke-interface/range {v16 .. v16}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v10

    .line 204
    .local v10, "fInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v41, :cond_1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    move-result-object v7

    iget-object v7, v7, Lorg/spongycastle/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 205
    :cond_1
    move/from16 v0, v42

    invoke-virtual {v10, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v34

    .line 207
    .local v34, "fq":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v34, :cond_0

    .line 208
    invoke-virtual {v10}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/spongycastle/math/ntru/polynomial/Resultant;

    move-result-object v44

    .line 216
    .local v44, "rf":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->polyType:I

    if-nez v7, :cond_5

    add-int/lit8 v7, v30, 0x1

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    move/from16 v0, v30

    invoke-static {v4, v7, v0, v9}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v35

    .line 217
    .local v35, "g":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :goto_1
    invoke-interface/range {v35 .. v35}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 219
    .local v11, "gInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v41, :cond_3

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->resultant(I)Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    move-result-object v7

    iget-object v7, v7, Lorg/spongycastle/math/ntru/polynomial/ModularResultant;->res:Ljava/math/BigInteger;

    sget-object v9, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 221
    :cond_3
    move/from16 v0, v42

    invoke-virtual {v11, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 222
    invoke-virtual {v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/spongycastle/math/ntru/polynomial/Resultant;

    move-result-object v45

    .line 223
    .local v45, "rg":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    move-object/from16 v0, v44

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    move-object/from16 v0, v45

    iget-object v9, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-static {v7, v9}, Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;->calculate(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;

    move-result-object v43

    .line 225
    .local v43, "r":Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;
    move-object/from16 v0, v43

    iget-object v7, v0, Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;->gcd:Ljava/math/BigInteger;

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    move-object/from16 v0, v44

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->rho:Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    .line 228
    .local v22, "A":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v0, v43

    iget-object v7, v0, Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;->x:Ljava/math/BigInteger;

    move/from16 v0, v42

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 229
    move-object/from16 v0, v45

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->rho:Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    invoke-virtual {v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    .line 230
    .local v23, "B":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v0, v43

    iget-object v7, v0, Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;->y:Ljava/math/BigInteger;

    move/from16 v0, v42

    neg-int v9, v0

    int-to-long v14, v9

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->mult(Ljava/math/BigInteger;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->keyGenAlg:I

    if-nez v7, :cond_7

    .line 235
    new-array v0, v4, [I

    move-object/from16 v33, v0

    .line 236
    .local v33, "fRevCoeffs":[I
    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 237
    .local v38, "gRevCoeffs":[I
    const/4 v7, 0x0

    iget-object v9, v10, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v14, 0x0

    aget v9, v9, v14

    aput v9, v33, v7

    .line 238
    const/4 v7, 0x0

    iget-object v9, v11, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v14, 0x0

    aget v9, v9, v14

    aput v9, v38, v7

    .line 239
    const/16 v39, 0x1

    .local v39, "i":I
    :goto_2
    move/from16 v0, v39

    if-ge v0, v4, :cond_6

    .line 241
    iget-object v7, v10, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v9, v4, v39

    aget v7, v7, v9

    aput v7, v33, v39

    .line 242
    iget-object v7, v11, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    sub-int v9, v4, v39

    aget v7, v7, v9

    aput v7, v38, v39

    .line 239
    add-int/lit8 v39, v39, 0x1

    goto :goto_2

    .line 201
    .end local v10    # "fInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v11    # "gInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v16    # "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .end local v22    # "A":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .end local v23    # "B":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .end local v33    # "fRevCoeffs":[I
    .end local v34    # "fq":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v35    # "g":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .end local v38    # "gRevCoeffs":[I
    .end local v39    # "i":I
    .end local v43    # "r":Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;
    .end local v44    # "rf":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    .end local v45    # "rg":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    :cond_4
    add-int/lit8 v7, v8, 0x1

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v16

    goto/16 :goto_0

    .line 216
    .restart local v10    # "fInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v16    # "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .restart local v34    # "fq":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v44    # "rf":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    :cond_5
    add-int/lit8 v7, v8, 0x1

    new-instance v9, Ljava/security/SecureRandom;

    invoke-direct {v9}, Ljava/security/SecureRandom;-><init>()V

    invoke-static/range {v4 .. v9}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v35

    goto/16 :goto_1

    .line 244
    .restart local v11    # "gInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v22    # "A":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .restart local v23    # "B":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .restart local v33    # "fRevCoeffs":[I
    .restart local v35    # "g":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .restart local v38    # "gRevCoeffs":[I
    .restart local v39    # "i":I
    .restart local v43    # "r":Lorg/spongycastle/math/ntru/euclid/BigIntEuclidean;
    .restart local v45    # "rg":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    :cond_6
    new-instance v32, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct/range {v32 .. v33}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 245
    .local v32, "fRev":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    new-instance v37, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct/range {v37 .. v38}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    .line 247
    .local v37, "gRev":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v47

    .line 248
    .local v47, "t":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    move-object/from16 v0, v47

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 249
    invoke-virtual/range {v47 .. v47}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->resultant()Lorg/spongycastle/math/ntru/polynomial/Resultant;

    move-result-object v46

    .line 250
    .local v46, "rt":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v24

    .line 251
    .local v24, "C":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)V

    .line 252
    move-object/from16 v0, v46

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->rho:Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v24

    .line 253
    move-object/from16 v0, v46

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigInteger;)V

    .line 277
    .end local v32    # "fRev":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v33    # "fRevCoeffs":[I
    .end local v37    # "gRev":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v38    # "gRevCoeffs":[I
    .end local v46    # "rt":Lorg/spongycastle/math/ntru/polynomial/Resultant;
    .end local v47    # "t":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :goto_3
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    .line 278
    .local v26, "F":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)V

    .line 279
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->clone()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    .line 280
    .local v27, "G":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v7

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)V

    .line 282
    new-instance v12, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v26

    invoke-direct {v12, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)V

    .line 283
    .local v12, "FInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    new-instance v13, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, v27

    invoke-direct {v13, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)V

    .local v13, "GInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v9, p0

    move v14, v4

    .line 284
    invoke-direct/range {v9 .. v14}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->minimizeFG(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 288
    if-nez v29, :cond_9

    .line 290
    move-object/from16 v17, v12

    .line 291
    .local v17, "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v35

    move-object/from16 v1, v34

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 298
    .local v18, "h":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 300
    new-instance v14, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    move-object/from16 v21, v0

    move-object/from16 v15, p0

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v21}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;-><init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;)V

    return-object v14

    .line 258
    .end local v12    # "FInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v13    # "GInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v17    # "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .end local v18    # "h":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v24    # "C":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .end local v26    # "F":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .end local v27    # "G":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .end local v39    # "i":I
    :cond_7
    const/16 v40, 0x0

    .line 259
    .local v40, "log10N":I
    const/16 v39, 0x1

    .restart local v39    # "i":I
    :goto_5
    move/from16 v0, v39

    if-ge v0, v4, :cond_8

    .line 261
    add-int/lit8 v40, v40, 0x1

    .line 259
    mul-int/lit8 v39, v39, 0xa

    goto :goto_5

    .line 268
    :cond_8
    move-object/from16 v0, v44

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->rho:Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    new-instance v9, Ljava/math/BigDecimal;

    move-object/from16 v0, v44

    iget-object v14, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v9, v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int v14, v14, v40

    invoke-virtual {v7, v9, v14}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v31

    .line 269
    .local v31, "fInv":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    move-object/from16 v0, v45

    iget-object v7, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->rho:Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    new-instance v9, Ljava/math/BigDecimal;

    move-object/from16 v0, v45

    iget-object v14, v0, Lorg/spongycastle/math/ntru/polynomial/Resultant;->res:Ljava/math/BigInteger;

    invoke-direct {v9, v14}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->getMaxCoeffLength()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    add-int v14, v14, v40

    invoke-virtual {v7, v9, v14}, Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;->div(Ljava/math/BigDecimal;I)Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v36

    .line 271
    .local v36, "gInv":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v25

    .line 272
    .local v25, "Cdec":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;)Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;)V

    .line 273
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;->halve()V

    .line 274
    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;->round()Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;

    move-result-object v24

    .restart local v24    # "C":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    goto/16 :goto_3

    .line 295
    .end local v25    # "Cdec":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    .end local v31    # "fInv":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    .end local v36    # "gInv":Lorg/spongycastle/math/ntru/polynomial/BigDecimalPolynomial;
    .end local v40    # "log10N":I
    .restart local v12    # "FInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v13    # "GInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v26    # "F":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    .restart local v27    # "G":Lorg/spongycastle/math/ntru/polynomial/BigIntPolynomial;
    :cond_9
    move-object/from16 v17, v35

    .line 296
    .restart local v17    # "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-virtual {v12, v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .restart local v18    # "h":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    goto :goto_4
.end method

.method private minimizeFG(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)V
    .locals 16
    .param p1, "f"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "g"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p3, "F"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p4, "G"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p5, "N"    # I

    .prologue
    .line 119
    const/4 v5, 0x0

    .line 120
    .local v5, "E":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    move/from16 v0, p5

    if-ge v7, v0, :cond_0

    .line 122
    mul-int/lit8 v12, p5, 0x2

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v7

    move-object/from16 v0, p1

    iget-object v14, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v7

    mul-int/2addr v13, v14

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v14, v14, v7

    move-object/from16 v0, p2

    iget-object v15, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v15, v15, v7

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    mul-int/2addr v12, v13

    add-int/2addr v5, v12

    .line 120
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    :cond_0
    add-int/lit8 v5, v5, -0x4

    .line 128
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 129
    .local v10, "u":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 130
    .local v11, "v":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, "k":I
    move/from16 v9, p5

    .line 133
    .local v9, "maxAdjustment":I
    :goto_1
    if-ge v8, v9, :cond_4

    move/from16 v0, p5

    if-ge v7, v0, :cond_4

    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "D":I
    const/4 v6, 0x0

    .line 137
    .local v6, "i":I
    :goto_2
    move/from16 v0, p5

    if-ge v6, v0, :cond_1

    .line 139
    move-object/from16 v0, p3

    iget-object v12, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v6

    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v6

    mul-int v2, v12, v13

    .line 140
    .local v2, "D1":I
    move-object/from16 v0, p4

    iget-object v12, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v12, v12, v6

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v13, v6

    mul-int v3, v12, v13

    .line 141
    .local v3, "D2":I
    mul-int/lit8 v12, p5, 0x4

    add-int v13, v2, v3

    mul-int v4, v12, v13

    .line 142
    .local v4, "D3":I
    add-int/2addr v1, v4

    .line 143
    add-int/lit8 v6, v6, 0x1

    .line 144
    goto :goto_2

    .line 146
    .end local v2    # "D1":I
    .end local v3    # "D2":I
    .end local v4    # "D3":I
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v12

    invoke-virtual/range {p4 .. p4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sumCoeffs()I

    move-result v13

    add-int/2addr v12, v13

    mul-int/lit8 v2, v12, 0x4

    .line 147
    .restart local v2    # "D1":I
    sub-int/2addr v1, v2

    .line 149
    if-le v1, v5, :cond_3

    .line 151
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 152
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 153
    add-int/lit8 v8, v8, 0x1

    .line 154
    const/4 v7, 0x0

    .line 163
    :cond_2
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 164
    invoke-virtual {v10}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    .line 165
    invoke-virtual {v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->rotate1()V

    goto :goto_1

    .line 156
    :cond_3
    neg-int v12, v5

    if-ge v1, v12, :cond_2

    .line 158
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 159
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 160
    add-int/lit8 v8, v8, 0x1

    .line 161
    const/4 v7, 0x0

    goto :goto_3

    .line 167
    .end local v1    # "D":I
    .end local v2    # "D1":I
    .end local v6    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public generateBoundedBasis()Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
    .locals 2

    .prologue
    .line 312
    :cond_0
    invoke-direct {p0}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->generateBasis()Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;

    move-result-object v0

    .line 313
    .local v0, "basis":Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->isNormOk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    return-object v0
.end method

.method public generateKeyPair()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 11

    .prologue
    .line 49
    const/4 v8, 0x0

    .line 50
    .local v8, "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    .line 51
    .local v4, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "bases":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/Future<Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;>;>;"
    iget-object v9, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v5, v9, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->B:I

    .local v5, "k":I
    :goto_0
    if-ltz v5, :cond_0

    .line 54
    new-instance v9, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$1;)V

    invoke-interface {v4, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v2, "basises":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;>;"
    iget-object v9, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v5, v9, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->B:I

    :goto_1
    if-ltz v5, :cond_2

    .line 62
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    .line 65
    .local v1, "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;>;"
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v9, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v9, v9, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->B:I

    if-ne v5, v9, :cond_1

    .line 68
    new-instance v8, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    .end local v8    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    iget-object v9, v9, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    iget-object v10, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v10}, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningParameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .restart local v8    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 71
    .end local v8    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    :catch_0
    move-exception v3

    .line 73
    .local v3, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 76
    .end local v1    # "basis":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;>;"
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    :cond_2
    new-instance v7, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    invoke-direct {v7, v2, v8}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;)V

    .line 77
    .local v7, "priv":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;
    new-instance v6, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v6, v8, v7}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    .line 78
    .local v6, "kp":Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    return-object v6
.end method

.method public generateKeyPairSingleThread()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 7

    .prologue
    .line 88
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v1, "basises":Ljava/util/List;, "Ljava/util/List<Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;>;"
    const/4 v4, 0x0

    .line 90
    .local v4, "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    iget-object v5, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v2, v5, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->B:I

    .local v2, "k":I
    :goto_0
    if-ltz v2, :cond_1

    .line 92
    invoke-virtual {p0}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    .line 93
    .local v0, "basis":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    if-nez v2, :cond_0

    .line 96
    new-instance v4, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    .end local v4    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    iget-object v5, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    iget-object v6, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v6}, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->getSigningParameters()Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningParameters;)V

    .line 90
    .restart local v4    # "pub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 99
    .end local v0    # "basis":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    invoke-direct {v3, v1, v4}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;-><init>(Ljava/util/List;Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;)V

    .line 100
    .local v3, "priv":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;
    new-instance v5, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v5, v4, v3}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/CipherParameters;Lorg/spongycastle/crypto/CipherParameters;)V

    return-object v5
.end method

.method public init(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/spongycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 39
    check-cast p1, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .end local p1    # "param":Lorg/spongycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .line 40
    return-void
.end method
