.class public Lorg/spongycastle/asn1/DERT61String;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERT61String.java"

# interfaces
.implements Lorg/spongycastle/asn1/ASN1String;


# instance fields
.field private string:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 73
    invoke-static {p1}, Lorg/spongycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    .line 74
    return-void
.end method

.method constructor <init>([B)V
    .locals 0
    .param p1, "string"    # [B

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    .line 65
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERT61String;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 25
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/DERT61String;

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/DERT61String;

    .end local p0    # "obj":Ljava/lang/Object;
    return-object p0

    .line 30
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/DERT61String;
    .locals 3
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 48
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/DERT61String;

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/DERT61String;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/DERT61String;

    move-result-object v1

    .line 54
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/spongycastle/asn1/DERT61String;

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/DERT61String;-><init>([B)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 111
    instance-of v0, p1, Lorg/spongycastle/asn1/DERT61String;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 116
    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return v0

    .restart local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    check-cast p1, Lorg/spongycastle/asn1/DERT61String;

    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lorg/spongycastle/asn1/DERT61String;->string:[B

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    goto :goto_0
.end method

.method encode(Lorg/spongycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .param p1, "out"    # Lorg/spongycastle/asn1/ASN1OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/16 v0, 0x14

    iget-object v1, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    invoke-virtual {p1, v0, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    .line 101
    return-void
.end method

.method encodedLength()I
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    array-length v0, v0

    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOctets()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->fromByteArray([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/spongycastle/asn1/DERT61String;->string:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERT61String;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
