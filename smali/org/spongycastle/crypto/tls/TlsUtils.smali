.class public Lorg/spongycastle/crypto/tls/TlsUtils;
.super Ljava/lang/Object;
.source "TlsUtils.java"


# static fields
.field static final SSL3_CONST:[[B

.field static final SSL_CLIENT:[B

.field static final SSL_SERVER:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 420
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_CLIENT:[B

    .line 421
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL_SERVER:[B

    .line 424
    invoke-static {}, Lorg/spongycastle/crypto/tls/TlsUtils;->genConst()[[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    return-void

    .line 420
    :array_0
    .array-data 1
        0x43t
        0x4ct
        0x4et
        0x54t
    .end array-data

    .line 421
    :array_1
    .array-data 1
        0x53t
        0x52t
        0x56t
        0x52t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static PRF([BLjava/lang/String;[BI)[B
    .locals 10
    .param p0, "secret"    # [B
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "seed"    # [B
    .param p3, "size"    # I

    .prologue
    const/4 v9, 0x0

    .line 266
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 268
    .local v2, "label":[B
    array-length v8, p0

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v7, v8, 0x2

    .line 269
    .local v7, "s_half":I
    new-array v5, v7, [B

    .line 270
    .local v5, "s1":[B
    new-array v6, v7, [B

    .line 271
    .local v6, "s2":[B
    invoke-static {p0, v9, v5, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    array-length v8, p0

    sub-int/2addr v8, v7

    invoke-static {p0, v8, v6, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    invoke-static {v2, p2}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v3

    .line 276
    .local v3, "ls":[B
    new-array v0, p3, [B

    .line 277
    .local v0, "buf":[B
    new-array v4, p3, [B

    .line 278
    .local v4, "prf":[B
    new-instance v8, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v8}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    invoke-static {v8, v5, v3, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 279
    new-instance v8, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v8}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-static {v8, v6, v3, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 280
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 282
    aget-byte v8, v0, v1

    aget-byte v9, v4, v1

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v1

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_0
    return-object v0
.end method

.method static PRF_1_2(Lorg/spongycastle/crypto/Digest;[BLjava/lang/String;[BI)[B
    .locals 3
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "asciiLabel"    # Ljava/lang/String;
    .param p3, "seed"    # [B
    .param p4, "size"    # I

    .prologue
    .line 289
    invoke-static {p2}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 290
    .local v1, "label":[B
    invoke-static {v1, p3}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v2

    .line 292
    .local v2, "labelSeed":[B
    new-array v0, p4, [B

    .line 293
    .local v0, "buf":[B
    invoke-static {p0, p1, v2, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V

    .line 294
    return-object v0
.end method

.method static calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsClientContext;I)[B
    .locals 17
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p1, "size"    # I

    .prologue
    .line 325
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v6

    .line 326
    .local v6, "pv":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-interface/range {p0 .. p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v11

    .line 327
    .local v11, "sp":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v14, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    iget-object v15, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    invoke-static {v14, v15}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v7

    .line 329
    .local v7, "random":[B
    invoke-virtual {v6}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v14

    sget-object v15, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v15

    if-lt v14, v15, :cond_0

    const/4 v2, 0x1

    .line 331
    .local v2, "isTls":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 333
    iget-object v14, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const-string v15, "key expansion"

    move/from16 v0, p1

    invoke-static {v14, v15, v7, v0}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v8

    .line 362
    :goto_1
    return-object v8

    .line 329
    .end local v2    # "isTls":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 336
    .restart local v2    # "isTls":Z
    :cond_1
    new-instance v3, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v3}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 337
    .local v3, "md5":Lorg/spongycastle/crypto/Digest;
    new-instance v9, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v9}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 338
    .local v9, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    .line 339
    .local v4, "md5Size":I
    invoke-interface {v9}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v14

    new-array v10, v14, [B

    .line 340
    .local v10, "shatmp":[B
    add-int v14, p1, v4

    new-array v13, v14, [B

    .line 342
    .local v13, "tmp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v5, 0x0

    .line 343
    .local v5, "pos":I
    :goto_2
    move/from16 v0, p1

    if-ge v5, v0, :cond_2

    .line 345
    sget-object v14, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v12, v14, v1

    .line 347
    .local v12, "ssl3Const":[B
    const/4 v14, 0x0

    array-length v15, v12

    invoke-interface {v9, v12, v14, v15}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 348
    iget-object v14, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v15, 0x0

    iget-object v0, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v9, v14, v15, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 349
    const/4 v14, 0x0

    array-length v15, v7

    invoke-interface {v9, v7, v14, v15}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 350
    const/4 v14, 0x0

    invoke-interface {v9, v10, v14}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 352
    iget-object v14, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/4 v15, 0x0

    iget-object v0, v11, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v3, v14, v15, v0}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 353
    const/4 v14, 0x0

    array-length v15, v10

    invoke-interface {v3, v10, v14, v15}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 354
    invoke-interface {v3, v13, v5}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 356
    add-int/2addr v5, v4

    .line 357
    add-int/lit8 v1, v1, 0x1

    .line 358
    goto :goto_2

    .line 360
    .end local v12    # "ssl3Const":[B
    :cond_2
    move/from16 v0, p1

    new-array v8, v0, [B

    .line 361
    .local v8, "rval":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-static {v13, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method static calculateMasterSecret(Lorg/spongycastle/crypto/tls/TlsClientContext;[B)[B
    .locals 14
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p1, "pms"    # [B

    .prologue
    .line 367
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v5

    .line 368
    .local v5, "pv":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v10

    .line 369
    .local v10, "sp":Lorg/spongycastle/crypto/tls/SecurityParameters;
    iget-object v12, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->clientRandom:[B

    iget-object v13, v10, Lorg/spongycastle/crypto/tls/SecurityParameters;->serverRandom:[B

    invoke-static {v12, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->concat([B[B)[B

    move-result-object v6

    .line 371
    .local v6, "random":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v12

    sget-object v13, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v13}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v13

    if-lt v12, v13, :cond_1

    const/4 v1, 0x1

    .line 373
    .local v1, "isTls":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 375
    const-string v12, "master secret"

    const/16 v13, 0x30

    invoke-static {p1, v12, v6, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object v7

    .line 402
    :cond_0
    return-object v7

    .line 371
    .end local v1    # "isTls":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 378
    .restart local v1    # "isTls":Z
    :cond_2
    new-instance v2, Lorg/spongycastle/crypto/digests/MD5Digest;

    invoke-direct {v2}, Lorg/spongycastle/crypto/digests/MD5Digest;-><init>()V

    .line 379
    .local v2, "md5":Lorg/spongycastle/crypto/Digest;
    new-instance v8, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v8}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 380
    .local v8, "sha1":Lorg/spongycastle/crypto/Digest;
    invoke-interface {v2}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    .line 381
    .local v3, "md5Size":I
    invoke-interface {v8}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    new-array v9, v12, [B

    .line 383
    .local v9, "shatmp":[B
    mul-int/lit8 v12, v3, 0x3

    new-array v7, v12, [B

    .line 384
    .local v7, "rval":[B
    const/4 v4, 0x0

    .line 386
    .local v4, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v12, 0x3

    if-ge v0, v12, :cond_0

    .line 388
    sget-object v12, Lorg/spongycastle/crypto/tls/TlsUtils;->SSL3_CONST:[[B

    aget-object v11, v12, v0

    .line 390
    .local v11, "ssl3Const":[B
    const/4 v12, 0x0

    array-length v13, v11

    invoke-interface {v8, v11, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 391
    const/4 v12, 0x0

    array-length v13, p1

    invoke-interface {v8, p1, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 392
    const/4 v12, 0x0

    array-length v13, v6

    invoke-interface {v8, v6, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 393
    const/4 v12, 0x0

    invoke-interface {v8, v9, v12}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 395
    const/4 v12, 0x0

    array-length v13, p1

    invoke-interface {v2, p1, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 396
    const/4 v12, 0x0

    array-length v13, v9

    invoke-interface {v2, v9, v12, v13}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 397
    invoke-interface {v2, v7, v4}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 399
    add-int/2addr v4, v3

    .line 386
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static calculateVerifyData(Lorg/spongycastle/crypto/tls/TlsClientContext;Ljava/lang/String;[B)[B
    .locals 5
    .param p0, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p1, "asciiLabel"    # Ljava/lang/String;
    .param p2, "handshakeHash"    # [B

    .prologue
    .line 407
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v1

    .line 408
    .local v1, "pv":Lorg/spongycastle/crypto/tls/ProtocolVersion;
    invoke-interface {p0}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecurityParameters()Lorg/spongycastle/crypto/tls/SecurityParameters;

    move-result-object v2

    .line 410
    .local v2, "sp":Lorg/spongycastle/crypto/tls/SecurityParameters;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v3

    sget-object v4, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual {v4}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v0, 0x1

    .line 412
    .local v0, "isTls":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 414
    iget-object v3, v2, Lorg/spongycastle/crypto/tls/SecurityParameters;->masterSecret:[B

    const/16 v4, 0xc

    invoke-static {v3, p1, p2, v4}, Lorg/spongycastle/crypto/tls/TlsUtils;->PRF([BLjava/lang/String;[BI)[B

    move-result-object p2

    .line 417
    .end local p2    # "handshakeHash":[B
    :cond_0
    return-object p2

    .line 410
    .end local v0    # "isTls":Z
    .restart local p2    # "handshakeHash":[B
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static concat([B[B)[B
    .locals 4
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v3, 0x0

    .line 299
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v0, v1, [B

    .line 300
    .local v0, "c":[B
    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    return-object v0
.end method

.method private static genConst()[[B
    .locals 5

    .prologue
    .line 428
    const/16 v3, 0xa

    .line 429
    .local v3, "n":I
    new-array v0, v3, [[B

    .line 430
    .local v0, "arr":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 432
    add-int/lit8 v4, v2, 0x1

    new-array v1, v4, [B

    .line 433
    .local v1, "b":[B
    add-int/lit8 v4, v2, 0x41

    int-to-byte v4, v4

    invoke-static {v1, v4}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 434
    aput-object v1, v0, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 436
    .end local v1    # "b":[B
    :cond_0
    return-object v0
.end method

.method private static hmac_hash(Lorg/spongycastle/crypto/Digest;[B[B[B)V
    .locals 12
    .param p0, "digest"    # Lorg/spongycastle/crypto/Digest;
    .param p1, "secret"    # [B
    .param p2, "seed"    # [B
    .param p3, "out"    # [B

    .prologue
    const/4 v11, 0x0

    .line 243
    new-instance v5, Lorg/spongycastle/crypto/macs/HMac;

    invoke-direct {v5, p0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 244
    .local v5, "mac":Lorg/spongycastle/crypto/macs/HMac;
    new-instance v6, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v6, p1}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 245
    .local v6, "param":Lorg/spongycastle/crypto/params/KeyParameter;
    move-object v0, p2

    .line 246
    .local v0, "a":[B
    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v7

    .line 247
    .local v7, "size":I
    array-length v8, p3

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, -0x1

    div-int v4, v8, v7

    .line 248
    .local v4, "iterations":I
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v1, v8, [B

    .line 249
    .local v1, "buf":[B
    invoke-virtual {v5}, Lorg/spongycastle/crypto/macs/HMac;->getMacSize()I

    move-result v8

    new-array v2, v8, [B

    .line 250
    .local v2, "buf2":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 252
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 253
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 254
    invoke-virtual {v5, v1, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 255
    move-object v0, v1

    .line 256
    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/macs/HMac;->init(Lorg/spongycastle/crypto/CipherParameters;)V

    .line 257
    array-length v8, v0

    invoke-virtual {v5, v0, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 258
    array-length v8, p2

    invoke-virtual {v5, p2, v11, v8}, Lorg/spongycastle/crypto/macs/HMac;->update([BII)V

    .line 259
    invoke-virtual {v5, v2, v11}, Lorg/spongycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 260
    mul-int v8, v7, v3

    array-length v9, p3

    mul-int v10, v7, v3

    sub-int/2addr v9, v10

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v11, p3, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 262
    :cond_0
    return-void
.end method

.method protected static readFully([BLjava/io/InputStream;)V
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p1, p0}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    array-length v1, p0

    if-eq v0, v1, :cond_0

    .line 188
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 190
    :cond_0
    return-void
.end method

.method protected static readOpaque16(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint16(Ljava/io/InputStream;)I

    move-result v0

    .line 203
    .local v0, "length":I
    new-array v1, v0, [B

    .line 204
    .local v1, "value":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 205
    return-object v1
.end method

.method protected static readOpaque8(Ljava/io/InputStream;)[B
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    .line 195
    .local v0, "length":S
    new-array v1, v0, [B

    .line 196
    .local v1, "value":[B
    invoke-static {v1, p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readFully([BLjava/io/InputStream;)V

    .line 197
    return-object v1
.end method

.method protected static readUint16(Ljava/io/InputStream;)I
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 151
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 152
    .local v1, "i2":I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    .line 154
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 156
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    or-int/2addr v2, v1

    return v2
.end method

.method protected static readUint24(Ljava/io/InputStream;)I
    .locals 5
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 162
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 163
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 164
    .local v2, "i3":I
    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-gez v3, :cond_0

    .line 166
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 168
    :cond_0
    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v1, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v2

    return v3
.end method

.method protected static readUint32(Ljava/io/InputStream;)J
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 174
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 175
    .local v1, "i2":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 176
    .local v2, "i3":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 177
    .local v3, "i4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    .line 179
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 181
    :cond_0
    int-to-long v4, v0

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    int-to-long v6, v1

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v2

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    int-to-long v6, v3

    or-long/2addr v4, v6

    return-wide v4
.end method

.method protected static readUint8(Ljava/io/InputStream;)S
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 141
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 143
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 145
    :cond_0
    int-to-short v1, v0

    return v1
.end method

.method static readVersion(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 216
    .local v0, "i1":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 217
    .local v1, "i2":I
    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v2

    return-object v2
.end method

.method static readVersion([B)Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .locals 2
    .param p0, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v0, v1}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->get(II)Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method static validateKeyUsage(Lorg/spongycastle/asn1/x509/X509CertificateStructure;I)V
    .locals 6
    .param p0, "c"    # Lorg/spongycastle/asn1/x509/X509CertificateStructure;
    .param p1, "keyUsageBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/X509CertificateStructure;->getTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/asn1/x509/TBSCertificateStructure;->getExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 308
    .local v2, "exts":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 310
    sget-object v4, Lorg/spongycastle/asn1/x509/X509Extension;->keyUsage:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 311
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 313
    invoke-static {v1}, Lorg/spongycastle/asn1/x509/KeyUsage;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v3

    .line 314
    .local v3, "ku":Lorg/spongycastle/asn1/DERBitString;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 315
    .local v0, "bits":I
    and-int v4, v0, p1

    if-eq v4, p1, :cond_0

    .line 317
    new-instance v4, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v5, 0x2e

    invoke-direct {v4, v5}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v4

    .line 321
    .end local v0    # "bits":I
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    .end local v3    # "ku":Lorg/spongycastle/asn1/DERBitString;
    :cond_0
    return-void
.end method

.method protected static writeGMTUnixTime([BI)V
    .locals 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 223
    .local v0, "t":I
    shr-int/lit8 v1, v0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p0, p1

    .line 224
    add-int/lit8 v1, p1, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 225
    add-int/lit8 v1, p1, 0x2

    shr-int/lit8 v2, v0, 0x8

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 226
    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, v0

    aput-byte v2, p0, v1

    .line 227
    return-void
.end method

.method protected static writeOpaque16([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 113
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 114
    return-void
.end method

.method protected static writeOpaque24([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    array-length v0, p0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint24(ILjava/io/OutputStream;)V

    .line 119
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 120
    return-void
.end method

.method protected static writeOpaque8([BLjava/io/OutputStream;)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    array-length v0, p0

    int-to-short v0, v0

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 107
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 108
    return-void
.end method

.method protected static writeUint16(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 40
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 41
    return-void
.end method

.method protected static writeUint16(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 45
    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 46
    add-int/lit8 v0, p2, 0x1

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 47
    return-void
.end method

.method protected static writeUint16Array([ILjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 134
    aget v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint16(ILjava/io/OutputStream;)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    return-void
.end method

.method protected static writeUint24(ILjava/io/OutputStream;)V
    .locals 1
    .param p0, "i"    # I
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    shr-int/lit8 v0, p0, 0x10

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 52
    shr-int/lit8 v0, p0, 0x8

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 53
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 54
    return-void
.end method

.method protected static writeUint24(I[BI)V
    .locals 2
    .param p0, "i"    # I
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 58
    shr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 59
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 60
    add-int/lit8 v0, p2, 0x2

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    .line 61
    return-void
.end method

.method protected static writeUint32(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 66
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 67
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 68
    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 69
    return-void
.end method

.method protected static writeUint32(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 73
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 74
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 75
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 76
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 77
    return-void
.end method

.method protected static writeUint64(JLjava/io/OutputStream;)V
    .locals 2
    .param p0, "i"    # J
    .param p2, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 82
    const/16 v0, 0x30

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 83
    const/16 v0, 0x28

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 84
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 85
    const/16 v0, 0x18

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 86
    const/16 v0, 0x10

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 87
    const/16 v0, 0x8

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 88
    long-to-int v0, p0

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    .line 89
    return-void
.end method

.method protected static writeUint64(J[BI)V
    .locals 4
    .param p0, "i"    # J
    .param p2, "buf"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 94
    const/16 v0, 0x38

    shr-long v0, p0, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 95
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 96
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 97
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 98
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 99
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 100
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v2, p0, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 101
    add-int/lit8 v0, p3, 0x7

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 102
    return-void
.end method

.method protected static writeUint8(SLjava/io/OutputStream;)V
    .locals 0
    .param p0, "i"    # S
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 30
    return-void
.end method

.method protected static writeUint8(S[BI)V
    .locals 1
    .param p0, "i"    # S
    .param p1, "buf"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 34
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 35
    return-void
.end method

.method protected static writeUint8Array([SLjava/io/OutputStream;)V
    .locals 2
    .param p0, "uints"    # [S
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 126
    aget-short v1, p0, v0

    invoke-static {v1, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    return-void
.end method

.method static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 232
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 233
    return-void
.end method

.method static writeVersion(Lorg/spongycastle/crypto/tls/ProtocolVersion;[BI)V
    .locals 2
    .param p0, "version"    # Lorg/spongycastle/crypto/tls/ProtocolVersion;
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMajorVersion()I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 238
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getMinorVersion()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 239
    return-void
.end method
