.class final Lorg/spongycastle/asn1/sec/SECNamedCurves$18;
.super Lorg/spongycastle/asn1/x9/X9ECParametersHolder;
.source "SECNamedCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/asn1/sec/SECNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createParameters()Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 15

    .prologue
    .line 475
    const/16 v1, 0x83

    .line 476
    .local v1, "m":I
    const/4 v2, 0x2

    .line 477
    .local v2, "k1":I
    const/4 v3, 0x3

    .line 478
    .local v3, "k2":I
    const/16 v4, 0x8

    .line 480
    .local v4, "k3":I
    const-string v9, "07A11B09A76B562144418FF3FF8C2570B8"

    invoke-static {v9}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v5

    .line 481
    .local v5, "a":Ljava/math/BigInteger;
    const-string v9, "0217C05610884B63B9C6C7291678F9D341"

    invoke-static {v9}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v6

    .line 482
    .local v6, "b":Ljava/math/BigInteger;
    const-string v9, "4D696E676875615175985BD3ADBADA21B43A97E2"

    invoke-static {v9}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v14

    .line 483
    .local v14, "S":[B
    const-string v9, "0400000000000000023123953A9464B54D"

    invoke-static {v9}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->access$000(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v7

    .line 484
    .local v7, "n":Ljava/math/BigInteger;
    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    .line 486
    .local v8, "h":Ljava/math/BigInteger;
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-direct/range {v0 .. v8}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 489
    .local v0, "curve":Lorg/spongycastle/math/ec/ECCurve;
    const-string v9, "040081BAF91FDF9833C40F9C181343638399078C6E7EA38C001F73C8134B1B4EF9E150"

    invoke-static {v9}, Lorg/spongycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/spongycastle/math/ec/ECCurve;->decodePoint([B)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v11

    .line 493
    .local v11, "G":Lorg/spongycastle/math/ec/ECPoint;
    new-instance v9, Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-object v10, v0

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v9
.end method
