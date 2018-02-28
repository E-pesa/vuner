.class public Lorg/spongycastle/crypto/signers/NTRUSigner;
.super Ljava/lang/Object;
.source "NTRUSigner.java"


# instance fields
.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

.field private signingKeyPair:Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

.field private verificationKey:Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/params/NTRUSigningParameters;)V
    .locals 0
    .param p1, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .line 31
    return-void
.end method

.method private sign(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .locals 14
    .param p1, "i"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "kp"    # Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    .prologue
    .line 132
    iget-object v13, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v0, v13, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->N:I

    .line 133
    .local v0, "N":I
    iget-object v13, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v8, v13, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    .line 134
    .local v8, "q":I
    iget-object v13, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v7, v13, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->B:I

    .line 136
    .local v7, "perturbationBases":I
    move-object/from16 v5, p2

    .line 137
    .local v5, "kPriv":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    move-result-object v6

    .line 139
    .local v6, "kPub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    new-instance v9, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v9, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 140
    .local v9, "s":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move v4, v7

    .line 141
    .local v4, "iLoop":I
    :goto_0
    const/4 v13, 0x1

    if-lt v4, v13, :cond_1

    .line 143
    invoke-virtual {v5, v4}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v1, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 144
    .local v1, "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    invoke-virtual {v5, v4}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v2, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 146
    .local v2, "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    invoke-interface {v1, p1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 147
    .local v12, "y":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 148
    invoke-interface {v2, v12}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 150
    invoke-interface {v2, p1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 151
    .local v11, "x":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v11, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 152
    invoke-interface {v1, v11}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 154
    move-object v10, v12

    .line 155
    .local v10, "si":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v10, v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 156
    invoke-virtual {v9, v10}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 158
    invoke-virtual {v5, v4}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v13, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v13}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 159
    .local v3, "hi":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v13, 0x1

    if-le v4, v13, :cond_0

    .line 161
    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v5, v13}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v13, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v13}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 167
    :goto_1
    invoke-virtual {v10, v3, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object p1

    .line 169
    add-int/lit8 v4, v4, -0x1

    .line 170
    goto :goto_0

    .line 165
    :cond_0
    iget-object v13, v6, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v13}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_1

    .line 172
    .end local v1    # "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .end local v2    # "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .end local v3    # "hi":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v10    # "si":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v11    # "x":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v12    # "y":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v1, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 173
    .restart local v1    # "f":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getBasis(I)Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v13

    iget-object v2, v13, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 175
    .restart local v2    # "fPrime":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    invoke-interface {v1, p1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 176
    .restart local v12    # "y":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 177
    invoke-interface {v2, v12}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 179
    invoke-interface {v2, p1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 180
    .restart local v11    # "x":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v11, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->div(I)V

    .line 181
    invoke-interface {v1, v11}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v11

    .line 183
    invoke-virtual {v12, v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 184
    invoke-virtual {v9, v12}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 185
    invoke-virtual {v9, v8}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 186
    return-object v9
.end method

.method private signHash([BLorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;)[B
    .locals 9
    .param p1, "msgHash"    # [B
    .param p2, "kp"    # Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 110
    .local v2, "r":I
    invoke-virtual {p2}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;->getPublicKey()Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    move-result-object v1

    .line 113
    .local v1, "kPub":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 114
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v6, v6, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->signFailTolerance:I

    if-le v2, v6, :cond_1

    .line 116
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Signing failed: too many retries (max="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v8, v8, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 118
    :cond_1
    invoke-virtual {p0, p1, v2}, Lorg/spongycastle/crypto/signers/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 119
    .local v0, "i":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/signers/NTRUSigner;->sign(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    .line 121
    .local v4, "s":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    iget-object v6, v1, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v0, v4, v6}, Lorg/spongycastle/crypto/signers/NTRUSigner;->verify(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    iget-object v6, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v6, v6, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    .line 124
    .local v3, "rawSig":[B
    array-length v6, v3

    add-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 125
    .local v5, "sbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 126
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    return-object v6
.end method

.method private verify(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Z
    .locals 12
    .param p1, "i"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "s"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p3, "h"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 222
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v6, v8, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    .line 223
    .local v6, "q":I
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget-wide v4, v8, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->normBoundSq:D

    .line 224
    .local v4, "normBoundSq":D
    iget-object v8, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget-wide v0, v8, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->betaSq:D

    .line 226
    .local v0, "betaSq":D
    invoke-virtual {p3, p2, v6}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 227
    .local v7, "t":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v7, p1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 228
    invoke-virtual {p2, v6}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v8

    long-to-double v8, v8

    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-long v2, v8

    .line 229
    .local v2, "centeredNormSq":J
    long-to-double v8, v2

    cmpg-double v8, v8, v4

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private verifyHash([B[BLorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;)Z
    .locals 6
    .param p1, "msgHash"    # [B
    .param p2, "sig"    # [B
    .param p3, "pub"    # Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    .prologue
    .line 212
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 213
    .local v3, "sbuf":Ljava/nio/ByteBuffer;
    array-length v4, p2

    add-int/lit8 v4, v4, -0x4

    new-array v1, v4, [B

    .line 214
    .local v1, "rawSig":[B
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 215
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v4, v4, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->N:I

    iget-object v5, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v5, v5, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    invoke-static {v1, v4, v5}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    .line 216
    .local v2, "s":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 217
    .local v0, "r":I
    invoke-virtual {p0, p1, v0}, Lorg/spongycastle/crypto/signers/NTRUSigner;->createMsgRep([BI)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    iget-object v5, p3, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0, v4, v2, v5}, Lorg/spongycastle/crypto/signers/NTRUSigner;->verify(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Z

    move-result v4

    return v4
.end method


# virtual methods
.method protected createMsgRep([BI)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .locals 13
    .param p1, "msgHash"    # [B
    .param p2, "r"    # I

    .prologue
    .line 234
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v1, v11, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->N:I

    .line 235
    .local v1, "N":I
    iget-object v11, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v9, v11, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    .line 237
    .local v9, "q":I
    invoke-static {v9}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v11

    rsub-int/lit8 v2, v11, 0x1f

    .line 238
    .local v2, "c":I
    add-int/lit8 v11, v2, 0x7

    div-int/lit8 v0, v11, 0x8

    .line 239
    .local v0, "B":I
    new-instance v5, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v5, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 241
    .local v5, "i":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    array-length v11, p1

    add-int/lit8 v11, v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 242
    .local v3, "cbuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 243
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 244
    new-instance v8, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    iget-object v12, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget-object v12, v12, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-direct {v8, v11, v12}, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;-><init>([BLorg/spongycastle/crypto/Digest;)V

    .line 246
    .local v8, "prng":Lorg/spongycastle/crypto/signers/NTRUSignerPrng;
    const/4 v10, 0x0

    .local v10, "t":I
    :goto_0
    if-ge v10, v1, :cond_0

    .line 248
    invoke-virtual {v8, v0}, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->nextBytes(I)[B

    move-result-object v6

    .line 249
    .local v6, "o":[B
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    aget-byte v4, v6, v11

    .line 250
    .local v4, "hi":I
    mul-int/lit8 v11, v0, 0x8

    sub-int/2addr v11, v2

    shr-int/2addr v4, v11

    .line 251
    mul-int/lit8 v11, v0, 0x8

    sub-int/2addr v11, v2

    shl-int/2addr v4, v11

    .line 252
    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    int-to-byte v12, v4

    aput-byte v12, v6, v11

    .line 254
    const/4 v11, 0x4

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 255
    .local v7, "obuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 258
    iget-object v11, v5, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v12

    aput v12, v11, v10

    .line 246
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 260
    .end local v4    # "hi":I
    .end local v6    # "o":[B
    .end local v7    # "obuf":Ljava/nio/ByteBuffer;
    :cond_0
    return-object v5
.end method

.method public generateSignature()[B
    .locals 3

    .prologue
    .line 93
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->signingKeyPair:Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    if-nez v1, :cond_1

    .line 95
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call initSign first!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 100
    .local v0, "msgHash":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 101
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->signingKeyPair:Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/signers/NTRUSigner;->signHash([BLorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;)[B

    move-result-object v1

    return-object v1
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 1
    .param p1, "forSigning"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 43
    check-cast p2, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->signingKeyPair:Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;

    .line 49
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget-object v0, v0, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 50
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 51
    return-void

    .line 47
    .restart local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    .end local p2    # "params":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->verificationKey:Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    goto :goto_0
.end method

.method public update(B)V
    .locals 2
    .param p1, "b"    # B

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign or initVerify first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 66
    return-void
.end method

.method public update([BII)V
    .locals 2
    .param p1, "m"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call initSign or initVerify first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 83
    return-void
.end method

.method public verifySignature([B)Z
    .locals 3
    .param p1, "sig"    # [B

    .prologue
    .line 198
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->verificationKey:Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Call initVerify first!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 205
    .local v0, "msgHash":[B
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->hashAlg:Lorg/spongycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 207
    iget-object v1, p0, Lorg/spongycastle/crypto/signers/NTRUSigner;->verificationKey:Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    invoke-direct {p0, v0, p1, v1}, Lorg/spongycastle/crypto/signers/NTRUSigner;->verifyHash([B[BLorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;)Z

    move-result v1

    return v1
.end method
