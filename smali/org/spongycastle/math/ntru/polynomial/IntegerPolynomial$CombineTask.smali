.class Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;
.super Ljava/lang/Object;
.source "IntegerPolynomial.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CombineTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/spongycastle/math/ntru/polynomial/ModularResultant;",
        ">;"
    }
.end annotation


# instance fields
.field private modRes1:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

.field private modRes2:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

.field final synthetic this$0:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method private constructor <init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;)V
    .locals 0
    .param p2, "modRes1"    # Lorg/spongycastle/math/ntru/polynomial/ModularResultant;
    .param p3, "modRes2"    # Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    .prologue
    .line 1348
    iput-object p1, p0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->this$0:Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1349
    iput-object p2, p0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes1:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    .line 1350
    iput-object p3, p0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes2:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    .line 1351
    return-void
.end method

.method synthetic constructor <init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;
    .param p2, "x1"    # Lorg/spongycastle/math/ntru/polynomial/ModularResultant;
    .param p3, "x2"    # Lorg/spongycastle/math/ntru/polynomial/ModularResultant;
    .param p4, "x3"    # Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$1;

    .prologue
    .line 1341
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;-><init>(Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;)V

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
    .line 1341
    invoke-virtual {p0}, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->call()Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/spongycastle/math/ntru/polynomial/ModularResultant;
    .locals 2

    .prologue
    .line 1355
    iget-object v0, p0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes1:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    iget-object v1, p0, Lorg/spongycastle/math/ntru/polynomial/IntegerPolynomial$CombineTask;->modRes2:Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    invoke-static {v0, v1}, Lorg/spongycastle/math/ntru/polynomial/ModularResultant;->combineRho(Lorg/spongycastle/math/ntru/polynomial/ModularResultant;Lorg/spongycastle/math/ntru/polynomial/ModularResultant;)Lorg/spongycastle/math/ntru/polynomial/ModularResultant;

    move-result-object v0

    return-object v0
.end method