.class public Lorg/spongycastle/crypto/engines/Salsa20Engine;
.super Ljava/lang/Object;
.source "Salsa20Engine.java"

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# static fields
.field private static final STATE_SIZE:I = 0x10

.field private static final sigma:[B

.field private static final tau:[B


# instance fields
.field private cW0:I

.field private cW1:I

.field private cW2:I

.field private engineState:[I

.field private index:I

.field private initialised:Z

.field private keyStream:[B

.field private workingIV:[B

.field private workingKey:[B

.field private x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "expand 32-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 24
    const-string v0, "expand 16-byte k"

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 31
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    .line 32
    new-array v0, v2, [I

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    .line 33
    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 36
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    return-void
.end method

.method private generateKeyStream([B)V
    .locals 3
    .param p1, "output"    # [B

    .prologue
    .line 212
    const/16 v0, 0x14

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    .line 213
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/spongycastle/crypto/util/Pack;->intToLittleEndian([I[BI)V

    .line 214
    return-void
.end method

.method private limitExceeded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 291
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-nez v1, :cond_0

    .line 293
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 295
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 299
    :cond_0
    return v0
.end method

.method private limitExceeded(I)Z
    .locals 2
    .param p1, "len"    # I

    .prologue
    const/4 v0, 0x0

    .line 307
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 308
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ge v1, p1, :cond_0

    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    if-ltz v1, :cond_0

    .line 310
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    if-nez v1, :cond_0

    .line 312
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 316
    :cond_0
    return v0
.end method

.method private resetCounter()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 284
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW0:I

    .line 285
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW1:I

    .line 286
    iput v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->cW2:I

    .line 287
    return-void
.end method

.method private static rotl(II)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 279
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static salsaCore(I[I[I)V
    .locals 10
    .param p0, "rounds"    # I
    .param p1, "input"    # [I
    .param p2, "x"    # [I

    .prologue
    const/16 v9, 0x12

    const/4 v8, 0x0

    const/16 v7, 0xd

    const/16 v6, 0x9

    const/4 v5, 0x7

    .line 225
    array-length v1, p1

    invoke-static {p1, v8, p2, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 229
    const/4 v1, 0x4

    aget v2, p2, v1

    aget v3, p2, v8

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 230
    const/16 v1, 0x8

    aget v2, p2, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v8

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 231
    const/16 v1, 0xc

    aget v2, p2, v1

    const/16 v3, 0x8

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 232
    aget v1, p2, v8

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0x8

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    .line 233
    aget v1, p2, v6

    const/4 v2, 0x5

    aget v2, p2, v2

    const/4 v3, 0x1

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    .line 234
    aget v1, p2, v7

    aget v2, p2, v6

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    .line 235
    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p2, v7

    aget v4, p2, v6

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 236
    const/4 v1, 0x5

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    aget v4, p2, v7

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 237
    const/16 v1, 0xe

    aget v2, p2, v1

    const/16 v3, 0xa

    aget v3, p2, v3

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 238
    const/4 v1, 0x2

    aget v2, p2, v1

    const/16 v3, 0xe

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 239
    const/4 v1, 0x6

    aget v2, p2, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 240
    const/16 v1, 0xa

    aget v2, p2, v1

    const/4 v3, 0x6

    aget v3, p2, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 241
    const/4 v1, 0x3

    aget v2, p2, v1

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xb

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 242
    aget v1, p2, v5

    const/4 v2, 0x3

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    .line 243
    const/16 v1, 0xb

    aget v2, p2, v1

    aget v3, p2, v5

    const/4 v4, 0x3

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 244
    const/16 v1, 0xf

    aget v2, p2, v1

    const/16 v3, 0xb

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 245
    const/4 v1, 0x1

    aget v2, p2, v1

    aget v3, p2, v8

    const/4 v4, 0x3

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 246
    const/4 v1, 0x2

    aget v2, p2, v1

    const/4 v3, 0x1

    aget v3, p2, v3

    aget v4, p2, v8

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 247
    const/4 v1, 0x3

    aget v2, p2, v1

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 248
    aget v1, p2, v8

    const/4 v2, 0x3

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v8

    .line 249
    const/4 v1, 0x6

    aget v2, p2, v1

    const/4 v3, 0x5

    aget v3, p2, v3

    const/4 v4, 0x4

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 250
    aget v1, p2, v5

    const/4 v2, 0x6

    aget v2, p2, v2

    const/4 v3, 0x5

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v5

    .line 251
    const/4 v1, 0x4

    aget v2, p2, v1

    aget v3, p2, v5

    const/4 v4, 0x6

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 252
    const/4 v1, 0x5

    aget v2, p2, v1

    const/4 v3, 0x4

    aget v3, p2, v3

    aget v4, p2, v5

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 253
    const/16 v1, 0xb

    aget v2, p2, v1

    const/16 v3, 0xa

    aget v3, p2, v3

    aget v4, p2, v6

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 254
    const/16 v1, 0x8

    aget v2, p2, v1

    const/16 v3, 0xb

    aget v3, p2, v3

    const/16 v4, 0xa

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 255
    aget v1, p2, v6

    const/16 v2, 0x8

    aget v2, p2, v2

    const/16 v3, 0xb

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v6

    .line 256
    const/16 v1, 0xa

    aget v2, p2, v1

    aget v3, p2, v6

    const/16 v4, 0x8

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 257
    const/16 v1, 0xc

    aget v2, p2, v1

    const/16 v3, 0xf

    aget v3, p2, v3

    const/16 v4, 0xe

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v5}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 258
    aget v1, p2, v7

    const/16 v2, 0xc

    aget v2, p2, v2

    const/16 v3, 0xf

    aget v3, p2, v3

    add-int/2addr v2, v3

    invoke-static {v2, v6}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v2

    xor-int/2addr v1, v2

    aput v1, p2, v7

    .line 259
    const/16 v1, 0xe

    aget v2, p2, v1

    aget v3, p2, v7

    const/16 v4, 0xc

    aget v4, p2, v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 260
    const/16 v1, 0xf

    aget v2, p2, v1

    const/16 v3, 0xe

    aget v3, p2, v3

    aget v4, p2, v7

    add-int/2addr v3, v4

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->rotl(II)I

    move-result v3

    xor-int/2addr v2, v3

    aput v2, p2, v1

    .line 227
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 263
    :cond_0
    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 265
    aget v1, p2, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    return-void
.end method

.method private setKey([B[B)V
    .locals 11
    .param p1, "keyBytes"    # [B
    .param p2, "ivBytes"    # [B

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xc

    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 169
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    .line 170
    iput-object p2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 172
    iput v6, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 173
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->resetCounter()V

    .line 174
    const/4 v1, 0x0

    .line 178
    .local v1, "offset":I
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v3, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v10

    .line 179
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v4, v7}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 180
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v4, v8}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 181
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v3, v9}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v7

    .line 183
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_0

    .line 185
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->sigma:[B

    .line 186
    .local v0, "constants":[B
    const/16 v1, 0x10

    .line 193
    :goto_0
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xb

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    invoke-static {v4, v1}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 194
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v4, v1, 0x4

    invoke-static {v3, v4}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v9

    .line 195
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xd

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0x8

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 196
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xe

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    add-int/lit8 v5, v1, 0xc

    invoke-static {v4, v5}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 197
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    invoke-static {v0, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v6

    .line 198
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x5

    invoke-static {v0, v7}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 199
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xa

    invoke-static {v0, v8}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 200
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v3, 0xf

    invoke-static {v0, v9}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 203
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-static {v4, v6}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 204
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/4 v3, 0x7

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-static {v4, v7}, Lorg/spongycastle/crypto/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    aput v4, v2, v3

    .line 205
    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v4, 0x9

    aput v6, v3, v4

    aput v6, v2, v8

    .line 207
    iput-boolean v10, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    .line 208
    return-void

    .line 190
    .end local v0    # "constants":[B
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->tau:[B

    .restart local v0    # "constants":[B
    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Salsa20"

    return-object v0
.end method

.method public init(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/spongycastle/crypto/CipherParameters;

    .prologue
    .line 61
    instance-of v3, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-nez v3, :cond_0

    .line 63
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include an IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    .line 66
    check-cast v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    .line 68
    .local v1, "ivParams":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    .line 70
    .local v0, "iv":[B
    if-eqz v0, :cond_1

    array-length v3, v0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2

    .line 72
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 requires exactly 8 bytes of IV"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 75
    :cond_2
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v3

    instance-of v3, v3, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v3, :cond_3

    .line 77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Salsa20 Init parameters must include a key"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 80
    :cond_3
    invoke-virtual {v1}, Lorg/spongycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 82
    .local v2, "key":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    .line 83
    iput-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    .line 85
    iget-object v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v3, v4}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 86
    return-void
.end method

.method public processBytes([BII[BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outOff"    # I

    .prologue
    .line 123
    iget-boolean v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->initialised:Z

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not initialised"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_0
    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 130
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "input buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_1
    add-int v1, p5, p3

    array-length v2, p4

    if-le v1, v2, :cond_2

    .line 135
    new-instance v1, Lorg/spongycastle/crypto/DataLengthException;

    const-string v2, "output buffer too short"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_2
    invoke-direct {p0, p3}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV would be exceeded; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_5

    .line 145
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_4

    .line 147
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 149
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x8

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    if-nez v3, :cond_4

    .line 151
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 155
    :cond_4
    add-int v1, v0, p5

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v2, v2, v3

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    .line 156
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingKey:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->workingIV:[B

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->setKey([B[B)V

    .line 163
    return-void
.end method

.method public returnByte(B)B
    .locals 4
    .param p1, "in"    # B

    .prologue
    .line 95
    invoke-direct {p0}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->limitExceeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lorg/spongycastle/crypto/MaxBytesExceededException;

    const-string v2, "2^70 byte limit per IV; Change IV"

    invoke-direct {v1, v2}, Lorg/spongycastle/crypto/MaxBytesExceededException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    if-nez v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/engines/Salsa20Engine;->generateKeyStream([B)V

    .line 104
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x8

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    if-nez v3, :cond_1

    .line 106
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->engineState:[I

    const/16 v2, 0x9

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 110
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->keyStream:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    aget-byte v1, v1, v2

    xor-int/2addr v1, p1

    int-to-byte v0, v1

    .line 111
    .local v0, "out":B
    iget v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lorg/spongycastle/crypto/engines/Salsa20Engine;->index:I

    .line 113
    return v0
.end method
