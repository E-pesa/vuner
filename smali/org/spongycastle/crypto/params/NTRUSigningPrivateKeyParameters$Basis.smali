.class public Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
.super Ljava/lang/Object;
.source "NTRUSigningPrivateKeyParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Basis"
.end annotation


# instance fields
.field public f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

.field public fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

.field public h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

.field params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;Z)V
    .locals 12
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;
    .param p3, "include_h"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iget v1, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->N:I

    .line 224
    .local v1, "N":I
    iget v9, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->q:I

    .line 225
    .local v9, "q":I
    iget v2, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d1:I

    .line 226
    .local v2, "d1":I
    iget v3, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d2:I

    .line 227
    .local v3, "d2":I
    iget v5, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->d3:I

    .line 228
    .local v5, "d3":I
    iget-boolean v10, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->sparse:Z

    .line 229
    .local v10, "sparse":Z
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .line 231
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->polyType:I

    if-ne v0, v11, :cond_0

    .line 233
    add-int/lit8 v4, v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 241
    :goto_0
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->basisType:I

    if-nez v0, :cond_4

    .line 243
    invoke-static {p1, v1, v9}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v7

    .line 244
    .local v7, "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    iget-object v0, v7, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 246
    iget-object v0, v7, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v0, v8

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v4, v11

    aput v4, v0, v8

    .line 244
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 237
    .end local v7    # "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v8    # "i":I
    :cond_0
    invoke-static {p1, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    .line 238
    .local v6, "fInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    if-eqz v10, :cond_1

    new-instance v0, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v0, v6}, Lorg/spongycastle/math/ntru/polynomial/SparseTernaryPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_2
    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v6}, Lorg/spongycastle/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;)V

    goto :goto_2

    .line 248
    .end local v6    # "fInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v7    # "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .restart local v8    # "i":I
    :cond_2
    iput-object v7, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 259
    .end local v7    # "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v8    # "i":I
    :goto_3
    if-eqz p3, :cond_3

    .line 261
    invoke-static {p1, v1, v9}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary(Ljava/io/InputStream;II)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 263
    :cond_3
    return-void

    .line 250
    :cond_4
    iget v0, p2, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->polyType:I

    if-ne v0, v11, :cond_5

    .line 252
    add-int/lit8 v4, v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->fromBinary(Ljava/io/InputStream;IIIII)Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    goto :goto_3

    .line 256
    :cond_5
    invoke-static {p1, v1}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Tight(Ljava/io/InputStream;I)Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    goto :goto_3
.end method

.method protected constructor <init>(Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;)V
    .locals 0
    .param p1, "f"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .param p2, "fPrime"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .param p3, "h"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p4, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 208
    iput-object p2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .line 209
    iput-object p3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 210
    iput-object p4, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .line 211
    return-void
.end method

.method private getEncoded(Lorg/spongycastle/math/ntru/polynomial/Polynomial;)[B
    .locals 1
    .param p1, "p"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    .prologue
    .line 299
    instance-of v0, p1, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    if-eqz v0, :cond_0

    .line 301
    check-cast p1, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;

    .end local p1    # "p":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    invoke-virtual {p1}, Lorg/spongycastle/math/ntru/polynomial/ProductFormPolynomial;->toBinary()[B

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .restart local p1    # "p":Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    :cond_0
    invoke-interface {p1}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary3Tight()[B

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method encode(Ljava/io/OutputStream;Z)V
    .locals 6
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "include_h"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v2, v3, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->q:I

    .line 277
    .local v2, "q":I
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->getEncoded(Lorg/spongycastle/math/ntru/polynomial/Polynomial;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 278
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget v3, v3, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->basisType:I

    if-nez v3, :cond_2

    .line 280
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-interface {v3}, Lorg/spongycastle/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    .line 281
    .local v0, "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 283
    iget-object v3, v0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v4, v3, v1

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v4, v5

    aput v4, v3, v1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 291
    .end local v0    # "fPrimeInt":Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .end local v1    # "i":I
    :goto_1
    if-eqz p2, :cond_1

    .line 293
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 295
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-direct {p0, v3}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->getEncoded(Lorg/spongycastle/math/ntru/polynomial/Polynomial;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    if-ne p0, p1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :cond_2
    instance-of v3, p1, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    if-nez v3, :cond_3

    move v1, v2

    .line 334
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 336
    check-cast v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    .line 337
    .local v0, "other":Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_4

    .line 339
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-eqz v3, :cond_5

    move v1, v2

    .line 341
    goto :goto_0

    .line 344
    :cond_4
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 346
    goto :goto_0

    .line 348
    :cond_5
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-nez v3, :cond_6

    .line 350
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-eqz v3, :cond_7

    move v1, v2

    .line 352
    goto :goto_0

    .line 355
    :cond_6
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 357
    goto :goto_0

    .line 359
    :cond_7
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-nez v3, :cond_8

    .line 361
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v3, :cond_9

    move v1, v2

    .line 363
    goto :goto_0

    .line 366
    :cond_8
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 368
    goto :goto_0

    .line 370
    :cond_9
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    if-nez v3, :cond_a

    .line 372
    iget-object v3, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    if-eqz v3, :cond_0

    move v1, v2

    .line 374
    goto :goto_0

    .line 377
    :cond_a
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    iget-object v4, v0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v3, v4}, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 379
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 312
    const/16 v0, 0x1f

    .line 313
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 314
    .local v1, "result":I
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 315
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 316
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 317
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    if-nez v4, :cond_3

    :goto_3
    add-int v1, v2, v3

    .line 318
    return v1

    .line 314
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->f:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->fPrime:Lorg/spongycastle/math/ntru/polynomial/Polynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    .line 316
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->h:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    .line 317
    :cond_3
    iget-object v3, p0, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;->params:Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->hashCode()I

    move-result v3

    goto :goto_3
.end method
