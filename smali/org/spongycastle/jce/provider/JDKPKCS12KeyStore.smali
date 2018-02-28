.class public Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKPKCS12KeyStore.java"

# interfaces
.implements Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lorg/spongycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/spongycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore3DES;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$DefPKCS12KeyStore;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore3DES;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$BCPKCS12KeyStore;,
        Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field private static final SALT_SIZE:I = 0x14

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final bcProvider:Ljava/security/Provider;


# instance fields
.field private certAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private certFact:Ljava/security/cert/CertificateFactory;

.field private certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private chainCerts:Ljava/util/Hashtable;

.field private keyAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private keyCerts:Ljava/util/Hashtable;

.field private keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

.field private localIds:Ljava/util/Hashtable;

.field protected random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    sput-object v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 4
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "keyAlgorithm"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "certAlgorithm"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 89
    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 90
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 91
    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-direct {v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 92
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 93
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 111
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 163
    iput-object p2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 164
    iput-object p3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 168
    if-eqz p1, :cond_0

    .line 170
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1, p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t create cert factory - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 1
    .param p0, "x0"    # Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;
    .param p1, "x1"    # Ljava/security/PublicKey;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    return-object v0
.end method

.method private static calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B
    .locals 7
    .param p0, "oid"    # Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .param p1, "salt"    # [B
    .param p2, "itCount"    # I
    .param p3, "password"    # [C
    .param p4, "wrongPkcs12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1528
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    .line 1529
    .local v2, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 1530
    .local v0, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 1531
    .local v4, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v2, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 1532
    .local v1, "key":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    invoke-virtual {v1, p4}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 1534
    invoke-virtual {p0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 1535
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 1536
    invoke-virtual {v3, p5}, Ljavax/crypto/Mac;->update([B)V

    .line 1537
    invoke-virtual {v3}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v5

    return-object v5
.end method

.method private createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;
    .locals 4
    .param p1, "pubKey"    # Ljava/security/PublicKey;

    .prologue
    .line 188
    :try_start_0
    new-instance v1, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-static {v2}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 191
    .local v1, "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v2, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    invoke-direct {v2, v1}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;-><init>(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 193
    .end local v1    # "info":Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error creating key"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doStore(Ljava/io/OutputStream;[CZ)V
    .locals 61
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .param p3, "useDEREncoding"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    if-nez p2, :cond_0

    .line 1135
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1141
    :cond_0
    new-instance v47, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v47 .. v47}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1144
    .local v47, "keyS":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v50

    .line 1146
    .local v50, "ks":Ljava/util/Enumeration;
    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1148
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v45, v0

    .line 1150
    .local v45, "kSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1152
    invoke-interface/range {v50 .. v50}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1153
    .local v53, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/security/PrivateKey;

    .line 1154
    .local v58, "privKey":Ljava/security/PrivateKey;
    new-instance v44, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1155
    .local v44, "kParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    move-object/from16 v2, v44

    move-object/from16 v3, p2

    invoke-virtual {v0, v4, v1, v2, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B

    move-result-object v41

    .line 1156
    .local v41, "kBytes":[B
    new-instance v39, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1157
    .local v39, "kAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v42, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1158
    .local v42, "kInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    const/16 v18, 0x0

    .line 1159
    .local v18, "attrSet":Z
    new-instance v43, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1161
    .local v43, "kName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v58

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_4

    move-object/from16 v21, v58

    .line 1163
    check-cast v21, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1167
    .local v21, "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1168
    .local v54, "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_1

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1170
    :cond_1
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1176
    :cond_2
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1178
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1180
    .local v32, "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1183
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    :cond_3
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1185
    .local v35, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1187
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1188
    .local v55, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1190
    .local v46, "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v46

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1191
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1193
    const/16 v18, 0x1

    .line 1195
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_1

    .line 1199
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_4
    if-nez v18, :cond_5

    .line 1204
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1205
    .restart local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v32

    .line 1207
    .restart local v32    # "ct":Ljava/security/cert/Certificate;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1208
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1210
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1212
    new-instance v46, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v46 .. v46}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1214
    .restart local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1215
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1217
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v46

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1220
    .end local v32    # "ct":Ljava/security/cert/Certificate;
    .end local v46    # "kSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_5
    new-instance v40, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v42 .. v42}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v43

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v40

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1221
    .local v40, "kBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto/16 :goto_0

    .line 1224
    .end local v18    # "attrSet":Z
    .end local v39    # "kAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v40    # "kBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v41    # "kBytes":[B
    .end local v42    # "kInfo":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "kName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v44    # "kParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .end local v45    # "kSalt":[B
    .end local v53    # "name":Ljava/lang/String;
    .end local v58    # "privKey":Ljava/security/PrivateKey;
    :cond_6
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v47

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v48

    .line 1225
    .local v48, "keySEncoded":[B
    new-instance v49, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v49

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    .line 1230
    .local v49, "keyString":Lorg/spongycastle/asn1/BERConstructedOctetString;
    const/16 v4, 0x14

    new-array v0, v4, [B

    move-object/from16 v26, v0

    .line 1232
    .local v26, "cSalt":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1234
    new-instance v30, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v30 .. v30}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1235
    .local v30, "certSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    new-instance v25, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    const/16 v4, 0x400

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    .line 1236
    .local v25, "cParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v6, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certAlgorithm:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v25 .. v25}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-direct {v6, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1237
    .local v6, "cAlgId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v34, Ljava/util/Hashtable;

    invoke-direct/range {v34 .. v34}, Ljava/util/Hashtable;-><init>()V

    .line 1239
    .local v34, "doneCerts":Ljava/util/Hashtable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1240
    .local v31, "cs":Ljava/util/Enumeration;
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1244
    :try_start_0
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Ljava/lang/String;

    .line 1245
    .restart local v53    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v27

    .line 1246
    .local v27, "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1247
    .local v22, "cAttrSet":Z
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1250
    .local v23, "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1252
    .local v36, "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_a

    .line 1254
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1258
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1259
    .restart local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_7

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1261
    :cond_7
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1267
    :cond_8
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    if-nez v4, :cond_9

    .line 1269
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1272
    :cond_9
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1274
    .restart local v35    # "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1276
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1277
    .restart local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1279
    .local v37, "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1280
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1281
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1283
    const/16 v22, 0x1

    .line 1284
    goto :goto_3

    .line 1287
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_a
    if-nez v22, :cond_b

    .line 1289
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1291
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1292
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1293
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1295
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1297
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1298
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v53

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1300
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1303
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_b
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1305
    .local v60, "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1307
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1309
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v53    # "name":Ljava/lang/String;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :catch_0
    move-exception v35

    .line 1311
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1315
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1316
    :cond_d
    :goto_4
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1320
    :try_start_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1321
    .local v29, "certId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1322
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    const/16 v22, 0x0

    .line 1324
    .restart local v22    # "cAttrSet":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_d

    .line 1329
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1332
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1334
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_11

    .line 1336
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1340
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v54

    check-cast v54, Lorg/spongycastle/asn1/DERBMPString;

    .line 1341
    .restart local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    if-eqz v54, :cond_e

    invoke-virtual/range {v54 .. v54}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1343
    :cond_e
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v4, v5}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1346
    :cond_f
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1348
    .local v35, "e":Ljava/util/Enumeration;
    :cond_10
    :goto_5
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1350
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1356
    .restart local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1361
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1363
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1364
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1365
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1367
    const/16 v22, 0x1

    .line 1368
    goto :goto_5

    .line 1371
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v54    # "nm":Lorg/spongycastle/asn1/DERBMPString;
    .end local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :cond_11
    if-nez v22, :cond_12

    .line 1373
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1375
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1376
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    new-instance v5, Lorg/spongycastle/asn1/DERBMPString;

    move-object/from16 v0, v29

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/DERBMPString;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1378
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1381
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_12
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1383
    .restart local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1385
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 1387
    .end local v22    # "cAttrSet":Z
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Ljava/lang/String;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :catch_1
    move-exception v35

    .line 1389
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1393
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v31

    .line 1394
    :cond_14
    :goto_6
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1398
    :try_start_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    .line 1399
    .local v29, "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/security/cert/Certificate;

    .line 1401
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_14

    .line 1406
    new-instance v23, Lorg/spongycastle/asn1/pkcs/CertBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DEROctetString;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v0, v23

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/CertBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1409
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    new-instance v36, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v36 .. v36}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1411
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v27

    instance-of v4, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v4, :cond_16

    .line 1413
    move-object/from16 v0, v27

    check-cast v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    move-object/from16 v21, v0

    .line 1414
    .restart local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    invoke-interface/range {v21 .. v21}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttributeKeys()Ljava/util/Enumeration;

    move-result-object v35

    .line 1416
    .local v35, "e":Ljava/util/Enumeration;
    :cond_15
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1418
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1424
    .restart local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    sget-object v4, Lorg/spongycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1429
    new-instance v37, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1431
    .restart local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    move-object/from16 v0, v37

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1432
    new-instance v4, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v21

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1Encodable;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1433
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v37

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 1441
    .end local v21    # "bagAttrs":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v37    # "fSeq":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v55    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    :catch_2
    move-exception v35

    .line 1443
    .local v35, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error encoding certificate: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1437
    .end local v35    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .restart local v27    # "cert":Ljava/security/cert/Certificate;
    .restart local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .restart local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    :cond_16
    :try_start_3
    new-instance v60, Lorg/spongycastle/asn1/pkcs/SafeBag;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/CertBag;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v5

    new-instance v7, Lorg/spongycastle/asn1/DERSet;

    move-object/from16 v0, v36

    invoke-direct {v7, v0}, Lorg/spongycastle/asn1/DERSet;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    move-object/from16 v0, v60

    invoke-direct {v0, v4, v5, v7}, Lorg/spongycastle/asn1/pkcs/SafeBag;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;Lorg/spongycastle/asn1/ASN1Set;)V

    .line 1439
    .restart local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1EncodableVector;->add(Lorg/spongycastle/asn1/ASN1Encodable;)V
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 1447
    .end local v23    # "cBag":Lorg/spongycastle/asn1/pkcs/CertBag;
    .end local v27    # "cert":Ljava/security/cert/Certificate;
    .end local v29    # "certId":Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;
    .end local v36    # "fName":Lorg/spongycastle/asn1/ASN1EncodableVector;
    .end local v60    # "sBag":Lorg/spongycastle/asn1/pkcs/SafeBag;
    :cond_17
    new-instance v4, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Lorg/spongycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v9

    .line 1448
    .local v9, "certSeqEncoded":[B
    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v28

    .line 1449
    .local v28, "certBytes":[B
    new-instance v24, Lorg/spongycastle/asn1/pkcs/EncryptedData;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v28

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v5}, Lorg/spongycastle/asn1/pkcs/EncryptedData;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1451
    .local v24, "cInfo":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    const/4 v4, 0x2

    new-array v0, v4, [Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-object/from16 v38, v0

    const/4 v4, 0x0

    new-instance v5, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v49

    invoke-direct {v5, v7, v0}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v5, v38, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v7, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    aput-object v5, v38, v4

    .line 1457
    .local v38, "info":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    new-instance v19, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;-><init>([Lorg/spongycastle/asn1/pkcs/ContentInfo;)V

    .line 1459
    .local v19, "auth":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1461
    .local v20, "bOut":Ljava/io/ByteArrayOutputStream;
    if-eqz p3, :cond_18

    .line 1463
    new-instance v17, Lorg/spongycastle/asn1/DEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1470
    .local v17, "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    :goto_8
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1472
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v57

    .line 1474
    .local v57, "pkg":[B
    new-instance v52, Lorg/spongycastle/asn1/pkcs/ContentInfo;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/BERConstructedOctetString;

    move-object/from16 v0, v57

    invoke-direct {v5, v0}, Lorg/spongycastle/asn1/BERConstructedOctetString;-><init>([B)V

    move-object/from16 v0, v52

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1479
    .local v52, "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    const/16 v4, 0x14

    new-array v11, v4, [B

    .line 1480
    .local v11, "mSalt":[B
    const/16 v12, 0x400

    .line 1482
    .local v12, "itCount":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1484
    invoke-virtual/range {v52 .. v52}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v15

    .line 1490
    .local v15, "data":[B
    :try_start_4
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const/4 v14, 0x0

    move-object/from16 v13, p2

    invoke-static/range {v10 .. v15}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v59

    .line 1492
    .local v59, "res":[B
    new-instance v16, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->id_SHA1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    new-instance v5, Lorg/spongycastle/asn1/DERNull;

    invoke-direct {v5}, Lorg/spongycastle/asn1/DERNull;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v0, v4, v5}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1493
    .local v16, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v33, Lorg/spongycastle/asn1/x509/DigestInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v16

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x509/DigestInfo;-><init>(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)V

    .line 1495
    .local v33, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    new-instance v51, Lorg/spongycastle/asn1/pkcs/MacData;

    move-object/from16 v0, v51

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v11, v12}, Lorg/spongycastle/asn1/pkcs/MacData;-><init>(Lorg/spongycastle/asn1/x509/DigestInfo;[BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1505
    .local v51, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    new-instance v56, Lorg/spongycastle/asn1/pkcs/Pfx;

    move-object/from16 v0, v56

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/pkcs/Pfx;-><init>(Lorg/spongycastle/asn1/pkcs/ContentInfo;Lorg/spongycastle/asn1/pkcs/MacData;)V

    .line 1507
    .local v56, "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    if-eqz p3, :cond_19

    .line 1509
    new-instance v17, Lorg/spongycastle/asn1/DEROutputStream;

    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1516
    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    :goto_9
    move-object/from16 v0, v17

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/DEROutputStream;->writeObject(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1517
    return-void

    .line 1467
    .end local v11    # "mSalt":[B
    .end local v12    # "itCount":I
    .end local v15    # "data":[B
    .end local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    .end local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .end local v51    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .end local v52    # "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .end local v56    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    .end local v57    # "pkg":[B
    .end local v59    # "res":[B
    :cond_18
    new-instance v17, Lorg/spongycastle/asn1/BEROutputStream;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    goto/16 :goto_8

    .line 1497
    .restart local v11    # "mSalt":[B
    .restart local v12    # "itCount":I
    .restart local v15    # "data":[B
    .restart local v52    # "mainInfo":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .restart local v57    # "pkg":[B
    :catch_3
    move-exception v35

    .line 1499
    .local v35, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1513
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .restart local v51    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .restart local v56    # "pfx":Lorg/spongycastle/asn1/pkcs/Pfx;
    .restart local v59    # "res":[B
    :cond_19
    new-instance v17, Lorg/spongycastle/asn1/BEROutputStream;

    .end local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/BEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .restart local v17    # "asn1Out":Lorg/spongycastle/asn1/DEROutputStream;
    goto :goto_9
.end method


# virtual methods
.method protected cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B
    .locals 13
    .param p1, "forEncryption"    # Z
    .param p2, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .param p5, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, "algorithm":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v8

    .line 624
    .local v8, "pbeParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 628
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 629
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 632
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    .line 634
    .local v5, "key":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    move/from16 v0, p4

    invoke-virtual {v5, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 636
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 637
    .local v2, "cipher":Ljavax/crypto/Cipher;
    if-eqz p1, :cond_0

    const/4 v7, 0x1

    .line 638
    .local v7, "mode":I
    :goto_0
    invoke-virtual {v2, v7, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 639
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    return-object v10

    .line 637
    .end local v7    # "mode":I
    :cond_0
    const/4 v7, 0x2

    goto :goto_0

    .line 641
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "key":Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    :catch_0
    move-exception v4

    .line 643
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception decrypting data - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 5

    .prologue
    .line 207
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 209
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 210
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 216
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 221
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 225
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    return-object v3
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Key;

    .line 244
    .local v2, "k":Ljava/security/Key;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 246
    .local v0, "c":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 248
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_0
    if-eqz v2, :cond_2

    .line 253
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 256
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 258
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    if-eqz v0, :cond_2

    .line 260
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v4, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 266
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such entry as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :cond_3
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 276
    if-nez p1, :cond_0

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null alias passed to getCertificate."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_0
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v2, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 286
    .local v0, "c":Ljava/security/cert/Certificate;
    if-nez v0, :cond_1

    .line 288
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 289
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 291
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .line 299
    .end local v1    # "id":Ljava/lang/String;
    .restart local v0    # "c":Ljava/security/cert/Certificate;
    :cond_1
    :goto_0
    return-object v0

    .line 295
    .restart local v1    # "id":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "c":Ljava/security/cert/Certificate;
    check-cast v0, Ljava/security/cert/Certificate;

    .restart local v0    # "c":Ljava/security/cert/Certificate;
    goto :goto_0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 5
    .param p1, "cert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 305
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 306
    .local v0, "c":Ljava/util/Enumeration;
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 308
    .local v1, "k":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 311
    .local v3, "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    .local v2, "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :goto_0
    return-object v2

    .line 319
    :cond_1
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 320
    iget-object v4, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 322
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/Certificate;

    .line 325
    .restart local v3    # "tc":Ljava/security/cert/Certificate;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 327
    .restart local v2    # "ta":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 333
    .end local v2    # "ta":Ljava/lang/String;
    .end local v3    # "tc":Ljava/security/cert/Certificate;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 20
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 341
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "null alias passed to getCertificateChain."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 344
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 346
    const/4 v7, 0x0

    .line 437
    :cond_1
    :goto_0
    return-object v7

    .line 349
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 351
    .local v6, "c":Ljava/security/cert/Certificate;
    if-eqz v6, :cond_8

    .line 353
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 355
    .local v9, "cs":Ljava/util/Vector;
    :goto_1
    if-eqz v6, :cond_7

    move-object/from16 v16, v6

    .line 357
    check-cast v16, Ljava/security/cert/X509Certificate;

    .line 358
    .local v16, "x509c":Ljava/security/cert/X509Certificate;
    const/4 v13, 0x0

    .line 360
    .local v13, "nextC":Ljava/security/cert/Certificate;
    sget-object v17, Lorg/spongycastle/asn1/x509/X509Extensions;->AuthorityKeyIdentifier:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 361
    .local v5, "bytes":[B
    if-eqz v5, :cond_3

    .line 365
    :try_start_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    invoke-direct {v3, v5}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 367
    .local v3, "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual/range {v17 .. v17}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    .line 368
    .local v4, "authBytes":[B
    new-instance v3, Lorg/spongycastle/asn1/ASN1InputStream;

    .end local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-direct {v3, v4}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 370
    .restart local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v17

    check-cast v17, Lorg/spongycastle/asn1/ASN1Sequence;

    invoke-static/range {v17 .. v17}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v12

    .line 371
    .local v12, "id":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v17

    if-eqz v17, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    new-instance v18, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {v12}, Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;[B)V

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    check-cast v13, Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v3    # "aIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v4    # "authBytes":[B
    .end local v12    # "id":Lorg/spongycastle/asn1/x509/AuthorityKeyIdentifier;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_3
    if-nez v13, :cond_5

    .line 388
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v11

    .line 389
    .local v11, "i":Ljava/security/Principal;
    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    .line 391
    .local v14, "s":Ljava/security/Principal;
    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v10

    .line 395
    .local v10, "e":Ljava/util/Enumeration;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 398
    .local v8, "crt":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v15

    .line 399
    .local v15, "sub":Ljava/security/Principal;
    invoke-virtual {v15, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 403
    :try_start_1
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    move-object v13, v8

    .line 416
    .end local v8    # "crt":Ljava/security/cert/X509Certificate;
    .end local v10    # "e":Ljava/util/Enumeration;
    .end local v11    # "i":Ljava/security/Principal;
    .end local v14    # "s":Ljava/security/Principal;
    .end local v15    # "sub":Ljava/security/Principal;
    :cond_5
    invoke-virtual {v9, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 417
    if-eq v13, v6, :cond_6

    .line 419
    move-object v6, v13

    goto/16 :goto_1

    .line 377
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v10

    .line 379
    .local v10, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/RuntimeException;

    invoke-virtual {v10}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 423
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 427
    .end local v5    # "bytes":[B
    .end local v13    # "nextC":Ljava/security/cert/Certificate;
    .end local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v7, v0, [Ljava/security/cert/Certificate;

    .line 429
    .local v7, "certChain":[Ljava/security/cert/Certificate;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v7

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v11, v0, :cond_1

    .line 431
    invoke-virtual {v9, v11}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/Certificate;

    aput-object v17, v7, v11

    .line 429
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 437
    .end local v7    # "certChain":[Ljava/security/cert/Certificate;
    .end local v9    # "cs":Ljava/util/Vector;
    .end local v11    # "i":I
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 407
    .restart local v5    # "bytes":[B
    .restart local v8    # "crt":Ljava/security/cert/X509Certificate;
    .restart local v9    # "cs":Ljava/util/Vector;
    .local v10, "e":Ljava/util/Enumeration;
    .local v11, "i":Ljava/security/Principal;
    .restart local v13    # "nextC":Ljava/security/cert/Certificate;
    .restart local v14    # "s":Ljava/security/Principal;
    .restart local v15    # "sub":Ljava/security/Principal;
    .restart local v16    # "x509c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v17

    goto :goto_2
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 442
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 450
    if-nez p1, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null alias passed to getKey."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Key;

    return-object v0
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 54
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    if-nez p1, :cond_1

    .line 1087
    :cond_0
    return-void

    .line 657
    :cond_1
    if-nez p2, :cond_2

    .line 659
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v6, "No password supplied for PKCS#12 KeyStore."

    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 662
    :cond_2
    new-instance v25, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 664
    .local v25, "bufIn":Ljava/io/BufferedInputStream;
    const/16 v3, 0xa

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 666
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->read()I

    move-result v38

    .line 668
    .local v38, "head":I
    const/16 v3, 0x30

    move/from16 v0, v38

    if-eq v0, v3, :cond_3

    .line 670
    new-instance v3, Ljava/io/IOException;

    const-string v6, "stream does not represent a PKCS12 key store"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 673
    :cond_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/BufferedInputStream;->reset()V

    .line 675
    new-instance v22, Lorg/spongycastle/asn1/ASN1InputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 676
    .local v22, "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v46

    check-cast v46, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 677
    .local v46, "obj":Lorg/spongycastle/asn1/ASN1Sequence;
    invoke-static/range {v46 .. v46}, Lorg/spongycastle/asn1/pkcs/Pfx;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/Pfx;

    move-result-object v23

    .line 678
    .local v23, "bag":Lorg/spongycastle/asn1/pkcs/Pfx;
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getAuthSafe()Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v40

    .line 679
    .local v40, "info":Lorg/spongycastle/asn1/pkcs/ContentInfo;
    new-instance v30, Ljava/util/Vector;

    invoke-direct/range {v30 .. v30}, Ljava/util/Vector;-><init>()V

    .line 680
    .local v30, "chain":Ljava/util/Vector;
    const/16 v53, 0x0

    .line 681
    .local v53, "unmarkedKey":Z
    const/4 v13, 0x0

    .line 683
    .local v13, "wrongPKCS12Zero":Z
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getMacData()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 685
    invoke-virtual/range {v23 .. v23}, Lorg/spongycastle/asn1/pkcs/Pfx;->getMacData()Lorg/spongycastle/asn1/pkcs/MacData;

    move-result-object v44

    .line 686
    .local v44, "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/pkcs/MacData;->getMac()Lorg/spongycastle/asn1/x509/DigestInfo;

    move-result-object v33

    .line 687
    .local v33, "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/DigestInfo;->getAlgorithmId()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v16

    .line 688
    .local v16, "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/pkcs/MacData;->getSalt()[B

    move-result-object v4

    .line 689
    .local v4, "salt":[B
    invoke-virtual/range {v44 .. v44}, Lorg/spongycastle/asn1/pkcs/MacData;->getIterationCount()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 691
    .local v5, "itCount":I
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    .line 695
    .local v8, "data":[B
    :try_start_0
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x0

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 696
    .local v50, "res":[B
    invoke-virtual/range {v33 .. v33}, Lorg/spongycastle/asn1/x509/DigestInfo;->getDigest()[B

    move-result-object v34

    .line 698
    .local v34, "dig":[B
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_6

    .line 700
    move-object/from16 v0, p2

    array-length v3, v0

    if-lez v3, :cond_4

    .line 702
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 716
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_0
    move-exception v35

    .line 718
    .local v35, "e":Ljava/io/IOException;
    throw v35

    .line 706
    .end local v35    # "e":Ljava/io/IOException;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v3 .. v8}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->calculatePbeMac(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[BI[CZ[B)[B

    move-result-object v50

    .line 708
    move-object/from16 v0, v50

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 710
    new-instance v3, Ljava/io/IOException;

    const-string v6, "PKCS12 key store mac invalid - wrong password or corrupted file."

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    .end local v34    # "dig":[B
    .end local v50    # "res":[B
    :catch_1
    move-exception v35

    .line 722
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error constructing MAC: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 713
    .end local v35    # "e":Ljava/lang/Exception;
    .restart local v34    # "dig":[B
    .restart local v50    # "res":[B
    :cond_5
    const/4 v13, 0x1

    .line 726
    .end local v4    # "salt":[B
    .end local v5    # "itCount":I
    .end local v8    # "data":[B
    .end local v16    # "algId":Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33    # "dInfo":Lorg/spongycastle/asn1/x509/DigestInfo;
    .end local v34    # "dig":[B
    .end local v44    # "mData":Lorg/spongycastle/asn1/pkcs/MacData;
    .end local v50    # "res":[B
    :cond_6
    new-instance v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 727
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    .line 729
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 731
    new-instance v22, Lorg/spongycastle/asn1/ASN1InputStream;

    .end local v22    # "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v40 .. v40}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 733
    .restart local v22    # "bIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;

    move-result-object v20

    .line 734
    .local v20, "authSafe":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;->getContentInfo()[Lorg/spongycastle/asn1/pkcs/ContentInfo;

    move-result-object v26

    .line 736
    .local v26, "c":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    const/16 v39, 0x0

    .local v39, "i":I
    :goto_0
    move-object/from16 v0, v26

    array-length v3, v0

    move/from16 v0, v39

    if-eq v0, v3, :cond_22

    .line 738
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->data:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 740
    new-instance v32, Lorg/spongycastle/asn1/ASN1InputStream;

    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 741
    .local v32, "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    invoke-virtual/range {v32 .. v32}, Lorg/spongycastle/asn1/ASN1InputStream;->readObject()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 743
    .local v51, "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .local v41, "j":I
    :goto_1
    invoke-virtual/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 745
    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-result-object v21

    .line 746
    .local v21, "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 748
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v36

    .line 749
    .local v36, "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .local v49, "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 754
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 755
    .local v24, "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 756
    .local v17, "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 758
    .local v43, "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 760
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 761
    .local v35, "e":Ljava/util/Enumeration;
    :cond_7
    :goto_2
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 763
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 764
    .local v52, "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 765
    .local v15, "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 766
    .local v19, "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 768
    .local v18, "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 770
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    check-cast v18, Lorg/spongycastle/asn1/ASN1Primitive;

    .line 772
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 773
    .local v37, "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_8

    .line 776
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 778
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_8
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 788
    .end local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_9
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 790
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 793
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_a
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v43, v18

    .line 795
    check-cast v43, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_2

    .line 800
    .end local v15    # "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_b
    if-eqz v43, :cond_d

    .line 802
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 804
    .local v45, "name":Ljava/lang/String;
    if-nez v17, :cond_c

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 743
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :goto_3
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 810
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .restart local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .restart local v45    # "name":Ljava/lang/String;
    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 815
    .end local v45    # "name":Ljava/lang/String;
    :cond_d
    const/16 v53, 0x1

    .line 816
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v6, "unmarked"

    move-object/from16 v0, v49

    invoke-virtual {v3, v6, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 819
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_e
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 821
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3

    .line 825
    :cond_f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in data "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 826
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 830
    .end local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v32    # "dIn":Lorg/spongycastle/asn1/ASN1InputStream;
    .end local v41    # "j":I
    .end local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_10
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->encryptedData:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 832
    aget-object v3, v26, v39

    invoke-virtual {v3}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedData;

    move-result-object v31

    .line 833
    .local v31, "d":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    const/4 v10, 0x0

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v11

    invoke-virtual/range {v31 .. v31}, Lorg/spongycastle/asn1/pkcs/EncryptedData;->getContent()Lorg/spongycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v14

    move-object/from16 v9, p0

    move-object/from16 v12, p2

    invoke-virtual/range {v9 .. v14}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->cryptData(ZLorg/spongycastle/asn1/x509/AlgorithmIdentifier;[CZ[B)[B

    move-result-object v47

    .line 835
    .local v47, "octets":[B
    invoke-static/range {v47 .. v47}, Lorg/spongycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v51

    check-cast v51, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 837
    .restart local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/16 v41, 0x0

    .restart local v41    # "j":I
    :goto_4
    invoke-virtual/range {v51 .. v51}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    move/from16 v0, v41

    if-eq v0, v3, :cond_21

    .line 839
    move-object/from16 v0, v51

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/SafeBag;

    move-result-object v21

    .line 841
    .restart local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 843
    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 837
    :goto_5
    add-int/lit8 v41, v41, 0x1

    goto :goto_4

    .line 845
    :cond_11
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs8ShroudedKeyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 847
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;

    move-result-object v36

    .line 848
    .restart local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptionAlgorithm()Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;->getEncryptedData()[B

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v6, v1, v13}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 853
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 854
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 855
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 857
    .restart local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 858
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_12
    :goto_6
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 860
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 861
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 862
    .restart local v15    # "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 863
    .restart local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 865
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 867
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    check-cast v18, Lorg/spongycastle/asn1/ASN1Primitive;

    .line 869
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 870
    .restart local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_13

    .line 873
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 875
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 881
    :cond_13
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 885
    .end local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_14
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 887
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 888
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 890
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_15
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object/from16 v43, v18

    .line 892
    check-cast v43, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_6

    .line 896
    .end local v15    # "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_16
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 898
    .restart local v45    # "name":Ljava/lang/String;
    if-nez v17, :cond_17

    .line 900
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 904
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 907
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v36    # "eIn":Lorg/spongycastle/asn1/pkcs/EncryptedPrivateKeyInfo;
    .end local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_18
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyBag:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 909
    new-instance v42, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 910
    .local v42, "kInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-static/range {v42 .. v42}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->getPrivateKey(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v49

    .restart local v49    # "privKey":Ljava/security/PrivateKey;
    move-object/from16 v24, v49

    .line 915
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 916
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    const/16 v17, 0x0

    .line 917
    .restart local v17    # "alias":Ljava/lang/String;
    const/16 v43, 0x0

    .line 919
    .restart local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 920
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_19
    :goto_7
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 922
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 923
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v15

    check-cast v15, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 924
    .restart local v15    # "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v19

    check-cast v19, Lorg/spongycastle/asn1/ASN1Set;

    .line 925
    .restart local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    const/16 v18, 0x0

    .line 927
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-lez v3, :cond_1b

    .line 929
    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    check-cast v18, Lorg/spongycastle/asn1/ASN1Primitive;

    .line 931
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 932
    .restart local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_1a

    .line 935
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 937
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 943
    :cond_1a
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v15, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 947
    .end local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_1b
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 949
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    .line 950
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_7

    .line 952
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_1c
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v43, v18

    .line 954
    check-cast v43, Lorg/spongycastle/asn1/ASN1OctetString;

    goto :goto_7

    .line 958
    .end local v15    # "aOid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v19    # "attrSet":Lorg/spongycastle/asn1/ASN1Set;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_1d
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 960
    .restart local v45    # "name":Ljava/lang/String;
    if-nez v17, :cond_1e

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 966
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->localIds:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 971
    .end local v17    # "alias":Ljava/lang/String;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v42    # "kInfo":Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;
    .end local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v45    # "name":Ljava/lang/String;
    .end local v49    # "privKey":Ljava/security/PrivateKey;
    :cond_1f
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra in encryptedData "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 972
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static/range {v21 .. v21}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 978
    .end local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    .end local v31    # "d":Lorg/spongycastle/asn1/pkcs/EncryptedData;
    .end local v41    # "j":I
    .end local v47    # "octets":[B
    .end local v51    # "seq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_20
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContentType()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 979
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extra "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v26, v39

    invoke-virtual {v7}, Lorg/spongycastle/asn1/pkcs/ContentInfo;->getContent()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/spongycastle/asn1/util/ASN1Dump;->dumpAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 736
    :cond_21
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_0

    .line 984
    .end local v20    # "authSafe":Lorg/spongycastle/asn1/pkcs/AuthenticatedSafe;
    .end local v26    # "c":[Lorg/spongycastle/asn1/pkcs/ContentInfo;
    .end local v39    # "i":I
    :cond_22
    new-instance v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v6, 0x0

    invoke-direct {v3, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    .line 985
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    .line 986
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    .line 988
    const/16 v39, 0x0

    .restart local v39    # "i":I
    :goto_8
    invoke-virtual/range {v30 .. v30}, Ljava/util/Vector;->size()I

    move-result v3

    move/from16 v0, v39

    if-eq v0, v3, :cond_0

    .line 990
    move-object/from16 v0, v30

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/spongycastle/asn1/pkcs/SafeBag;

    .line 991
    .restart local v21    # "b":Lorg/spongycastle/asn1/pkcs/SafeBag;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/asn1/pkcs/CertBag;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/CertBag;

    move-result-object v28

    .line 993
    .local v28, "cb":Lorg/spongycastle/asn1/pkcs/CertBag;
    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->x509Certificate:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 995
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported certificate type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertId()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1002
    :cond_23
    :try_start_2
    new-instance v27, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v28 .. v28}, Lorg/spongycastle/asn1/pkcs/CertBag;->getCertValue()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1004
    .local v27, "cIn":Ljava/io/ByteArrayInputStream;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certFact:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v29

    .line 1014
    .local v29, "cert":Ljava/security/cert/Certificate;
    const/16 v43, 0x0

    .line 1015
    .restart local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    const/16 v17, 0x0

    .line 1017
    .restart local v17    # "alias":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    if-eqz v3, :cond_28

    .line 1019
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/pkcs/SafeBag;->getBagAttributes()Lorg/spongycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v35

    .line 1020
    .restart local v35    # "e":Ljava/util/Enumeration;
    :cond_24
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 1022
    invoke-interface/range {v35 .. v35}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lorg/spongycastle/asn1/ASN1Sequence;

    .line 1023
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    const/4 v3, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v48

    check-cast v48, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 1024
    .local v48, "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    const/4 v3, 0x1

    move-object/from16 v0, v52

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lorg/spongycastle/asn1/ASN1Set;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lorg/spongycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v18

    check-cast v18, Lorg/spongycastle/asn1/ASN1Primitive;

    .line 1025
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    const/16 v24, 0x0

    .line 1027
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    move-object/from16 v0, v29

    instance-of v3, v0, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    if-eqz v3, :cond_26

    move-object/from16 v24, v29

    .line 1029
    check-cast v24, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;

    .line 1031
    move-object/from16 v0, v24

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->getBagAttribute(Lorg/spongycastle/asn1/DERObjectIdentifier;)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v37

    .line 1032
    .restart local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    if-eqz v37, :cond_25

    .line 1035
    invoke-interface/range {v37 .. v37}, Lorg/spongycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1Primitive;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1037
    new-instance v3, Ljava/io/IOException;

    const-string v6, "attempt to add existing attribute with different value"

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1006
    .end local v17    # "alias":Ljava/lang/String;
    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .end local v29    # "cert":Ljava/security/cert/Certificate;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    .end local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .end local v48    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v35

    .line 1008
    .local v35, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1043
    .restart local v17    # "alias":Ljava/lang/String;
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .restart local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .restart local v27    # "cIn":Ljava/io/ByteArrayInputStream;
    .restart local v29    # "cert":Ljava/security/cert/Certificate;
    .local v35, "e":Ljava/util/Enumeration;
    .restart local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    .restart local v43    # "localId":Lorg/spongycastle/asn1/ASN1OctetString;
    .restart local v48    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .restart local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_25
    move-object/from16 v0, v24

    move-object/from16 v1, v48

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;->setBagAttribute(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 1047
    .end local v37    # "existing":Lorg/spongycastle/asn1/ASN1Encodable;
    :cond_26
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_friendlyName:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1049
    check-cast v18, Lorg/spongycastle/asn1/DERBMPString;

    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    invoke-virtual/range {v18 .. v18}, Lorg/spongycastle/asn1/DERBMPString;->getString()Ljava/lang/String;

    move-result-object v17

    goto :goto_9

    .line 1051
    .restart local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    :cond_27
    sget-object v3, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->pkcs_9_at_localKeyId:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v43, v18

    .line 1053
    check-cast v43, Lorg/spongycastle/asn1/ASN1OctetString;

    goto/16 :goto_9

    .line 1058
    .end local v18    # "attr":Lorg/spongycastle/asn1/ASN1Primitive;
    .end local v24    # "bagAttr":Lorg/spongycastle/jce/interfaces/PKCS12BagAttributeCarrier;
    .end local v35    # "e":Ljava/util/Enumeration;
    .end local v48    # "oid":Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .end local v52    # "sq":Lorg/spongycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    move-object/from16 v0, v29

    invoke-virtual {v3, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    if-eqz v53, :cond_2a

    .line 1062
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1064
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->createSubjectKeyId(Ljava/security/PublicKey;)Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/asn1/x509/SubjectKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1066
    .restart local v45    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const-string v7, "unmarked"

    invoke-virtual {v6, v7}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-virtual {v3, v0, v6}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 988
    .end local v45    # "name":Ljava/lang/String;
    :cond_29
    :goto_a
    add-int/lit8 v39, v39, 0x1

    goto/16 :goto_8

    .line 1075
    :cond_2a
    if-eqz v43, :cond_2b

    .line 1077
    new-instance v45, Ljava/lang/String;

    invoke-virtual/range {v43 .. v43}, Lorg/spongycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/spongycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v3

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    .line 1079
    .restart local v45    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keyCerts:Ljava/util/Hashtable;

    move-object/from16 v0, v45

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    .end local v45    # "name":Ljava/lang/String;
    :cond_2b
    if-eqz v17, :cond_29

    .line 1083
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v3, v0, v1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 475
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is a key entry with the name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    iget-object v0, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v1, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 500
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_0

    if-nez p4, :cond_0

    .line 502
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "no certificate chain for private key"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    :cond_0
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 507
    invoke-virtual {p0, p1}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->engineDeleteEntry(Ljava/lang/String;)V

    .line 510
    :cond_1
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 511
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    const/4 v2, 0x0

    aget-object v2, p4, v2

    invoke-virtual {v1, p1, v2}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 513
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p4

    if-eq v0, v1, :cond_2

    .line 515
    iget-object v1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->chainCerts:Ljava/util/Hashtable;

    new-instance v2, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$CertId;-><init>(Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;Ljava/security/PublicKey;)V

    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 517
    :cond_2
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 490
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "operation not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 5

    .prologue
    .line 521
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 523
    .local v2, "tab":Ljava/util/Hashtable;
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->certs:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 524
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 526
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "cert"

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v3, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->keys:Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;

    invoke-virtual {v3}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore$IgnoresCaseHashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 530
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 532
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 533
    .local v0, "a":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 535
    const-string v3, "key"

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 539
    .end local v0    # "a":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v3

    return v3
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1128
    return-void
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 6
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1092
    if-nez p1, :cond_0

    .line 1094
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "\'param\' arg cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1097
    :cond_0
    instance-of v3, p1, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    if-nez v3, :cond_1

    .line 1099
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for \'param\' of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v0, p1

    .line 1103
    check-cast v0, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;

    .line 1106
    .local v0, "bcParam":Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    .line 1107
    .local v2, "protParam":Ljava/security/KeyStore$ProtectionParameter;
    if-nez v2, :cond_2

    .line 1109
    const/4 v1, 0x0

    .line 1121
    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    .local v1, "password":[C
    :goto_0
    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/jce/provider/JDKPKCS12StoreParameter;->isUseDEREncoding()Z

    move-result v4

    invoke-direct {p0, v3, v1, v4}, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->doStore(Ljava/io/OutputStream;[CZ)V

    .line 1122
    return-void

    .line 1111
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_2
    instance-of v3, v2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_3

    .line 1113
    check-cast v2, Ljava/security/KeyStore$PasswordProtection;

    .end local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    .restart local v1    # "password":[C
    goto :goto_0

    .line 1117
    .end local v1    # "password":[C
    .restart local v2    # "protParam":Ljava/security/KeyStore$ProtectionParameter;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support for protection parameter of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .locals 0
    .param p1, "rand"    # Ljava/security/SecureRandom;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->random:Ljava/security/SecureRandom;

    .line 203
    return-void
.end method

.method protected unwrapKey(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B[CZ)Ljava/security/PrivateKey;
    .locals 13
    .param p1, "algId"    # Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "data"    # [B
    .param p3, "password"    # [C
    .param p4, "wrongPKCS12Zero"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 549
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v10}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "algorithm":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v10

    invoke-static {v10}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v8

    .line 552
    .local v8, "pbeParams":Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    new-instance v9, Ljavax/crypto/spec/PBEKeySpec;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 557
    .local v9, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    .line 559
    .local v6, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v3, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v10

    invoke-virtual {v8}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    invoke-direct {v3, v10, v11}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 563
    .local v3, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    invoke-virtual {v6, v9}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    .line 565
    .local v5, "k":Ljavax/crypto/SecretKey;
    move-object v0, v5

    check-cast v0, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;

    move-object v10, v0

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Lorg/spongycastle/jcajce/provider/symmetric/util/BCPBEKey;->setTryWrongPKCS12Zero(Z)V

    .line 567
    sget-object v10, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {v1, v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 569
    .local v2, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x4

    invoke-virtual {v2, v10, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 572
    const-string v10, ""

    const/4 v11, 0x2

    invoke-virtual {v2, p2, v10, v11}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v7

    check-cast v7, Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .local v7, "out":Ljava/security/PrivateKey;
    return-object v7

    .line 574
    .end local v2    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v5    # "k":Ljavax/crypto/SecretKey;
    .end local v6    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v7    # "out":Ljava/security/PrivateKey;
    :catch_0
    move-exception v4

    .line 576
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception unwrapping private key - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected wrapKey(Ljava/lang/String;Ljava/security/Key;Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;[C)[B
    .locals 9
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "pbeParams"    # Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;
    .param p4, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v5, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 594
    .local v5, "pbeSpec":Ljavax/crypto/spec/PBEKeySpec;
    :try_start_0
    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 596
    .local v3, "keyFact":Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v6

    invoke-virtual {p3}, Lorg/spongycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v1, v6, v7}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 600
    .local v1, "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    sget-object v6, Lorg/spongycastle/jce/provider/JDKPKCS12KeyStore;->bcProvider:Ljava/security/Provider;

    invoke-static {p1, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 602
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x3

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 604
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 611
    .local v4, "out":[B
    return-object v4

    .line 606
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "defParams":Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3    # "keyFact":Ljavax/crypto/SecretKeyFactory;
    .end local v4    # "out":[B
    :catch_0
    move-exception v2

    .line 608
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception encrypting data - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method
