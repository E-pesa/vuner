.class public Lorg/spongycastle/asn1/x509/CertificateList;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "CertificateList.java"


# instance fields
.field sig:Lorg/spongycastle/asn1/DERBitString;

.field sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sig:Lorg/spongycastle/asn1/DERBitString;

    .line 70
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 45
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_0

    .line 47
    check-cast p0, Lorg/spongycastle/asn1/x509/CertificateList;

    .line 54
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 49
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    new-instance v0, Lorg/spongycastle/asn1/x509/CertificateList;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/CertificateList;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 54
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/CertificateList;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIssuer()Lorg/spongycastle/asn1/x500/X500Name;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getIssuer()Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getNextUpdate()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificateEnumeration()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getRevokedCertificateEnumeration()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()[Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lorg/spongycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/spongycastle/asn1/DERBitString;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sig:Lorg/spongycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTBSCertList()Lorg/spongycastle/asn1/x509/TBSCertList;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public getThisUpdate()Lorg/spongycastle/asn1/x509/Time;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getThisUpdate()Lorg/spongycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/TBSCertList;->getVersionNumber()I

    move-result v0

    return v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 121
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/spongycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 122
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 123
    iget-object v1, p0, Lorg/spongycastle/asn1/x509/CertificateList;->sig:Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
