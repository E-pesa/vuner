.class public Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "ObjectDigestInfo.java"


# static fields
.field public static final otherObjectDigest:I = 0x2

.field public static final publicKey:I = 0x0

.field public static final publicKeyCert:I = 0x1


# instance fields
.field digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

.field objectDigest:Lorg/spongycastle/asn1/DERBitString;

.field otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(ILorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .locals 1
    .param p1, "digestedObjectType"    # I
    .param p2, "otherObjectTypeID"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "digestAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p4, "objectDigest"    # [B

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 102
    new-instance v0, Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1Enumerated;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 103
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 105
    iput-object p2, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 108
    :cond_0
    iput-object p3, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 109
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-direct {v0, p4}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    .line 110
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 4
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v3, 0x4

    .line 114
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-gt v1, v3, :cond_0

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Enumerated;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "offset":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 127
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 128
    add-int/lit8 v0, v0, 0x1

    .line 131
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 133
    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    .line 134
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 63
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    .line 73
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 68
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 70
    new-instance v0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 73
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 80
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/ObjectDigestInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDigestAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigestedObjectType()Lorg/spongycastle/asn1/DEREnumerated;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    return-object v0
.end method

.method public getObjectDigest()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getOtherObjectTypeID()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 179
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestedObjectType:Lorg/spongycastle/asn1/ASN1Enumerated;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 181
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->otherObjectTypeID:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->digestAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 187
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/ObjectDigestInfo;->objectDigest:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
