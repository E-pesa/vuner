.class public Lorg/spongycastle/asn1/cmp/OOBCertHash;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "OOBCertHash.java"


# instance fields
.field private certId:Lorg/spongycastle/asn1/crmf/CertId;

.field private hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private hashVal:Lorg/spongycastle/asn1/DERBitString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 6
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v5, 0x1

    .line 23
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 26
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "index":I
    .local v2, "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/spongycastle/asn1/DERBitString;

    .line 28
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 30
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 32
    .local v3, "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_0

    .line 34
    invoke-static {v3, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v3, v5}, Lorg/spongycastle/asn1/crmf/CertId;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/crmf/CertId;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    goto :goto_1

    .line 42
    .end local v3    # "tObj":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_1
    return-void
.end method

.method private addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "v"    # Lorg/spongycastle/asn1/ASN1EncodableVector;
    .param p2, "tagNo"    # I
    .param p3, "obj"    # Lorg/spongycastle/asn1/ASN1Encodable;

    .prologue
    .line 95
    if-eqz p3, :cond_0

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, p3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/OOBCertHash;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 46
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;

    if-eqz v0, :cond_0

    .line 48
    check-cast p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;

    .line 56
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 51
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/cmp/OOBCertHash;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/OOBCertHash;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 56
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertId()Lorg/spongycastle/asn1/crmf/CertId;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    return-object v0
.end method

.method public getHashAlg()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashAlg:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 86
    const/4 v1, 0x1

    iget-object v2, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->certId:Lorg/spongycastle/asn1/crmf/CertId;

    invoke-direct {p0, v0, v1, v2}, Lorg/spongycastle/asn1/cmp/OOBCertHash;->addOptional(Lorg/spongycastle/asn1/ASN1EncodableVector;ILorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/OOBCertHash;->hashVal:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
