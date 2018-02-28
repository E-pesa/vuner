.class public Lorg/spongycastle/asn1/tsp/TimeStampReq;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "TimeStampReq.java"


# instance fields
.field certReq:Lorg/spongycastle/asn1/ASN1Boolean;

.field extensions:Lorg/spongycastle/asn1/x509/Extensions;

.field messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

.field nonce:Lorg/spongycastle/asn1/ASN1Integer;

.field tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field version:Lorg/spongycastle/asn1/ASN1Integer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 47
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 49
    .local v0, "nbObjects":I
    const/4 v2, 0x0

    .line 52
    .local v2, "seqStart":I
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 57
    invoke-virtual {p1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 61
    move v1, v2

    .local v1, "opt":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 64
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v4, :cond_2

    .line 71
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/DERBoolean;

    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/spongycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Boolean;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    instance-of v4, v4, Lorg/spongycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1TaggedObject;

    .line 82
    .local v3, "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_0

    .line 84
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/spongycastle/asn1/x509/Extensions;->getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/x509/Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    goto :goto_1

    .line 88
    .end local v3    # "tagged":Lorg/spongycastle/asn1/ASN1TaggedObject;
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/tsp/MessageImprint;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Integer;Lorg/spongycastle/asn1/ASN1Boolean;Lorg/spongycastle/asn1/x509/Extensions;)V
    .locals 2
    .param p1, "messageImprint"    # Lorg/spongycastle/asn1/tsp/MessageImprint;
    .param p2, "tsaPolicy"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "nonce"    # Lorg/spongycastle/asn1/ASN1Integer;
    .param p4, "certReq"    # Lorg/spongycastle/asn1/ASN1Boolean;
    .param p5, "extensions"    # Lorg/spongycastle/asn1/x509/Extensions;

    .prologue
    .line 96
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 98
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->version:Lorg/spongycastle/asn1/ASN1Integer;

    .line 100
    iput-object p1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    .line 101
    iput-object p2, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 102
    iput-object p3, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    .line 103
    iput-object p4, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    .line 104
    iput-object p5, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    .line 105
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/tsp/TimeStampReq;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;

    if-eqz v0, :cond_0

    .line 35
    check-cast p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;

    .line 42
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 37
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 39
    new-instance v0, Lorg/spongycastle/asn1/tsp/TimeStampReq;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReq()Lorg/spongycastle/asn1/ASN1Boolean;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    return-object v0
.end method

.method public getExtensions()Lorg/spongycastle/asn1/x509/Extensions;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/spongycastle/asn1/tsp/MessageImprint;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getReqPolicy()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->version:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 155
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->version:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/spongycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 158
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 163
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 168
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/spongycastle/asn1/ASN1Boolean;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 173
    :cond_2
    iget-object v1, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    if-eqz v1, :cond_3

    .line 175
    new-instance v1, Lorg/spongycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/spongycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/spongycastle/asn1/x509/Extensions;

    invoke-direct {v1, v3, v3, v2}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 178
    :cond_3
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
