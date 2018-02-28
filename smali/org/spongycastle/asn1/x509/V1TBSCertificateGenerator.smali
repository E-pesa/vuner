.class public Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;
.super Ljava/lang/Object;
.source "V1TBSCertificateGenerator.java"


# instance fields
.field endDate:Lorg/spongycastle/asn1/x509/Time;

.field issuer:Lorg/spongycastle/asn1/x500/X500Name;

.field serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

.field signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field startDate:Lorg/spongycastle/asn1/x509/Time;

.field subject:Lorg/spongycastle/asn1/x500/X500Name;

.field subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

.field version:Lorg/spongycastle/asn1/DERTaggedObject;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    new-instance v2, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v2, v3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    invoke-direct {v0, v1, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->version:Lorg/spongycastle/asn1/DERTaggedObject;

    .line 38
    return-void
.end method


# virtual methods
.method public generateTBSCertificate()Lorg/spongycastle/asn1/x509/TBSCertificate;
    .locals 4

    .prologue
    .line 114
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V1 TBScertificate generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, "seq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 125
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 126
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 131
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 133
    .local v1, "validity":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 134
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 136
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 138
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 140
    iget-object v2, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 142
    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v2}, Lorg/spongycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/TBSCertificate;

    move-result-object v2

    return-object v2
.end method

.method public setEndDate(Lorg/spongycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "endDate"    # Lorg/spongycastle/asn1/DERUTCTime;

    .prologue
    .line 88
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    .line 89
    return-void
.end method

.method public setEndDate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "endDate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->endDate:Lorg/spongycastle/asn1/x509/Time;

    .line 83
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 65
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "issuer"    # Lorg/spongycastle/asn1/x509/X509Name;

    .prologue
    .line 58
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->issuer:Lorg/spongycastle/asn1/x500/X500Name;

    .line 59
    return-void
.end method

.method public setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)V
    .locals 0
    .param p1, "serialNumber"    # Lorg/spongycastle/asn1/ASN1Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->serialNumber:Lorg/spongycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "signature"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .prologue
    .line 49
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->signature:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 50
    return-void
.end method

.method public setStartDate(Lorg/spongycastle/asn1/DERUTCTime;)V
    .locals 1
    .param p1, "startDate"    # Lorg/spongycastle/asn1/DERUTCTime;

    .prologue
    .line 76
    new-instance v0, Lorg/spongycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/x509/Time;-><init>(Lorg/spongycastle/asn1/ASN1Primitive;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    .line 77
    return-void
.end method

.method public setStartDate(Lorg/spongycastle/asn1/x509/Time;)V
    .locals 0
    .param p1, "startDate"    # Lorg/spongycastle/asn1/x509/Time;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->startDate:Lorg/spongycastle/asn1/x509/Time;

    .line 71
    return-void
.end method

.method public setSubject(Lorg/spongycastle/asn1/x500/X500Name;)V
    .locals 0
    .param p1, "subject"    # Lorg/spongycastle/asn1/x500/X500Name;

    .prologue
    .line 103
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 104
    return-void
.end method

.method public setSubject(Lorg/spongycastle/asn1/x509/X509Name;)V
    .locals 1
    .param p1, "subject"    # Lorg/spongycastle/asn1/x509/X509Name;

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/X509Name;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x500/X500Name;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subject:Lorg/spongycastle/asn1/x500/X500Name;

    .line 98
    return-void
.end method

.method public setSubjectPublicKeyInfo(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    .locals 0
    .param p1, "pubKeyInfo"    # Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/V1TBSCertificateGenerator;->subjectPublicKeyInfo:Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    .line 110
    return-void
.end method