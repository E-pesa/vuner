.class public Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
.super Lorg/spongycastle/asn1/ASN1Object;
.source "PBKDF2Params.java"


# instance fields
.field private iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

.field private keyLength:Lorg/spongycastle/asn1/ASN1Integer;

.field private octStr:Lorg/spongycastle/asn1/ASN1OctetString;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 2
    .param p1, "seq"    # Lorg/spongycastle/asn1/ASN1Sequence;

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 61
    .local v0, "e":Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 62
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1Integer;

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 42
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    invoke-direct {v0, p1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    .line 43
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    .line 44
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .param p1, "salt"    # [B
    .param p2, "iterationCount"    # I
    .param p3, "keyLength"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>([BI)V

    .line 53
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-direct {v0, p3}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(I)V

    iput-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PBKDF2Params;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 25
    instance-of v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    .line 35
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 30
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    .line 32
    new-instance v0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 35
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getIterationCount()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getKeyLength()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 91
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSalt()[B
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 98
    .local v0, "v":Lorg/spongycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->octStr:Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 99
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->iterationCount:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/spongycastle/asn1/pkcs/PBKDF2Params;->keyLength:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 106
    :cond_0
    new-instance v1, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
