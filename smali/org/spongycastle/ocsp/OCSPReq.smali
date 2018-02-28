.class public Lorg/spongycastle/ocsp/OCSPReq;
.super Ljava/lang/Object;
.source "OCSPReq.java"

# interfaces
.implements Ljava/security/cert/X509Extension;


# instance fields
.field private req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPReq;-><init>(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 91
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1InputStream;)V
    .locals 4
    .param p1, "aIn"    # Lorg/spongycastle/asn1/ASN1InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/OCSPRequest;)V
    .locals 0
    .param p1, "req"    # Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    .line 77
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "req"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPReq;-><init>(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 84
    return-void
.end method

.method private getCertList(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v2, "certs":Ljava/util/List;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 186
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 191
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    :try_start_0
    invoke-static {p1}, Lorg/spongycastle/ocsp/OCSPUtil;->createX509CertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 201
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    iget-object v7, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/spongycastle/asn1/ocsp/Signature;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ocsp/Signature;->getCerts()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v6

    .line 203
    .local v6, "s":Lorg/spongycastle/asn1/ASN1Sequence;
    if-eqz v6, :cond_0

    .line 205
    invoke-virtual {v6}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 207
    .local v4, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 211
    :try_start_1
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/spongycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v7}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 213
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 227
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 193
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v6    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v5

    .line 195
    .local v5, "ex":Ljava/security/cert/CertificateException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t get certificate factory."

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 216
    .end local v5    # "ex":Ljava/security/cert/CertificateException;
    .restart local v3    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v4    # "e":Ljava/util/Enumeration;
    .restart local v6    # "s":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v5

    .line 218
    .local v5, "ex":Ljava/io/IOException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t re-encode certificate!"

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 221
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v5

    .line 223
    .local v5, "ex":Ljava/security/cert/CertificateException;
    new-instance v7, Lorg/spongycastle/ocsp/OCSPException;

    const-string v8, "can\'t re-encode certificate!"

    invoke-direct {v7, v8, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 231
    .end local v4    # "e":Ljava/util/Enumeration;
    .end local v5    # "ex":Ljava/security/cert/CertificateException;
    :cond_0
    return-object v2
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .locals 6
    .param p1, "critical"    # Z

    .prologue
    .line 362
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 363
    .local v4, "set":Ljava/util/Set;
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->getRequestExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 365
    .local v2, "extensions":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_1

    .line 367
    invoke-virtual {v2}, Lorg/spongycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 369
    .local v0, "e":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 371
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 372
    .local v3, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 374
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne p1, v5, :cond_0

    .line 376
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    .end local v3    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public getCertificates(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    const/4 v2, 0x0

    .line 272
    :goto_0
    return-object v2

    .line 271
    :cond_0
    :try_start_0
    new-instance v1, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {p0, p2}, Lorg/spongycastle/ocsp/OCSPReq;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 272
    .local v1, "params":Ljava/security/cert/CertStoreParameters;
    invoke-static {p1, v1, p2}, Lorg/spongycastle/ocsp/OCSPUtil;->createCertStoreInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 274
    .end local v1    # "params":Ljava/security/cert/CertStoreParameters;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Lorg/spongycastle/ocsp/OCSPException;

    const-string v3, "can\'t setup the CertStore"

    invoke-direct {v2, v3, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const/4 v1, 0x0

    .line 245
    :goto_0
    return-object v1

    .line 243
    :cond_0
    invoke-direct {p0, p1}, Lorg/spongycastle/ocsp/OCSPReq;->getCertList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 245
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    check-cast v1, [Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 386
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 336
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 338
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    iget-object v2, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0, v2}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 340
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 6
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->getRequestExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 398
    .local v2, "exts":Lorg/spongycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_0

    .line 400
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/x509/X509Extensions;->getExtension(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 402
    .local v1, "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    if-eqz v1, :cond_0

    .line 406
    :try_start_0
    invoke-virtual {v1}, Lorg/spongycastle/asn1/x509/X509Extension;->getValue()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    const-string v4, "DER"

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 415
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :goto_0
    return-object v3

    .line 408
    .restart local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error encoding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 415
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ext":Lorg/spongycastle/asn1/x509/X509Extension;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPReq;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestExtensions()Lorg/spongycastle/asn1/x509/X509Extensions;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getRequestExtensions()Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/X509Extensions;

    move-result-object v0

    return-object v0
.end method

.method public getRequestList()[Lorg/spongycastle/ocsp/Req;
    .locals 5

    .prologue
    .line 141
    iget-object v3, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getRequestList()Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 142
    .local v2, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v1, v3, [Lorg/spongycastle/ocsp/Req;

    .line 144
    .local v1, "requests":[Lorg/spongycastle/ocsp/Req;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    .line 146
    new-instance v3, Lorg/spongycastle/ocsp/Req;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/Request;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/ocsp/Req;-><init>(Lorg/spongycastle/asn1/ocsp/Request;)V

    aput-object v3, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-object v1
.end method

.method public getRequestorName()Lorg/spongycastle/asn1/x509/GeneralName;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getRequestorName()Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/spongycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/Signature;->getSignature()Lorg/spongycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public getSignatureAlgOID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/spongycastle/asn1/ocsp/Signature;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/Signature;->getSignatureAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTBSRequest()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 123
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/spongycastle/ocsp/OCSPException;

    const-string v2, "problem encoding tbsRequest"

    invoke-direct {v1, v2, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/TBSRequest;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 351
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 352
    .local v0, "extns":Ljava/util/Set;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    const/4 v1, 0x1

    .line 357
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSigned()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getOptionalSignature()Lorg/spongycastle/asn1/ocsp/Signature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)Z
    .locals 7
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->isSigned()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    new-instance v4, Lorg/spongycastle/ocsp/OCSPException;

    const-string v5, "attempt to verify signature on unsigned object"

    invoke-direct {v4, v5}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 305
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->getSignatureAlgOID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lorg/spongycastle/ocsp/OCSPUtil;->createSignatureInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v3

    .line 307
    .local v3, "signature":Ljava/security/Signature;
    invoke-virtual {v3, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 309
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 310
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/spongycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 312
    .local v0, "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    iget-object v4, p0, Lorg/spongycastle/ocsp/OCSPReq;->req:Lorg/spongycastle/asn1/ocsp/OCSPRequest;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ocsp/OCSPRequest;->getTbsRequest()Lorg/spongycastle/asn1/ocsp/TBSRequest;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 314
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->update([B)V

    .line 316
    invoke-virtual {p0}, Lorg/spongycastle/ocsp/OCSPReq;->getSignature()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    return v4

    .line 318
    .end local v0    # "aOut":Lorg/spongycastle/asn1/ASN1OutputStream;
    .end local v1    # "bOut":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "signature":Ljava/security/Signature;
    :catch_0
    move-exception v2

    .line 321
    .local v2, "e":Ljava/security/NoSuchProviderException;
    throw v2

    .line 323
    .end local v2    # "e":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception processing sig: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4
.end method
