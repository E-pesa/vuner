.class public Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bytes:[B

.field lastByteBits:I

.field numBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public appendBits(B)V
    .locals 6
    .param p1, "b"    # B

    .prologue
    const/16 v3, 0x8

    .line 150
    iget v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lorg/spongycastle/crypto/engines/IndexGenerator;->access$000([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    .line 155
    :cond_0
    iget v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    if-nez v1, :cond_1

    .line 157
    const/4 v1, 0x1

    iput v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    .line 158
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 159
    iput v3, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_1
    iget v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    if-ne v1, v3, :cond_2

    .line 163
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    aput-byte p1, v1, v2

    goto :goto_0

    .line 167
    :cond_2
    iget v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    rsub-int/lit8 v0, v1, 0x8

    .line 168
    .local v0, "s":I
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v1, v2

    and-int/lit16 v4, p1, 0xff

    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 169
    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    and-int/lit16 v3, p1, 0xff

    shr-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_0
.end method

.method appendBits([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 139
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->appendBits(B)V

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLeadingAsInt(I)I
    .locals 8
    .param p1, "numBits"    # I

    .prologue
    .line 211
    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x8

    iget v7, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    add-int/2addr v6, v7

    sub-int v2, v6, p1

    .line 212
    .local v2, "startBit":I
    div-int/lit8 v4, v2, 0x8

    .line 214
    .local v4, "startByte":I
    rem-int/lit8 v3, v2, 0x8

    .line 215
    .local v3, "startBitInStartByte":I
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    ushr-int v5, v6, v3

    .line 216
    .local v5, "sum":I
    rsub-int/lit8 v1, v3, 0x8

    .line 217
    .local v1, "shift":I
    add-int/lit8 v0, v4, 0x1

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    if-ge v0, v6, :cond_0

    .line 219
    iget-object v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v1

    or-int/2addr v5, v6

    .line 220
    add-int/lit8 v1, v1, 0x8

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_0
    return v5
.end method

.method public getTrailing(I)Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
    .locals 7
    .param p1, "numBits"    # I

    .prologue
    .line 181
    new-instance v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    invoke-direct {v1}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;-><init>()V

    .line 182
    .local v1, "newStr":Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
    add-int/lit8 v3, p1, 0x7

    div-int/lit8 v3, v3, 0x8

    iput v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    .line 183
    iget v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    new-array v3, v3, [B

    iput-object v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    .line 184
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    if-ge v0, v3, :cond_0

    .line 186
    iget-object v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_0
    rem-int/lit8 v3, p1, 0x8

    iput v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    .line 190
    iget v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    if-nez v3, :cond_1

    .line 192
    const/16 v3, 0x8

    iput v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    .line 200
    :goto_1
    return-object v1

    .line 196
    :cond_1
    iget v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->lastByteBits:I

    rsub-int/lit8 v2, v3, 0x20

    .line 197
    .local v2, "s":I
    iget-object v3, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget v4, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->bytes:[B

    iget v6, v1, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v6, v6, -0x1

    aget-byte v5, v5, v6

    shl-int/2addr v5, v2

    ushr-int/2addr v5, v2

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    goto :goto_1
.end method
