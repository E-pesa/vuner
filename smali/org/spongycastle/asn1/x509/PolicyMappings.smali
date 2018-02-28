.class public Lorg/spongycastle/asn1/x509/PolicyMappings;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PolicyMappings.java"


# instance fields
.field seq:Lorg/spongycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 6
    .param p1, "mappings"    # Ljava/util/Hashtable;

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 62
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 63
    .local v0, "dev":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .line 65
    .local v3, "it":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    .local v2, "idp":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69
    .local v4, "sdp":Ljava/lang/String;
    new-instance v1, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 70
    .local v1, "dv":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v2}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 71
    new-instance v5, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v5, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 72
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v0, v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 75
    .end local v1    # "dv":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v2    # "idp":Ljava/lang/String;
    .end local v4    # "sdp":Ljava/lang/String;
    :cond_0
    new-instance v5, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    iput-object v5, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 76
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 1
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 50
    iput-object p1, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    .line 51
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/PolicyMappings;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 30
    instance-of v0, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;

    if-eqz v0, :cond_0

    .line 32
    check-cast p0, Lorg/spongycastle/asn1/x509/PolicyMappings;

    .line 39
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 36
    new-instance v0, Lorg/spongycastle/asn1/x509/PolicyMappings;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x509/PolicyMappings;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 39
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/spongycastle/asn1/x509/PolicyMappings;->seq:Lorg/spongycastle/asn1/ASN1Sequence;

    return-object v0
.end method
