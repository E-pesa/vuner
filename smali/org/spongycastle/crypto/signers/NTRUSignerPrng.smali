.class public Lorg/spongycastle/crypto/signers/NTRUSignerPrng;
.super Ljava/lang/Object;
.source "NTRUSignerPrng.java"


# instance fields
.field private counter:I

.field private hashAlg:Lorg/spongycastle/crypto/Digest;

.field private seed:[B


# direct methods
.method constructor <init>([BLorg/spongycastle/crypto/Digest;)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "hashAlg"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->counter:I

    .line 22
    iput-object p1, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->seed:[B

    .line 23
    iput-object p2, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->hashAlg:Lorg/spongycastle/crypto/Digest;

    .line 24
    return-void
.end method


# virtual methods
.method nextBytes(I)[B
    .locals 7
    .param p1, "n"    # I

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 34
    .local v1, "buf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->seed:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 36
    .local v2, "cbuf":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->seed:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 37
    iget v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->counter:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 39
    .local v0, "array":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v3, v4, [B

    .line 41
    .local v3, "hash":[B
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->hashAlg:Lorg/spongycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v6, v5}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 43
    iget-object v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->hashAlg:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v4, v3, v6}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 45
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v1, v3, v6, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 49
    :goto_1
    iget v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->counter:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/spongycastle/crypto/signers/NTRUSignerPrng;->counter:I

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 52
    .end local v0    # "array":[B
    .end local v2    # "cbuf":Ljava/nio/ByteBuffer;
    .end local v3    # "hash":[B
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method
