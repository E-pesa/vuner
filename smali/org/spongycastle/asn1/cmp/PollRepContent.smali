.class public Lorg/spongycastle/asn1/cmp/PollRepContent;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PollRepContent.java"


# instance fields
.field private certReqId:Lorg/spongycastle/asn1/ASN1Integer;

.field private checkAfter:Lorg/spongycastle/asn1/ASN1Integer;

.field private reason:Lorg/spongycastle/asn1/cmp/PKIFreeText;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    const/4 v1, 0x2

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:Lorg/spongycastle/asn1/ASN1Integer;

    .line 20
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:Lorg/spongycastle/asn1/ASN1Integer;

    .line 22
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 24
    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    .line 26
    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/cmp/PollRepContent;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    .line 40
    .end local p0    # "o":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 35
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    new-instance v0, Lorg/spongycastle/asn1/cmp/PollRepContent;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/cmp/PollRepContent;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 40
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertReqId()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getCheckAfter()Lorg/spongycastle/asn1/ASN1Integer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:Lorg/spongycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getReason()Lorg/spongycastle/asn1/cmp/PKIFreeText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 72
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->certReqId:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 73
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->checkAfter:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 75
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lorg/spongycastle/asn1/cmp/PollRepContent;->reason:Lorg/spongycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 80
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
