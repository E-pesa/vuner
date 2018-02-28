.class public Lorg/spongycastle/asn1/DERObjectIdentifier;
.super Lorg/spongycastle/asn1/ASN1Primitive;
.source "DERObjectIdentifier.java"


# static fields
.field private static cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# instance fields
.field private body:[B

.field identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 301
    const/16 v0, 0xff

    new-array v0, v0, [[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sput-object v0, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 126
    invoke-static {p1}, Lorg/spongycastle/asn1/DERObjectIdentifier;->isValidIdentifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not an OID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 132
    return-void
.end method

.method constructor <init>([B)V
    .locals 13
    .param p1, "bytes"    # [B

    .prologue
    const/16 v12, 0x2e

    .line 64
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Primitive;-><init>()V

    .line 65
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    .local v4, "objId":Ljava/lang/StringBuffer;
    const-wide/16 v6, 0x0

    .line 67
    .local v6, "value":J
    const/4 v1, 0x0

    .line 68
    .local v1, "bigValue":Ljava/math/BigInteger;
    const/4 v2, 0x1

    .line 70
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p1

    if-eq v3, v5, :cond_4

    .line 72
    aget-byte v5, p1, v3

    and-int/lit16 v0, v5, 0xff

    .line 74
    .local v0, "b":I
    const-wide/high16 v8, 0x80000000000000L

    cmp-long v5, v6, v8

    if-gez v5, :cond_2

    .line 76
    const-wide/16 v8, 0x80

    mul-long/2addr v8, v6

    and-int/lit8 v5, v0, 0x7f

    int-to-long v10, v5

    add-long v6, v8, v10

    .line 77
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_1

    .line 79
    if-eqz v2, :cond_0

    .line 81
    long-to-int v5, v6

    div-int/lit8 v5, v5, 0x28

    packed-switch v5, :pswitch_data_0

    .line 91
    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    const-wide/16 v8, 0x50

    sub-long/2addr v6, v8

    .line 94
    :goto_1
    const/4 v2, 0x0

    .line 97
    :cond_0
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 99
    const-wide/16 v6, 0x0

    .line 70
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 84
    :pswitch_0
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 87
    :pswitch_1
    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    const-wide/16 v8, 0x28

    sub-long/2addr v6, v8

    .line 89
    goto :goto_1

    .line 104
    :cond_2
    if-nez v1, :cond_3

    .line 106
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 108
    :cond_3
    const/4 v5, 0x7

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 109
    and-int/lit8 v5, v0, 0x7f

    int-to-long v8, v5

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->or(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 110
    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_1

    .line 112
    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 114
    const/4 v1, 0x0

    .line 115
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 120
    .end local v0    # "b":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    .line 121
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doOutput(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .param p1, "aOut"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 179
    new-instance v0, Lorg/spongycastle/asn1/OIDTokenizer;

    iget-object v2, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/OIDTokenizer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "tok":Lorg/spongycastle/asn1/OIDTokenizer;
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x28

    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {p0, p1, v2, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    .line 185
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {v0}, Lorg/spongycastle/asn1/OIDTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ge v2, v3, :cond_0

    .line 190
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;J)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lorg/spongycastle/asn1/DERObjectIdentifier;->writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V

    goto :goto_0

    .line 197
    .end local v1    # "token":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 7
    .param p0, "enc"    # [B

    .prologue
    const/16 v6, 0xff

    .line 305
    array-length v4, p0

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 307
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    .line 369
    :cond_0
    :goto_0
    return-object v3

    .line 310
    :cond_1
    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 311
    .local v1, "idx1":I
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 313
    .local v0, "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v0, :cond_2

    .line 315
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 318
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_2
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 320
    .local v2, "idx2":I
    aget-object v3, v0, v2

    .line 322
    .local v3, "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    if-nez v3, :cond_3

    .line 324
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    .line 325
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    add-int/lit8 v4, v1, 0x1

    rem-int/lit16 v1, v4, 0x100

    .line 335
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    aget-object v0, v4, v1

    .line 336
    if-nez v0, :cond_4

    .line 338
    sget-object v4, Lorg/spongycastle/asn1/DERObjectIdentifier;->cache:[[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-array v0, v6, [Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    aput-object v0, v4, v1

    .line 341
    .restart local v0    # "first":[Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    aget-object v3, v0, v2

    .line 343
    if-nez v3, :cond_5

    .line 345
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    .line 346
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 349
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 354
    add-int/lit8 v4, v2, 0x1

    rem-int/lit16 v2, v4, 0x100

    .line 355
    aget-object v3, v0, v2

    .line 357
    if-nez v3, :cond_6

    .line 359
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    aput-object v3, v0, v2

    .line 360
    .restart local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    goto :goto_0

    .line 363
    :cond_6
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getBody()[B

    move-result-object v4

    invoke-static {p0, v4}, Lorg/spongycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    new-instance v3, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .end local v3    # "possibleMatch":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    invoke-direct {v3, p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>([B)V

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 24
    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    check-cast p0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 31
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 29
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-eqz v0, :cond_2

    .line 31
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    check-cast p0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0

    .line 34
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
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

.method public static getInstance(Lorg/spongycastle/asn1/ASN1TaggedObject;Z)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 2
    .param p0, "obj"    # Lorg/spongycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 52
    .local v0, "o":Lorg/spongycastle/asn1/ASN1Primitive;
    if-nez p1, :cond_0

    instance-of v1, v0, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_1

    .line 54
    :cond_0
    invoke-static {v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1TaggedObject;->getObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->fromOctetString([B)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    goto :goto_0
.end method

.method private static isValidIdentifier(Ljava/lang/String;)Z
    .locals 9
    .param p0, "identifier"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x30

    const/16 v7, 0x2e

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    :cond_0
    move v3, v4

    .line 298
    :cond_1
    :goto_0
    return v3

    .line 267
    :cond_2
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 268
    .local v1, "first":C
    if-lt v1, v8, :cond_3

    const/16 v5, 0x32

    if-le v1, v5, :cond_4

    :cond_3
    move v3, v4

    .line 270
    goto :goto_0

    .line 273
    :cond_4
    const/4 v3, 0x0

    .line 274
    .local v3, "periodAllowed":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x2

    if-lt v2, v5, :cond_1

    .line 276
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 278
    .local v0, "ch":C
    if-gt v8, v0, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    .line 280
    const/4 v3, 0x1

    .line 274
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 284
    :cond_5
    if-ne v0, v7, :cond_7

    .line 286
    if-nez v3, :cond_6

    move v3, v4

    .line 288
    goto :goto_0

    .line 291
    :cond_6
    const/4 v3, 0x0

    .line 292
    goto :goto_2

    :cond_7
    move v3, v4

    .line 295
    goto :goto_0
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;J)V
    .locals 4
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # J

    .prologue
    .line 143
    const/16 v2, 0x9

    new-array v1, v2, [B

    .line 144
    .local v1, "result":[B
    const/16 v0, 0x8

    .line 145
    .local v0, "pos":I
    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 146
    :goto_0
    const-wide/16 v2, 0x80

    cmp-long v2, p2, v2

    if-ltz v2, :cond_0

    .line 148
    const/4 v2, 0x7

    shr-long/2addr p2, v2

    .line 149
    add-int/lit8 v0, v0, -0x1

    long-to-int v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    goto :goto_0

    .line 151
    :cond_0
    rsub-int/lit8 v2, v0, 0x9

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 152
    return-void
.end method

.method private writeField(Ljava/io/ByteArrayOutputStream;Ljava/math/BigInteger;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "fieldValue"    # Ljava/math/BigInteger;

    .prologue
    const/4 v6, 0x0

    .line 158
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x6

    div-int/lit8 v0, v4, 0x7

    .line 159
    .local v0, "byteCount":I
    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_0
    move-object v3, p2

    .line 166
    .local v3, "tmpValue":Ljava/math/BigInteger;
    new-array v2, v0, [B

    .line 167
    .local v2, "tmp":[B
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 169
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 170
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 167
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 172
    :cond_1
    add-int/lit8 v4, v0, -0x1

    aget-byte v5, v2, v4

    and-int/lit8 v5, v5, 0x7f

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 173
    array-length v4, v2

    invoke-virtual {p1, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method asn1Equals(Lorg/spongycastle/asn1/ASN1Primitive;)Z
    .locals 2
    .param p1, "o"    # Lorg/spongycastle/asn1/ASN1Primitive;

    .prologue
    .line 245
    instance-of v0, p1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x0

    .line 250
    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :goto_0
    return v0

    .restart local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    check-cast p1, Lorg/spongycastle/asn1/DERObjectIdentifier;

    .end local p1    # "o":Lorg/spongycastle/asn1/ASN1Primitive;
    iget-object v1, p1, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .line 230
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v0

    .line 232
    .local v0, "enc":[B
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->write(I)V

    .line 233
    array-length v1, v0

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1OutputStream;->writeLength(I)V

    .line 234
    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1OutputStream;->write([B)V

    .line 235
    return-void
.end method

.method encodedLength()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getBody()[B

    move-result-object v1

    array-length v0, v1

    .line 223
    .local v0, "length":I
    invoke-static {v0}, Lorg/spongycastle/asn1/StreamUtil;->calculateBodyLength(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    return v1
.end method

.method protected getBody()[B
    .locals 2

    .prologue
    .line 201
    iget-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    if-nez v1, :cond_0

    .line 203
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 205
    .local v0, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->doOutput(Ljava/io/ByteArrayOutputStream;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    .line 210
    .end local v0    # "bOut":Ljava/io/ByteArrayOutputStream;
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->body:[B

    return-object v1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/spongycastle/asn1/DERObjectIdentifier;->identifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method isConstructed()Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lorg/spongycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
