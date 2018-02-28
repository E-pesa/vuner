.class public Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificateGenerator.java"


# instance fields
.field private acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

.field private extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

.field private sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private sigOID:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private signatureAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    .line 47
    new-instance v0, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    .line 48
    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/spongycastle/x509/X509Attribute;)V
    .locals 2
    .param p1, "attribute"    # Lorg/spongycastle/x509/X509Attribute;

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {p1}, Lorg/spongycastle/x509/X509Attribute;->toASN1Object()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/Attribute;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/Attribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->addAttribute(Lorg/spongycastle/asn1/x509/Attribute;)V

    .line 130
    return-void
.end method

.method public addExtension(Ljava/lang/String;ZLorg/spongycastle/asn1/ASN1Encodable;)V
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # Lorg/spongycastle/asn1/ASN1Encodable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;ZLorg/spongycastle/asn1/ASN1Encodable;)V

    .line 151
    return-void
.end method

.method public addExtension(Ljava/lang/String;Z[B)V
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;
    .param p2, "critical"    # Z
    .param p3, "value"    # [B

    .prologue
    .line 163
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    new-instance v1, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;->addExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Z[B)V

    .line 164
    return-void
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 9
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;->generate()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setExtensions(Lorg/spongycastle/asn1/x509/X509Extensions;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->generateAttributeCertificateInfo()Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    .line 243
    .local v5, "acInfo":Lorg/spongycastle/asn1/x509/AttributeCertificateInfo;
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 245
    .local v7, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v7, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 246
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 250
    :try_start_0
    new-instance v8, Lorg/spongycastle/asn1/DERBitString;

    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/spongycastle/asn1/DERObjectIdentifier;

    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/spongycastle/x509/X509Util;->calculateSignature(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Lorg/spongycastle/asn1/ASN1Encodable;)[B

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 252
    new-instance v0, Lorg/spongycastle/x509/X509V2AttributeCertificate;

    new-instance v1, Lorg/spongycastle/asn1/x509/AttributeCertificate;

    new-instance v2, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v2, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/AttributeCertificate;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/spongycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/spongycastle/asn1/x509/AttributeCertificate;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 254
    :catch_0
    move-exception v6

    .line 256
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Lorg/spongycastle/x509/ExtCertificateEncodingException;

    const-string v1, "constructed invalid certificate"

    invoke-direct {v0, v1, v6}, Lorg/spongycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 1
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/x509/X509AttributeCertificate;

    move-result-object v0

    return-object v0
.end method

.method public generateCertificate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/x509/X509AttributeCertificate;
    .locals 4
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "provider"    # Ljava/lang/String;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->generate(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Lorg/spongycastle/x509/X509AttributeCertificate;
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/security/NoSuchProviderException;
    throw v0

    .line 199
    .end local v0    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/SignatureException;
    throw v0

    .line 203
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, "e":Ljava/security/InvalidKeyException;
    throw v0

    .line 207
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 209
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception creating certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSignatureAlgNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lorg/spongycastle/x509/X509Util;->getAlgNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    invoke-direct {v0}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    .line 56
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->extGenerator:Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/X509ExtensionsGenerator;->reset()V

    .line 57
    return-void
.end method

.method public setHolder(Lorg/spongycastle/x509/AttributeCertificateHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/spongycastle/x509/AttributeCertificateHolder;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/spongycastle/x509/AttributeCertificateHolder;->holder:Lorg/spongycastle/asn1/x509/Holder;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setHolder(Lorg/spongycastle/asn1/x509/Holder;)V

    .line 66
    return-void
.end method

.method public setIssuer(Lorg/spongycastle/x509/AttributeCertificateIssuer;)V
    .locals 2
    .param p1, "issuer"    # Lorg/spongycastle/x509/AttributeCertificateIssuer;

    .prologue
    .line 74
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v1, p1, Lorg/spongycastle/x509/AttributeCertificateIssuer;->form:Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-static {v1}, Lorg/spongycastle/asn1/x509/AttCertIssuer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setIssuer(Lorg/spongycastle/asn1/x509/AttCertIssuer;)V

    .line 75
    return-void
.end method

.method public setIssuerUniqueId([Z)V
    .locals 2
    .param p1, "iui"    # [Z

    .prologue
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented (yet)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotAfter(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 95
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setEndDate(Lorg/spongycastle/asn1/DERGeneralizedTime;)V

    .line 96
    return-void
.end method

.method public setNotBefore(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/spongycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/DERGeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setStartDate(Lorg/spongycastle/asn1/DERGeneralizedTime;)V

    .line 90
    return-void
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "serialNumber"    # Ljava/math/BigInteger;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    new-instance v1, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v1, p1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSerialNumber(Lorg/spongycastle/asn1/ASN1Integer;)V

    .line 84
    return-void
.end method

.method public setSignatureAlgorithm(Ljava/lang/String;)V
    .locals 3
    .param p1, "signatureAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->signatureAlgorithm:Ljava/lang/String;

    .line 111
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/x509/X509Util;->getAlgorithmOID(Ljava/lang/String;)Lorg/spongycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/spongycastle/asn1/DERObjectIdentifier;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigOID:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-static {v1, p1}, Lorg/spongycastle/x509/X509Util;->getSigAlgID(Lorg/spongycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 120
    iget-object v1, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->acInfoGen:Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;

    iget-object v2, p0, Lorg/spongycastle/x509/X509V2AttributeCertificateGenerator;->sigAlgId:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->setSignature(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 121
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown signature type requested"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
