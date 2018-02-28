.class public Lorg/spongycastle/asn1/x509/BasicConstraints;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "BasicConstraints.java"


# instance fields
.field cA:Lorg/spongycastle/asn1/DERBoolean;

.field pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "pathLenConstraint"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 101
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 103
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 49
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 52
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 65
    :goto_1
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 67
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p1, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 62
    :cond_2
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 63
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong sequence in constructor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "cA"    # Z

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 17
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 18
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 82
    if-eqz p1, :cond_0

    .line 84
    new-instance v0, Lorg/spongycastle/asn1/DERBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    .line 90
    :goto_0
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    .line 91
    return-void

    .line 88
    :cond_0
    iput-object v2, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    .line 43
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/X509Extension;

    if-eqz v0, :cond_1

    .line 36
    check-cast p0, Lorg/spongycastle/asn1/x509/X509Extension;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Lorg/spongycastle/asn1/x509/X509Extension;->convertValueToObject(Lorg/spongycastle/asn1/x509/X509Extension;)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    goto :goto_0

    .line 38
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-eqz p0, :cond_2

    .line 40
    new-instance v0, Lorg/spongycastle/asn1/x509/BasicConstraints;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/BasicConstraints;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 43
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/BasicConstraints;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 24
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPathLenConstraint()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCA()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 140
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 143
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->cA:Lorg/spongycastle/asn1/DERBoolean;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "BasicConstraints: isCa(false)"

    .line 156
    :goto_0
    return-object v0

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasicConstraints: isCa("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/spongycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), pathLenConstraint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/asn1/x509/BasicConstraints;->pathLenConstraint:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
