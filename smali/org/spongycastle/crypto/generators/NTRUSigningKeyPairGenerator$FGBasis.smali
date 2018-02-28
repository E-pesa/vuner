.class public Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;
.super Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
.source "NTRUSigningKeyPairGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FGBasis"
.end annotation


# instance fields
.field public F:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

.field public G:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

.field final synthetic this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;


# direct methods
.method constructor <init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;)V
    .locals 0
    .param p2, "f"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .param p3, "fPrime"    # Lorg/spongycastle/math/ntru/polynomial/Polynomial;
    .param p4, "h"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p5, "F"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p6, "G"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p7, "params"    # Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    .prologue
    .line 342
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    .line 343
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;-><init>(Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/Polynomial;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;)V

    .line 344
    iput-object p5, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 345
    iput-object p6, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    .line 346
    return-void
.end method


# virtual methods
.method isNormOk()Z
    .locals 6

    .prologue
    .line 356
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    invoke-static {v3}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->access$100(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;)Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    move-result-object v3

    iget-wide v0, v3, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->keyNormBoundSq:D

    .line 357
    .local v0, "keyNormBoundSq":D
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    invoke-static {v3}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->access$100(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;)Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;

    move-result-object v3

    iget v2, v3, Lorg/spongycastle/crypto/params/NTRUSigningKeyGenerationParameters;->q:I

    .line 358
    .local v2, "q":I
    iget-object v3, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->F:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v3, v4, v0

    if-gez v3, :cond_0

    iget-object v3, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$FGBasis;->G:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;->centeredNormSq(I)J

    move-result-wide v4

    long-to-double v4, v4

    cmpg-double v3, v4, v0

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
