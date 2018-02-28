.class public Lorg/spongycastle/crypto/tls/TlsBlockCipher;
.super Ljava/lang/Object;
.source "TlsBlockCipher.java"

# interfaces
.implements Lorg/spongycastle/crypto/tls/TlsCipher;


# instance fields
.field protected context:Lorg/spongycastle/crypto/tls/TlsClientContext;

.field protected decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

.field protected readMac:Lorg/spongycastle/crypto/tls/TlsMac;

.field protected writeMac:Lorg/spongycastle/crypto/tls/TlsMac;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/BlockCipher;Lorg/spongycastle/crypto/Digest;Lorg/spongycastle/crypto/Digest;I)V
    .locals 14
    .param p1, "context"    # Lorg/spongycastle/crypto/tls/TlsClientContext;
    .param p2, "encryptCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p3, "decryptCipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p4, "writeDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p5, "readDigest"    # Lorg/spongycastle/crypto/Digest;
    .param p6, "cipherKeySize"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    .line 40
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 41
    move-object/from16 v0, p3

    iput-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    .line 43
    mul-int/lit8 v1, p6, 0x2

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface/range {p3 .. p3}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int v13, v1, v2

    .line 47
    .local v13, "key_block_size":I
    invoke-static {p1, v13}, Lorg/spongycastle/crypto/tls/TlsUtils;->calculateKeyBlock(Lorg/spongycastle/crypto/tls/TlsClientContext;I)[B

    move-result-object v4

    .line 49
    .local v4, "key_block":[B
    const/4 v5, 0x0

    .line 52
    .local v5, "offset":I
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    move-object v2, p1

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/Digest;[BII)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 53
    invoke-interface/range {p4 .. p4}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v5, v1

    .line 54
    new-instance v1, Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    move-object v2, p1

    move-object/from16 v3, p5

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/crypto/tls/TlsMac;-><init>(Lorg/spongycastle/crypto/tls/TlsClientContext;Lorg/spongycastle/crypto/Digest;[BII)V

    iput-object v1, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    .line 55
    invoke-interface/range {p5 .. p5}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    add-int/2addr v5, v1

    .line 58
    const/4 v7, 0x1

    mul-int/lit8 v1, p6, 0x2

    add-int v12, v5, v1

    move-object v6, p0

    move-object/from16 v8, p2

    move-object v9, v4

    move/from16 v10, p6

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V

    .line 60
    add-int v5, v5, p6

    .line 61
    const/4 v7, 0x0

    add-int v1, v5, p6

    invoke-interface/range {p2 .. p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    add-int v12, v1, v2

    move-object v6, p0

    move-object/from16 v8, p3

    move-object v9, v4

    move/from16 v10, p6

    move v11, v5

    invoke-virtual/range {v6 .. v12}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V

    .line 64
    return-void
.end method


# virtual methods
.method protected chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I
    .locals 3
    .param p1, "r"    # Ljava/security/SecureRandom;
    .param p2, "max"    # I

    .prologue
    .line 220
    invoke-virtual {p1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    .line 221
    .local v1, "x":I
    invoke-virtual {p0, v1}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->lowestBitSet(I)I

    move-result v0

    .line 222
    .local v0, "n":I
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method public decodeCiphertext(S[BII)[B
    .locals 22
    .param p1, "type"    # S
    .param p2, "ciphertext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v19

    add-int/lit8 v14, v19, 0x1

    .line 114
    .local v14, "minLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 115
    .local v5, "blocksize":I
    const/4 v8, 0x0

    .line 120
    .local v8, "decrypterror":Z
    move/from16 v0, p4

    if-ge v0, v14, :cond_0

    .line 122
    new-instance v19, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v20, 0x32

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v19

    .line 128
    :cond_0
    rem-int v19, p4, v5

    if-eqz v19, :cond_1

    .line 130
    new-instance v19, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v20, 0x15

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v19

    .line 136
    :cond_1
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v10, v0, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->decryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    move-object/from16 v19, v0

    add-int v20, v10, p3

    add-int v21, v10, p3

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move/from16 v2, v20

    move-object/from16 v3, p2

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 136
    add-int/2addr v10, v5

    goto :goto_0

    .line 144
    :cond_2
    add-int v19, p3, p4

    add-int/lit8 v12, v19, -0x1

    .line 146
    .local v12, "lastByteOffset":I
    aget-byte v16, p2, v12

    .line 149
    .local v16, "paddingsizebyte":B
    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff

    .line 151
    .local v15, "paddingsize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v19

    sget-object v20, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    const/4 v11, 0x1

    .line 153
    .local v11, "isTls":Z
    :goto_1
    sub-int v13, p4, v14

    .line 154
    .local v13, "maxPaddingSize":I
    if-nez v11, :cond_3

    .line 156
    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 159
    :cond_3
    if-le v15, v13, :cond_7

    .line 161
    const/4 v8, 0x1

    .line 162
    const/4 v15, 0x0

    .line 188
    :cond_4
    :goto_2
    sub-int v19, p4, v14

    sub-int v18, v19, v15

    .line 189
    .local v18, "plaintextlength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v6

    .line 194
    .local v6, "calculatedMac":[B
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v7, v0, [B

    .line 195
    .local v7, "decryptedMac":[B
    add-int v19, p3, v18

    const/16 v20, 0x0

    array-length v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 198
    invoke-static {v6, v7}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v19

    if-nez v19, :cond_5

    .line 200
    const/4 v8, 0x1

    .line 206
    :cond_5
    if-eqz v8, :cond_9

    .line 208
    new-instance v19, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    const/16 v20, 0x14

    invoke-direct/range {v19 .. v20}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v19

    .line 151
    .end local v6    # "calculatedMac":[B
    .end local v7    # "decryptedMac":[B
    .end local v11    # "isTls":Z
    .end local v13    # "maxPaddingSize":I
    .end local v18    # "plaintextlength":I
    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    .line 164
    .restart local v11    # "isTls":Z
    .restart local v13    # "maxPaddingSize":I
    :cond_7
    if-eqz v11, :cond_4

    .line 170
    const/4 v9, 0x0

    .line 171
    .local v9, "diff":B
    sub-int v10, v12, v15

    :goto_3
    if-ge v10, v12, :cond_8

    .line 173
    aget-byte v19, p2, v10

    xor-int v19, v19, v16

    or-int v19, v19, v9

    move/from16 v0, v19

    int-to-byte v9, v0

    .line 171
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 175
    :cond_8
    if-eqz v9, :cond_4

    .line 178
    const/4 v8, 0x1

    .line 179
    const/4 v15, 0x0

    goto :goto_2

    .line 211
    .end local v9    # "diff":B
    .restart local v6    # "calculatedMac":[B
    .restart local v7    # "decryptedMac":[B
    .restart local v18    # "plaintextlength":I
    :cond_9
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 212
    .local v17, "plaintext":[B
    const/16 v19, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v17

    move/from16 v3, v19

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    return-object v17
.end method

.method public encodePlaintext(S[BII)[B
    .locals 17
    .param p1, "type"    # S
    .param p2, "plaintext"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    .line 77
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v15}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v5

    .line 78
    .local v5, "blocksize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v15

    add-int v15, v15, p4

    add-int/lit8 v15, v15, 0x1

    rem-int/2addr v15, v5

    sub-int v10, v5, v15

    .line 79
    .local v10, "minPaddingSize":I
    move v12, v10

    .line 81
    .local v12, "paddingSize":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v15}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getServerVersion()Lorg/spongycastle/crypto/tls/ProtocolVersion;

    move-result-object v15

    invoke-virtual {v15}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v15

    sget-object v16, Lorg/spongycastle/crypto/tls/ProtocolVersion;->TLSv10:Lorg/spongycastle/crypto/tls/ProtocolVersion;

    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/crypto/tls/ProtocolVersion;->getFullVersion()I

    move-result v16

    move/from16 v0, v16

    if-lt v15, v0, :cond_1

    const/4 v7, 0x1

    .line 83
    .local v7, "isTls":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 86
    rsub-int v15, v10, 0xff

    div-int v9, v15, v5

    .line 87
    .local v9, "maxExtraPadBlocks":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->context:Lorg/spongycastle/crypto/tls/TlsClientContext;

    invoke-interface {v15}, Lorg/spongycastle/crypto/tls/TlsClientContext;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v9}, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->chooseExtraPadBlocks(Ljava/security/SecureRandom;I)I

    move-result v4

    .line 88
    .local v4, "actualExtraPadBlocks":I
    mul-int v15, v4, v5

    add-int/2addr v12, v15

    .line 91
    .end local v4    # "actualExtraPadBlocks":I
    .end local v9    # "maxExtraPadBlocks":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    invoke-virtual {v15}, Lorg/spongycastle/crypto/tls/TlsMac;->getSize()I

    move-result v15

    add-int v15, v15, p4

    add-int/2addr v15, v12

    add-int/lit8 v14, v15, 0x1

    .line 92
    .local v14, "totalsize":I
    new-array v11, v14, [B

    .line 93
    .local v11, "outbuf":[B
    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v0, v1, v11, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    move/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Lorg/spongycastle/crypto/tls/TlsMac;->calculateMac(S[BII)[B

    move-result-object v8

    .line 95
    .local v8, "mac":[B
    const/4 v15, 0x0

    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, p4

    move/from16 v1, v16

    invoke-static {v8, v15, v11, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    array-length v15, v8

    add-int v13, p4, v15

    .line 97
    .local v13, "paddoffset":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-gt v6, v12, :cond_2

    .line 99
    add-int v15, v6, v13

    int-to-byte v0, v12

    move/from16 v16, v0

    aput-byte v16, v11, v15

    .line 97
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 81
    .end local v6    # "i":I
    .end local v7    # "isTls":Z
    .end local v8    # "mac":[B
    .end local v11    # "outbuf":[B
    .end local v13    # "paddoffset":I
    .end local v14    # "totalsize":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 101
    .restart local v6    # "i":I
    .restart local v7    # "isTls":Z
    .restart local v8    # "mac":[B
    .restart local v11    # "outbuf":[B
    .restart local v13    # "paddoffset":I
    .restart local v14    # "totalsize":I
    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v14, :cond_3

    .line 103
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->encryptCipher:Lorg/spongycastle/crypto/BlockCipher;

    invoke-interface {v15, v11, v6, v11, v6}, Lorg/spongycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    .line 101
    add-int/2addr v6, v5

    goto :goto_2

    .line 105
    :cond_3
    return-object v11
.end method

.method public getReadMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->readMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method public getWriteMac()Lorg/spongycastle/crypto/tls/TlsMac;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/TlsBlockCipher;->writeMac:Lorg/spongycastle/crypto/tls/TlsMac;

    return-object v0
.end method

.method protected initCipher(ZLorg/spongycastle/crypto/BlockCipher;[BIII)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "cipher"    # Lorg/spongycastle/crypto/BlockCipher;
    .param p3, "key_block"    # [B
    .param p4, "key_size"    # I
    .param p5, "key_offset"    # I
    .param p6, "iv_offset"    # I

    .prologue
    .line 69
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p3, p5, p4}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([BII)V

    .line 70
    .local v0, "key_parameter":Lorg/spongycastle/crypto/params/KeyParameter;
    new-instance v1, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-interface {p2}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v2

    invoke-direct {v1, v0, p3, p6, v2}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[BII)V

    .line 72
    .local v1, "parameters_with_iv":Lorg/spongycastle/crypto/params/ParametersWithIV;
    invoke-interface {p2, p1, v1}, Lorg/spongycastle/crypto/BlockCipher;->init(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 73
    return-void
.end method

.method protected lowestBitSet(I)I
    .locals 2
    .param p1, "x"    # I

    .prologue
    .line 227
    if-nez p1, :cond_1

    .line 229
    const/16 v0, 0x20

    .line 238
    :cond_0
    return v0

    .line 232
    :cond_1
    const/4 v0, 0x0

    .line 233
    .local v0, "n":I
    :goto_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 235
    add-int/lit8 v0, v0, 0x1

    .line 236
    shr-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
