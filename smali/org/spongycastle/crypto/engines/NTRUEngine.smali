.class public Lorg/spongycastle/crypto/engines/NTRUEngine;
.super Ljava/lang/Object;
.source "NTRUEngine.java"

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

.field private privKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method private MGF([BIIZ)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .locals 15
    .param p1, "seed"    # [B
    .param p2, "N"    # I
    .param p3, "minCallsR"    # I
    .param p4, "hashSeed"    # Z

    .prologue
    .line 273
    iget-object v13, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-object v7, v13, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 274
    .local v7, "hashAlg":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v7}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v8

    .line 275
    .local v8, "hashLen":I
    mul-int v13, p3, v8

    new-array v3, v13, [B

    .line 276
    .local v3, "buf":[B
    if-eqz p4, :cond_0

    move-object/from16 v0, p1

    invoke-direct {p0, v7, v0}, Lorg/spongycastle/crypto/engines/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;[B)[B

    move-result-object v2

    .line 277
    .local v2, "Z":[B
    :goto_0
    const/4 v4, 0x0

    .line 278
    .local v4, "counter":I
    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_1

    .line 280
    const/4 v13, 0x0

    array-length v14, v2

    invoke-interface {v7, v2, v13, v14}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 281
    invoke-direct {p0, v7, v4}, Lorg/spongycastle/crypto/engines/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 283
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v6

    .line 284
    .local v6, "hash":[B
    const/4 v13, 0x0

    mul-int v14, v4, v8

    invoke-static {v6, v13, v3, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 285
    add-int/lit8 v4, v4, 0x1

    .line 286
    goto :goto_1

    .end local v2    # "Z":[B
    .end local v4    # "counter":I
    .end local v6    # "hash":[B
    :cond_0
    move-object/from16 v2, p1

    .line 276
    goto :goto_0

    .line 288
    .restart local v2    # "Z":[B
    .restart local v4    # "counter":I
    :cond_1
    new-instance v9, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move/from16 v0, p2

    invoke-direct {v9, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    .line 291
    .local v9, "i":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :goto_2
    const/4 v5, 0x0

    .line 292
    .local v5, "cur":I
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_3
    array-length v13, v3

    if-eq v10, v13, :cond_7

    .line 294
    aget-byte v13, v3, v10

    and-int/lit16 v1, v13, 0xff

    .line 295
    .local v1, "O":I
    const/16 v13, 0xf3

    if-lt v1, v13, :cond_3

    .line 292
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 300
    :cond_3
    const/4 v12, 0x0

    .local v12, "terIdx":I
    :goto_4
    const/4 v13, 0x4

    if-ge v12, v13, :cond_6

    .line 302
    rem-int/lit8 v11, v1, 0x3

    .line 303
    .local v11, "rem3":I
    iget-object v13, v9, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v14, v11, -0x1

    aput v14, v13, v5

    .line 304
    add-int/lit8 v5, v5, 0x1

    .line 305
    move/from16 v0, p2

    if-ne v5, v0, :cond_5

    .line 322
    .end local v1    # "O":I
    .end local v11    # "rem3":I
    .end local v12    # "terIdx":I
    :cond_4
    :goto_5
    return-object v9

    .line 309
    .restart local v1    # "O":I
    .restart local v11    # "rem3":I
    .restart local v12    # "terIdx":I
    :cond_5
    sub-int v13, v1, v11

    div-int/lit8 v1, v13, 0x3

    .line 300
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 312
    .end local v11    # "rem3":I
    :cond_6
    iget-object v13, v9, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v14, v1, -0x1

    aput v14, v13, v5

    .line 313
    add-int/lit8 v5, v5, 0x1

    .line 314
    move/from16 v0, p2

    if-ne v5, v0, :cond_2

    goto :goto_5

    .line 320
    .end local v1    # "O":I
    .end local v12    # "terIdx":I
    :cond_7
    move/from16 v0, p2

    if-ge v5, v0, :cond_4

    .line 325
    const/4 v13, 0x0

    array-length v14, v2

    invoke-interface {v7, v2, v13, v14}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 326
    invoke-direct {p0, v7, v4}, Lorg/spongycastle/crypto/engines/NTRUEngine;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 328
    invoke-direct {p0, v7}, Lorg/spongycastle/crypto/engines/NTRUEngine;->calcHash(Lorg/spongycastle/crypto/Digest;)[B

    move-result-object v6

    .line 330
    .restart local v6    # "hash":[B
    move-object v3, v6

    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    goto :goto_2
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 4
    .param p1, "oid"    # [B
    .param p2, "m"    # [B
    .param p3, "l"    # I
    .param p4, "b"    # [B
    .param p5, "hTrunc"    # [B

    .prologue
    const/4 v3, 0x0

    .line 181
    array-length v1, p1

    add-int/2addr v1, p3

    array-length v2, p4

    add-int/2addr v1, v2

    array-length v2, p5

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 183
    .local v0, "sData":[B
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    invoke-static {p4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    add-int/2addr v1, v2

    array-length v2, p5

    invoke-static {p5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    return-object v0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;)[B
    .locals 2
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 346
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 348
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 350
    return-object v0
.end method

.method private calcHash(Lorg/spongycastle/crypto/Digest;[B)[B
    .locals 3
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 355
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    new-array v0, v1, [B

    .line 357
    .local v0, "tmp":[B
    array-length v1, p2

    invoke-interface {p1, p2, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 358
    invoke-interface {p1, v0, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 360
    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 3
    .param p1, "src"    # [B
    .param p2, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 483
    new-array v0, p2, [B

    .line 485
    .local v0, "tmp":[B
    array-length v1, p1

    if-ge p2, v1, :cond_0

    .end local p2    # "len":I
    :goto_0
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    return-object v0

    .line 485
    .restart local p2    # "len":I
    :cond_0
    array-length p2, p1

    goto :goto_0
.end method

.method private decrypt([BLorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 37
    .param p1, "data"    # [B
    .param p2, "privKey"    # Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 374
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;->t:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    move-object/from16 v31, v0

    .line 375
    .local v31, "priv_t":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v30, v0

    .line 376
    .local v30, "priv_fp":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v32, v0

    .line 377
    .local v32, "pub":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v10, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->N:I

    .line 378
    .local v10, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    move/from16 v33, v0

    .line 379
    .local v33, "q":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->db:I

    move/from16 v21, v0

    .line 380
    .local v21, "db":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->maxMsgLenBytes:I

    move/from16 v26, v0

    .line 381
    .local v26, "maxMsgLenBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dm0:I

    move/from16 v22, v0

    .line 382
    .local v22, "dm0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->pkLen:I

    move/from16 v29, v0

    .line 383
    .local v29, "pkLen":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->minCallsMask:I

    move/from16 v27, v0

    .line 384
    .local v27, "minCallsMask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-boolean v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->hashSeed:Z

    move/from16 v24, v0

    .line 385
    .local v24, "hashSeed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-object v5, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->oid:[B

    .line 387
    .local v5, "oid":[B
    const/16 v4, 0xff

    move/from16 v0, v26

    if-le v0, v4, :cond_0

    .line 389
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    const-string v35, "maxMsgLenBytes values bigger than 255 are not supported"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 392
    :cond_0
    div-int/lit8 v11, v21, 0x8

    .line 394
    .local v11, "bLen":I
    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v10, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v23

    .line 395
    .local v23, "e":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v31

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/spongycastle/crypto/engines/NTRUEngine;->decrypt(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v18

    .line 397
    .local v18, "ci":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, -0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_1

    .line 399
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal -1"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 401
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_2

    .line 403
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal 0"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v22

    if-ge v4, v0, :cond_3

    .line 407
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Less than dm0 coefficients equal 1"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 410
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 411
    .local v15, "cR":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 412
    move/from16 v0, v33

    invoke-virtual {v15, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 413
    invoke-virtual {v15}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 414
    .local v16, "cR4":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 415
    const/4 v4, 0x4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v19

    .line 416
    .local v19, "coR4":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v27

    move/from16 v3, v24

    invoke-direct {v0, v1, v10, v2, v3}, Lorg/spongycastle/crypto/engines/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v25

    .line 417
    .local v25, "mask":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v14, v18

    .line 418
    .local v14, "cMTrin":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 419
    invoke-virtual {v14}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 420
    invoke-virtual {v14}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v13

    .line 422
    .local v13, "cM":[B
    new-array v8, v11, [B

    .line 423
    .local v8, "cb":[B
    const/4 v4, 0x0

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-static {v13, v4, v8, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    aget-byte v4, v13, v11

    and-int/lit16 v7, v4, 0xff

    .line 425
    .local v7, "cl":I
    move/from16 v0, v26

    if-le v7, v0, :cond_4

    .line 427
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Message too long: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ">"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 429
    :cond_4
    new-array v6, v7, [B

    .line 430
    .local v6, "cm":[B
    add-int/lit8 v4, v11, 0x1

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-static {v13, v4, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 431
    array-length v4, v13

    add-int/lit8 v35, v11, 0x1

    add-int v35, v35, v7

    sub-int v4, v4, v35

    new-array v0, v4, [B

    move-object/from16 v28, v0

    .line 432
    .local v28, "p0":[B
    add-int/lit8 v4, v11, 0x1

    add-int/2addr v4, v7

    const/16 v35, 0x0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-static {v13, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    move-object/from16 v0, v28

    array-length v4, v0

    new-array v4, v4, [B

    move-object/from16 v0, v28

    invoke-static {v0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_5

    .line 435
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "The message is not followed by zeroes"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 439
    :cond_5
    invoke-virtual/range {v32 .. v33}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v12

    .line 440
    .local v12, "bh":[B
    div-int/lit8 v4, v29, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v4}, Lorg/spongycastle/crypto/engines/NTRUEngine;->copyOf([BI)[B

    move-result-object v9

    .local v9, "hTrunc":[B
    move-object/from16 v4, p0

    .line 441
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/crypto/engines/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v34

    .line 443
    .local v34, "sData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    move-result-object v20

    .line 444
    .local v20, "cr":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v17

    .line 445
    .local v17, "cRPrime":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, v17

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 446
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 448
    new-instance v4, Lorg/spongycastle/crypto/InvalidCipherTextException;

    const-string v35, "Invalid message encoding"

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lorg/spongycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 451
    :cond_6
    return-object v6
.end method

.method private encrypt([BLorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;)[B
    .locals 31
    .param p1, "m"    # [B
    .param p2, "pubKey"    # Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    .prologue
    .line 108
    move-object/from16 v0, p2

    iget-object v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v26, v0

    .line 109
    .local v26, "pub":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v11, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->N:I

    .line 110
    .local v11, "N":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    move/from16 v27, v0

    .line 112
    .local v27, "q":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->maxMsgLenBytes:I

    move/from16 v21, v0

    .line 113
    .local v21, "maxLenBytes":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->db:I

    move/from16 v16, v0

    .line 114
    .local v16, "db":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v15, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->bufferLenBits:I

    .line 115
    .local v15, "bufferLenBits":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dm0:I

    move/from16 v17, v0

    .line 116
    .local v17, "dm0":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->pkLen:I

    move/from16 v25, v0

    .line 117
    .local v25, "pkLen":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->minCallsMask:I

    move/from16 v22, v0

    .line 118
    .local v22, "minCallsMask":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-boolean v0, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->hashSeed:Z

    move/from16 v18, v0

    .line 119
    .local v18, "hashSeed":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-object v5, v4, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->oid:[B

    .line 121
    .local v5, "oid":[B
    move-object/from16 v0, p1

    array-length v7, v0

    .line 122
    .local v7, "l":I
    const/16 v4, 0xff

    move/from16 v0, v21

    if-le v0, v4, :cond_0

    .line 124
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v6, "llen values bigger than 1 are not supported"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_0
    move/from16 v0, v21

    if-le v7, v0, :cond_1

    .line 128
    new-instance v4, Lorg/spongycastle/crypto/DataLengthException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Message too long: "

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v30, ">"

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_1
    div-int/lit8 v4, v16, 0x8

    new-array v8, v4, [B

    .line 135
    .local v8, "b":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/crypto/engines/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 136
    add-int/lit8 v4, v21, 0x1

    sub-int/2addr v4, v7

    new-array v0, v4, [B

    move-object/from16 v24, v0

    .line 137
    .local v24, "p0":[B
    div-int/lit8 v4, v15, 0x8

    new-array v10, v4, [B

    .line 139
    .local v10, "M":[B
    const/4 v4, 0x0

    const/4 v6, 0x0

    array-length v0, v8

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-static {v8, v4, v10, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v4, v8

    int-to-byte v6, v7

    aput-byte v6, v10, v4

    .line 141
    const/4 v4, 0x0

    array-length v6, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-static {v0, v4, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    const/4 v4, 0x0

    array-length v6, v8

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v30, v0

    add-int v6, v6, v30

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-static {v0, v4, v10, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    invoke-static {v10, v11}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v19

    .line 147
    .local v19, "mTrin":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual/range {v26 .. v27}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v14

    .line 148
    .local v14, "bh":[B
    div-int/lit8 v4, v25, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lorg/spongycastle/crypto/engines/NTRUEngine;->copyOf([BI)[B

    move-result-object v9

    .local v9, "hTrunc":[B
    move-object/from16 v4, p0

    move-object/from16 v6, p1

    .line 149
    invoke-direct/range {v4 .. v9}, Lorg/spongycastle/crypto/engines/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v29

    .line 151
    .local v29, "sData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v10}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingPoly([B[B)Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    move-result-object v28

    .line 152
    .local v28, "r":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v12

    .line 153
    .local v12, "R":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v12}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 154
    .local v13, "R4":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    .line 155
    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v23

    .line 156
    .local v23, "oR4":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v18

    invoke-direct {v0, v1, v11, v2, v3}, Lorg/spongycastle/crypto/engines/NTRUEngine;->MGF([BIIZ)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v20

    .line 157
    .local v20, "mask":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual/range {v19 .. v20}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 158
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 160
    const/4 v4, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 164
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 168
    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v4

    move/from16 v0, v17

    if-lt v4, v0, :cond_1

    .line 173
    move-object/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 174
    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 175
    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v4

    return-object v4
.end method

.method private generateBlindingCoeffs(Lorg/spongycastle/crypto/engines/IndexGenerator;I)[I
    .locals 6
    .param p1, "ig"    # Lorg/spongycastle/crypto/engines/IndexGenerator;
    .param p2, "dr"    # I

    .prologue
    .line 242
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v5, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->N:I

    .line 244
    .local v0, "N":I
    new-array v3, v0, [I

    .line 245
    .local v3, "r":[I
    const/4 v1, -0x1

    .local v1, "coeff":I
    :goto_0
    const/4 v5, 0x1

    if-gt v1, v5, :cond_2

    .line 247
    const/4 v4, 0x0

    .line 248
    .local v4, "t":I
    :cond_0
    :goto_1
    if-ge v4, p2, :cond_1

    .line 250
    invoke-virtual {p1}, Lorg/spongycastle/crypto/engines/IndexGenerator;->nextIndex()I

    move-result v2

    .line 251
    .local v2, "i":I
    aget v5, v3, v2

    if-nez v5, :cond_0

    .line 253
    aput v1, v3, v2

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 259
    .end local v4    # "t":I
    :cond_2
    return-object v3
.end method

.method private generateBlindingPoly([B[B)Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .locals 9
    .param p1, "seed"    # [B
    .param p2, "M"    # [B

    .prologue
    .line 207
    new-instance v1, Lorg/spongycastle/crypto/engines/IndexGenerator;

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    invoke-direct {v1, p1, v7}, Lorg/spongycastle/crypto/engines/IndexGenerator;-><init>([BLorg/spongycastle/crypto/params/NTRUEncryptionParameters;)V

    .line 209
    .local v1, "ig":Lorg/spongycastle/crypto/engines/IndexGenerator;
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->polyType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 211
    new-instance v3, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/crypto/engines/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v3, v7}, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 212
    .local v3, "r1":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v4, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/crypto/engines/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 213
    .local v4, "r2":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v5, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v7, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, v1, v7}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/crypto/engines/IndexGenerator;I)[I

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    .line 214
    .local v5, "r3":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    new-instance v7, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v7, v3, v4, v5}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;)V

    .line 227
    .end local v3    # "r1":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v4    # "r2":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    .end local v5    # "r3":Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;
    :goto_0
    return-object v7

    .line 218
    :cond_0
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->dr:I

    .line 219
    .local v0, "dr":I
    iget-object v7, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-boolean v6, v7, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->sparse:Z

    .line 220
    .local v6, "sparse":Z
    invoke-direct {p0, v1, v0}, Lorg/spongycastle/crypto/engines/NTRUEngine;->generateBlindingCoeffs(Lorg/spongycastle/crypto/engines/IndexGenerator;I)[I

    move-result-object v2

    .line 221
    .local v2, "r":[I
    if-eqz v6, :cond_1

    .line 223
    new-instance v7, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v7, v2}, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    goto :goto_0

    .line 227
    :cond_1
    new-instance v7, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v7, v2}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    goto :goto_0
.end method

.method private log2(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 492
    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    .line 494
    const/16 v0, 0xb

    return v0

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log2 not fully implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "counter"    # I

    .prologue
    .line 338
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 339
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 340
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 341
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 342
    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .locals 4
    .param p1, "e"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "priv_t"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .param p3, "priv_fp"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    const/4 v3, 0x3

    .line 463
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v2}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 466
    .local v0, "a":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    invoke-virtual {v0, v3}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    .line 467
    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    .line 473
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 474
    invoke-virtual {v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    .line 476
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 477
    .local v1, "c":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :goto_1
    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    .line 478
    return-object v1

    .line 471
    .end local v0    # "a":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v1    # "c":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v2, v2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v2}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .restart local v0    # "a":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    goto :goto_0

    .line 476
    :cond_1
    new-instance v2, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v2, v0}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v2, p3, v3}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v1

    goto :goto_1
.end method

.method protected encrypt(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/TernaryPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .locals 2
    .param p1, "m"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "r"    # Lorg/spongycastle/math/ntru/polynomial/TernaryPolynomial;
    .param p3, "pubKey"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .prologue
    .line 192
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v1}, Lorg/spongycastle/math/ntru/polynomial/TernaryPolynomial;->mult(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 193
    .local v0, "e":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;I)V

    .line 194
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    .line 195
    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v0, v0, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    iget v1, v1, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/NTRUEngine;->log2(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->forEncryption:Z

    .line 47
    if-eqz p1, :cond_1

    .line 49
    instance-of v1, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 51
    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    .line 53
    .local v0, "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 54
    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->pubKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    .line 62
    .end local v0    # "p":Lorg/spongycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :goto_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->pubKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    .line 69
    :goto_1
    return-void

    .line 58
    .restart local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->random:Ljava/security/SecureRandom;

    .line 59
    check-cast p2, Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->pubKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    goto :goto_0

    .line 66
    .restart local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

    .end local p2    # "parameters":Lorg/spongycastle/crypto/CipherParameters;
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->privKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

    .line 67
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->privKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;->getParameters()Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->params:Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    goto :goto_1
.end method

.method public processBlock([BII)[B
    .locals 2
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 84
    new-array v0, p3, [B

    .line 86
    .local v0, "tmp":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->pubKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NTRUEngine;->encrypt([BLorg/spongycastle/crypto/params/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/NTRUEngine;->privKey:Lorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/NTRUEngine;->decrypt([BLorg/spongycastle/crypto/params/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object v1

    goto :goto_0
.end method
