.class public Lorg/spongycastle/asn1/cms/EnvelopedData;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "EnvelopedData.java"


# instance fields
.field private encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

.field private originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

.field private unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

.field private version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    .line 43
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .local v1, "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 45
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 47
    .local v2, "tmp":Lorg/spongycastle/asn1/ASN1Encodable;
    instance-of v3, v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_0

    .line 49
    check-cast v2, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .end local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Encodable;
    invoke-static {v2, v4}, Lorg/spongycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/OriginatorInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 50
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v2

    .restart local v2    # "tmp":Lorg/spongycastle/asn1/ASN1Encodable;
    move v0, v1

    .line 53
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 55
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "index":I
    .restart local v1    # "index":I
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 57
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 59
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v4}, Lorg/spongycastle/asn1/ASN1Set;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 61
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/cms/EncryptedContentInfo;Lorg/spongycastle/asn1/ASN1Set;)V
    .locals 2
    .param p1, "originatorInfo"    # Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .param p2, "recipientInfos"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p3, "encryptedContentInfo"    # Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .param p4, "unprotectedAttrs"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 30
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-static {p1, p2, p4}, Lorg/spongycastle/asn1/cms/EnvelopedData;->calculateVersion(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)I

    move-result v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 32
    iput-object p1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    .line 33
    iput-object p2, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    .line 34
    iput-object p3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    .line 35
    iput-object p4, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    .line 36
    return-void
.end method

.method public static calculateVersion(Lorg/spongycastle/asn1/cms/OriginatorInfo;Lorg/spongycastle/asn1/ASN1Set;Lorg/spongycastle/asn1/ASN1Set;)I
    .locals 4
    .param p0, "originatorInfo"    # Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .param p1, "recipientInfos"    # Lorg/spongycastle/asn1/ASN1Set;
    .param p2, "unprotectedAttrs"    # Lorg/spongycastle/asn1/ASN1Set;

    .prologue
    .line 164
    if-nez p0, :cond_0

    if-eqz p2, :cond_2

    .line 166
    :cond_0
    const/4 v2, 0x2

    .line 186
    .local v2, "version":I
    :cond_1
    :goto_0
    return v2

    .line 170
    .end local v2    # "version":I
    :cond_2
    const/4 v2, 0x0

    .line 172
    .restart local v2    # "version":I
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 174
    .local v0, "e":Ljava/util/Enumeration;
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 176
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/RecipientInfo;

    move-result-object v1

    .line 178
    .local v1, "ri":Lorg/spongycastle/asn1/cms/RecipientInfo;
    invoke-virtual {v1}, Lorg/spongycastle/asn1/cms/RecipientInfo;->getVersion()Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 180
    const/4 v2, 0x2

    .line 181
    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EnvelopedData;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 88
    instance-of v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lorg/spongycastle/asn1/cms/EnvelopedData;

    .line 98
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 93
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 95
    new-instance v0, Lorg/spongycastle/asn1/cms/EnvelopedData;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cms/EnvelopedData;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 98
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/cms/EnvelopedData;
    .locals 1
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 76
    invoke-static {p0, p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEncryptedContentInfo()Lorg/spongycastle/asn1/cms/EncryptedContentInfo;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/spongycastle/asn1/cms/OriginatorInfo;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnprotectedAttrs()Lorg/spongycastle/asn1/ASN1Set;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 144
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_0

    .line 146
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/spongycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/spongycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 150
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/spongycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 152
    iget-object v1, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    if-eqz v1, :cond_1

    .line 154
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/spongycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/spongycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 157
    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/BERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
