.class public Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EncryptedContentInfo.java"


# instance fields
.field private contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

.field private contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1OctetString;)V
    .locals 0
    .param p1, "contentType"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "contentEncryptionAlgorithm"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "encryptedContent"    # Lorg/spongycastle/asn1/ASN1OctetString;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 27
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 29
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 3
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Truncated Sequence Found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 44
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 47
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 58
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    if-eqz v0, :cond_0

    .line 60
    check-cast p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 67
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 62
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 64
    new-instance v0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 67
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getEncryptedContent()Lorg/spongycastle/asn1/ASN1OctetString;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 99
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentType:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 100
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->contentEncryptionAlgorithm:Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 102
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Lorg/spongycastle/asn1/BERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->encryptedContent:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/BERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 107
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
