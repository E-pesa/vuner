.class public Lorg/spongycastle/ocsp/OCSPResp;
.super Ljava/lang/Object;
.source "OCSPResp.java"


# instance fields
.field private resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;


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
    .line 46
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPResp;-><init>(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 47
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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed response: "

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

    .line 61
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed response: "

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

.method public constructor <init>(Lorg/spongycastle/asn1/ocsp/OCSPResponse;)V
    .locals 0
    .param p1, "resp"    # Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    .line 27
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "resp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/spongycastle/ocsp/OCSPResp;-><init>(Lorg/spongycastle/asn1/ASN1InputStream;)V

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 109
    if-ne p1, p0, :cond_0

    .line 111
    const/4 v1, 0x1

    .line 121
    :goto_0
    return v1

    .line 114
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/ocsp/OCSPResp;

    if-nez v1, :cond_1

    .line 116
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 119
    check-cast v0, Lorg/spongycastle/ocsp/OCSPResp;

    .line 121
    .local v0, "r":Lorg/spongycastle/ocsp/OCSPResp;
    iget-object v1, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    iget-object v2, v0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getResponseObject()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/ocsp/OCSPException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v3, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getResponseBytes()Lorg/spongycastle/asn1/ocsp/ResponseBytes;

    move-result-object v2

    .line 77
    .local v2, "rb":Lorg/spongycastle/asn1/ocsp/ResponseBytes;
    if-nez v2, :cond_0

    .line 79
    const/4 v3, 0x0

    .line 95
    :goto_0
    return-object v3

    .line 82
    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->getResponseType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/spongycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    :try_start_0
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 87
    .local v1, "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    new-instance v3, Lorg/spongycastle/ocsp/BasicOCSPResp;

    invoke-static {v1}, Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/spongycastle/ocsp/BasicOCSPResp;-><init>(Lorg/spongycastle/asn1/ocsp/BasicOCSPResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    .end local v1    # "obj":Lorg/spongycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/spongycastle/ocsp/OCSPException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "problem decoding object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/spongycastle/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 95
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/asn1/ocsp/ResponseBytes;->getResponse()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    goto :goto_0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->getResponseStatus()Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponseStatus;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/spongycastle/ocsp/OCSPResp;->resp:Lorg/spongycastle/asn1/ocsp/OCSPResponse;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ocsp/OCSPResponse;->hashCode()I

    move-result v0

    return v0
.end method
