.class public Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;
.super Ljava/lang/Object;
.source "DHKEKGenerator.java"

# interfaces
.implements Lorg/spongycastle/crypto/DerivationFunction;


# instance fields
.field private algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

.field private final digest:Lorg/spongycastle/crypto/Digest;

.field private keySize:I

.field private partyAInfo:[B

.field private z:[B


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0
    .param p1, "digest"    # Lorg/spongycastle/crypto/Digest;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    .line 33
    return-void
.end method

.method private integerToBytes(I)[B
    .locals 3
    .param p1, "keySize"    # I

    .prologue
    .line 133
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 135
    .local v0, "val":[B
    const/4 v1, 0x0

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 136
    const/4 v1, 0x1

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 137
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 138
    const/4 v1, 0x3

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 140
    return-object v0
.end method


# virtual methods
.method public generateBytes([BII)I
    .locals 20
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p1

    array-length v15, v0

    sub-int v15, v15, p3

    move/from16 v0, p2

    if-ge v15, v0, :cond_0

    .line 55
    new-instance v15, Lorg/spongycastle/crypto/DataLengthException;

    const-string v16, "output buffer too small"

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 58
    :cond_0
    move/from16 v0, p3

    int-to-long v10, v0

    .line 59
    .local v10, "oBytes":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v15}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v12

    .line 67
    .local v12, "outLen":I
    const-wide v16, 0x1ffffffffL

    cmp-long v15, v10, v16

    if-lez v15, :cond_1

    .line 69
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "Output length too large"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 72
    :cond_1
    int-to-long v0, v12

    move-wide/from16 v16, v0

    add-long v16, v16, v10

    const-wide/16 v18, 0x1

    sub-long v16, v16, v18

    int-to-long v0, v12

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v4, v0

    .line 74
    .local v4, "cThreshold":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v15}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v15

    new-array v6, v15, [B

    .line 76
    .local v6, "dig":[B
    const/4 v5, 0x1

    .line 78
    .local v5, "counter":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 80
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-interface/range {v15 .. v18}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 83
    new-instance v13, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v13}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 85
    .local v13, "v1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v14, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 87
    .local v14, "v2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v14, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 88
    new-instance v15, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v14, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 90
    new-instance v15, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v15, v14}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v13, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 92
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    if-eqz v15, :cond_2

    .line 94
    new-instance v15, Lorg/spongycastle/asn1/DERTaggedObject;

    const/16 v16, 0x1

    const/16 v17, 0x0

    new-instance v18, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v15 .. v18}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v13, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 97
    :cond_2
    new-instance v15, Lorg/spongycastle/asn1/DERTaggedObject;

    const/16 v16, 0x1

    const/16 v17, 0x2

    new-instance v18, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->integerToBytes(I)[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v15 .. v18}, Lorg/spongycastle/asn1/DERTaggedObject;-><init>(ZILorg/spongycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v13, v15}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 101
    :try_start_0
    new-instance v15, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v15, v13}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v16, "DER"

    invoke-virtual/range {v15 .. v16}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v9

    .line 103
    .local v9, "other":[B
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/16 v16, 0x0

    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v15, v9, v0, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v6, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 112
    move/from16 v0, p3

    if-le v0, v12, :cond_3

    .line 114
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v6, v15, v0, v1, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    add-int p2, p2, v12

    .line 116
    sub-int p3, p3, v12

    .line 123
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 78
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 105
    .end local v9    # "other":[B
    :catch_0
    move-exception v7

    .line 107
    .local v7, "e":Ljava/io/IOException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "unable to encode parameter info: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 120
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v9    # "other":[B
    :cond_3
    const/4 v15, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v6, v15, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 126
    .end local v9    # "other":[B
    .end local v13    # "v1":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v14    # "v2":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v15}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 128
    return p3
.end method

.method public getDigest()Lorg/spongycastle/crypto/Digest;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->digest:Lorg/spongycastle/crypto/Digest;

    return-object v0
.end method

.method public init(Lorg/spongycastle/crypto/DerivationParameters;)V
    .locals 2
    .param p1, "param"    # Lorg/spongycastle/crypto/DerivationParameters;

    .prologue
    .line 37
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;

    .line 39
    .local v0, "params":Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->algorithm:Lorg/spongycastle/asn1/DERObjectIdentifier;

    .line 40
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getKeySize()I

    move-result v1

    iput v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->keySize:I

    .line 41
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getZ()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->z:[B

    .line 42
    invoke-virtual {v0}, Lorg/spongycastle/crypto/agreement/kdf/DHKDFParameters;->getExtraInfo()[B

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/crypto/agreement/kdf/DHKEKGenerator;->partyAInfo:[B

    .line 43
    return-void
.end method
