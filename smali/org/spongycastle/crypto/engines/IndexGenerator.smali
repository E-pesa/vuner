.class public Lorg/spongycastle/crypto/engines/IndexGenerator;
.super Ljava/lang/Object;
.source "IndexGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
    }
.end annotation


# instance fields
.field private N:I

.field private buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

.field private c:I

.field private counter:I

.field private hLen:I

.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private initialized:Z

.field private minCallsR:I

.field private remLen:I

.field private seed:[B

.field private totLen:I


# direct methods
.method constructor <init>([BLorg/spongycastle/crypto/params/NTRUEncryptionParameters;)V
    .locals 2
    .param p1, "seed"    # [B
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->seed:[B

    .line 33
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->N:I

    iput v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->N:I

    .line 34
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->c:I

    iput v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    .line 35
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->minCallsR:I

    iput v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->minCallsR:I

    .line 37
    iput v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->totLen:I

    .line 38
    iput v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    .line 39
    iput v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    .line 40
    iget-object v0, p2, Lorg/spongycastle/crypto/params/NTRUEncryptionParameters;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 42
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    .line 43
    iput-boolean v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->initialized:Z

    .line 44
    return-void
.end method

.method static synthetic access$000([BI)[B
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 10
    invoke-static {p0, p1}, Lorg/spongycastle/crypto/engines/IndexGenerator;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private appendHash(Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;[B)V
    .locals 4
    .param p1, "m"    # Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
    .param p2, "hash"    # [B

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->seed:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->seed:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 106
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/engines/IndexGenerator;->putInt(Lorg/spongycastle/crypto/Digest;I)V

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p2, v3}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 110
    invoke-virtual {p1, p2}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->appendBits([B)V

    .line 111
    return-void
.end method

.method private static copyOf([BI)[B
    .locals 3
    .param p0, "src"    # [B
    .param p1, "len"    # I

    .prologue
    const/4 v2, 0x0

    .line 234
    new-array v0, p1, [B

    .line 236
    .local v0, "tmp":[B
    array-length v1, p0

    if-ge p1, v1, :cond_0

    .end local p1    # "len":I
    :goto_0
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    return-object v0

    .line 236
    .restart local p1    # "len":I
    :cond_0
    array-length p1, p0

    goto :goto_0
.end method

.method private putInt(Lorg/spongycastle/crypto/Digest;I)V
    .locals 1
    .param p1, "hashAlg"    # Lorg/spongycastle/crypto/Digest;
    .param p2, "counter"    # I

    .prologue
    .line 115
    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 116
    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 117
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 118
    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 119
    return-void
.end method


# virtual methods
.method nextIndex()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 53
    iget-boolean v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->initialized:Z

    if-nez v5, :cond_1

    .line 55
    new-instance v5, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;-><init>()V

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    .line 56
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v2, v5, [B

    .line 57
    .local v2, "hash":[B
    :goto_0
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->minCallsR:I

    if-ge v5, v6, :cond_0

    .line 59
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    invoke-direct {p0, v5, v2}, Lorg/spongycastle/crypto/engines/IndexGenerator;->appendHash(Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;[B)V

    .line 60
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    goto :goto_0

    .line 62
    :cond_0
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->minCallsR:I

    mul-int/lit8 v5, v5, 0x8

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->totLen:I

    .line 63
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->totLen:I

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    .line 64
    iput-boolean v8, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->initialized:Z

    .line 69
    .end local v2    # "hash":[B
    :cond_1
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->totLen:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    add-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->totLen:I

    .line 70
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    invoke-virtual {v5, v6}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->getTrailing(I)Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    move-result-object v0

    .line 71
    .local v0, "M":Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    if-ge v5, v6, :cond_4

    .line 73
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    sub-int v4, v5, v6

    .line 74
    .local v4, "tmpLen":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    iget v7, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    div-int/2addr v6, v7

    add-int v1, v5, v6

    .line 75
    .local v1, "cThreshold":I
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v2, v5, [B

    .line 76
    .restart local v2    # "hash":[B
    :cond_2
    :goto_1
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    if-ge v5, v1, :cond_3

    .line 78
    invoke-direct {p0, v0, v2}, Lorg/spongycastle/crypto/engines/IndexGenerator;->appendHash(Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;[B)V

    .line 79
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->counter:I

    .line 80
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    if-le v4, v5, :cond_2

    .line 82
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    goto :goto_1

    .line 85
    :cond_3
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->hLen:I

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v5, v4

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    .line 86
    new-instance v5, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    invoke-direct {v5}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;-><init>()V

    iput-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    .line 87
    iget-object v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->buf:Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;

    invoke-virtual {v5, v2}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->appendBits([B)V

    .line 94
    .end local v1    # "cThreshold":I
    .end local v2    # "hash":[B
    .end local v4    # "tmpLen":I
    :goto_2
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    invoke-virtual {v0, v5}, Lorg/spongycastle/crypto/engines/IndexGenerator$BitString;->getLeadingAsInt(I)I

    move-result v3

    .line 95
    .local v3, "i":I
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    shl-int v5, v8, v5

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    shl-int v6, v8, v6

    iget v7, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->N:I

    rem-int/2addr v6, v7

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_1

    .line 97
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->N:I

    rem-int v5, v3, v5

    return v5

    .line 91
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    iget v6, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->c:I

    sub-int/2addr v5, v6

    iput v5, p0, Lorg/spongycastle/crypto/engines/IndexGenerator;->remLen:I

    goto :goto_2
.end method
