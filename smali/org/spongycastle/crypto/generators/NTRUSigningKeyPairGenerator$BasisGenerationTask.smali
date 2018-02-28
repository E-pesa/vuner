.class Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;
.super Ljava/lang/Object;
.source "NTRUSigningKeyPairGenerator.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BasisGenerationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;


# direct methods
.method private constructor <init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;->this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;
    .param p2, "x1"    # Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$1;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;-><init>(Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;->call()Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator$BasisGenerationTask;->this$0:Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/generators/NTRUSigningKeyPairGenerator;->generateBoundedBasis()Lorg/spongycastle/crypto/params/NTRUSigningPrivateKeyParameters$Basis;

    move-result-object v0

    return-object v0
.end method
