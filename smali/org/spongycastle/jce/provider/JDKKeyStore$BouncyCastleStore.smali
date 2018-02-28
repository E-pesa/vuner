.class public Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;
.super Lorg/spongycastle/jce/provider/JDKKeyStore;
.source "JDKKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/jce/provider/JDKKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BouncyCastleStore"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 922
    invoke-direct {p0}, Lorg/spongycastle/jce/provider/JDKKeyStore;-><init>()V

    return-void
.end method


# virtual methods
.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 14
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 932
    if-nez p1, :cond_1

    .line 996
    :cond_0
    return-void

    .line 937
    :cond_1
    new-instance v8, Ljava/io/DataInputStream;

    invoke-direct {v8, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 938
    .local v8, "dIn":Ljava/io/DataInputStream;
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 940
    .local v13, "version":I
    const/4 v0, 0x2

    if-eq v13, v0, :cond_2

    .line 942
    if-eqz v13, :cond_2

    const/4 v0, 0x1

    if-eq v13, v0, :cond_2

    .line 944
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wrong version of key store."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 948
    :cond_2
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [B

    .line 950
    .local v4, "salt":[B
    array-length v0, v4

    const/16 v2, 0x14

    if-eq v0, v2, :cond_3

    .line 952
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 955
    :cond_3
    invoke-virtual {v8, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 957
    invoke-virtual {v8}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 959
    .local v5, "iterationCount":I
    if-ltz v5, :cond_4

    const/16 v0, 0x1000

    if-le v5, v0, :cond_5

    .line 961
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Key store corrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 965
    :cond_5
    if-nez v13, :cond_6

    .line 967
    const-string v1, "OldPBEWithSHAAndTwofish-CBC"

    .line 974
    .local v1, "cipherAlg":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x2

    move-object v0, p0

    move-object/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 975
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 977
    .local v6, "cIn":Ljavax/crypto/CipherInputStream;
    new-instance v10, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v10}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    .line 978
    .local v10, "dig":Lorg/spongycastle/crypto/Digest;
    new-instance v9, Lorg/spongycastle/crypto/io/DigestInputStream;

    invoke-direct {v9, v6, v10}, Lorg/spongycastle/crypto/io/DigestInputStream;-><init>(Ljava/io/InputStream;Lorg/spongycastle/crypto/Digest;)V

    .line 980
    .local v9, "dgIn":Lorg/spongycastle/crypto/io/DigestInputStream;
    invoke-virtual {p0, v9}, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->loadStore(Ljava/io/InputStream;)V

    .line 983
    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v11, v0, [B

    .line 984
    .local v11, "hash":[B
    const/4 v0, 0x0

    invoke-interface {v10, v11, v0}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 988
    invoke-interface {v10}, Lorg/spongycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v12, v0, [B

    .line 989
    .local v12, "oldHash":[B
    invoke-static {v6, v12}, Lorg/spongycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    .line 991
    invoke-static {v11, v12}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 994
    new-instance v0, Ljava/io/IOException;

    const-string v2, "KeyStore integrity check failed."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 971
    .end local v1    # "cipherAlg":Ljava/lang/String;
    .end local v6    # "cIn":Ljavax/crypto/CipherInputStream;
    .end local v7    # "cipher":Ljavax/crypto/Cipher;
    .end local v9    # "dgIn":Lorg/spongycastle/crypto/io/DigestInputStream;
    .end local v10    # "dig":Lorg/spongycastle/crypto/Digest;
    .end local v11    # "hash":[B
    .end local v12    # "oldHash":[B
    :cond_6
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    .restart local v1    # "cipherAlg":Ljava/lang/String;
    goto :goto_0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 11
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1002
    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1003
    .local v8, "dOut":Ljava/io/DataOutputStream;
    const/16 v0, 0x14

    new-array v4, v0, [B

    .line 1004
    .local v4, "salt":[B
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/lit16 v0, v0, 0x3ff

    add-int/lit16 v5, v0, 0x400

    .line 1006
    .local v5, "iterationCount":I
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1008
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1009
    array-length v0, v4

    invoke-virtual {v8, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1010
    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 1011
    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1013
    const-string v1, "PBEWithSHAAndTwofish-CBC"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 1015
    .local v7, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v6, v8, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 1016
    .local v6, "cOut":Ljavax/crypto/CipherOutputStream;
    new-instance v9, Lorg/spongycastle/crypto/io/DigestOutputStream;

    new-instance v0, Lorg/spongycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lorg/spongycastle/crypto/digests/SHA1Digest;-><init>()V

    invoke-direct {v9, v0}, Lorg/spongycastle/crypto/io/DigestOutputStream;-><init>(Lorg/spongycastle/crypto/Digest;)V

    .line 1018
    .local v9, "dgOut":Lorg/spongycastle/crypto/io/DigestOutputStream;
    new-instance v0, Lorg/spongycastle/util/io/TeeOutputStream;

    invoke-direct {v0, v6, v9}, Lorg/spongycastle/util/io/TeeOutputStream;-><init>(Ljava/io/OutputStream;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/jce/provider/JDKKeyStore$BouncyCastleStore;->saveStore(Ljava/io/OutputStream;)V

    .line 1020
    invoke-virtual {v9}, Lorg/spongycastle/crypto/io/DigestOutputStream;->getDigest()[B

    move-result-object v10

    .line 1022
    .local v10, "dig":[B
    invoke-virtual {v6, v10}, Ljavax/crypto/CipherOutputStream;->write([B)V

    .line 1024
    invoke-virtual {v6}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 1025
    return-void
.end method
