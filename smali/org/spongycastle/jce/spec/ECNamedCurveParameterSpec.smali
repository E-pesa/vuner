.class public Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;
.super Lorg/spongycastle/jce/spec/ECParameterSpec;
.source "ECNamedCurveParameterSpec.java"


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;

    .prologue
    .line 25
    invoke-direct {p0, p2, p3, p4}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 37
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "curve"    # Lorg/spongycastle/math/ec/ECCurve;
    .param p3, "G"    # Lorg/spongycastle/math/ec/ECPoint;
    .param p4, "n"    # Ljava/math/BigInteger;
    .param p5, "h"    # Ljava/math/BigInteger;
    .param p6, "seed"    # [B

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/jce/spec/ECParameterSpec;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 52
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECNamedCurveParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
