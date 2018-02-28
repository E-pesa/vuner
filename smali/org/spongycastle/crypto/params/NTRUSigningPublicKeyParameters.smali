.class public Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUSigningPublicKeyParameters.java"


# instance fields
.field public h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

.field private params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/params/NTRUSigningParameters;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 47
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->N:I

    iget v1, p2, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 48
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningParameters;)V
    .locals 1
    .param p1, "h"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 26
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .line 27
    return-void
.end method

.method public constructor <init>([BLorg/spongycastle/crypto/params/NTRUSigningParameters;)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 36
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->N:I

    iget v1, p2, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    invoke-static {p1, v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 37
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p0, p1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 86
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 87
    check-cast v0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;

    .line 88
    .local v0, "other":Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-nez v3, :cond_4

    .line 89
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v3, :cond_5

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    if-nez v3, :cond_6

    .line 94
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    if-eqz v3, :cond_0

    move v1, v2

    .line 95
    goto :goto_0

    .line 96
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    iget v1, v1, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 72
    const/16 v0, 0x1f

    .line 73
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 74
    .local v1, "result":I
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 75
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 76
    return v1

    .line 74
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 75
    :cond_1
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->params:Lorg/spongycastle/crypto/params/NTRUSigningParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NTRUSigningParameters;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/NTRUSigningPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 68
    return-void
.end method
