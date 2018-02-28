.class public Lcom/tigo/mfsapp/utils/EncryptionUtil;
.super Ljava/lang/Object;
.source "EncryptionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;,
        Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;,
        Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final ITERATIONS:I = 0x3e8

.field private static final OUTPUT_KEY_LENGHT:I = 0x100

.field private static instance:Lcom/tigo/mfsapp/utils/EncryptionUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static get()Lcom/tigo/mfsapp/utils/EncryptionUtil;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil;->instance:Lcom/tigo/mfsapp/utils/EncryptionUtil;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptionUtil;

    invoke-direct {v0}, Lcom/tigo/mfsapp/utils/EncryptionUtil;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil;->instance:Lcom/tigo/mfsapp/utils/EncryptionUtil;

    .line 43
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptionUtil;->instance:Lcom/tigo/mfsapp/utils/EncryptionUtil;

    return-object v0
.end method


# virtual methods
.method public asyncGenerateKey([C[BLcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;)V
    .locals 4
    .param p1, "passphraseOrPin"    # [C
    .param p2, "salt"    # [B
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 123
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;-><init>(Lcom/tigo/mfsapp/utils/EncryptionUtil;[C[BLcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyResult;)V

    .line 125
    .local v0, "task":Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 127
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptionUtil$GenerateKeyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public decrypt(Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .locals 4
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "outResult"    # Ljava/lang/StringBuilder;

    .prologue
    .line 90
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 91
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 92
    const/4 v3, 0x0

    invoke-static {p2, v3}, Lcom/tigo/mfsapp/utils/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 94
    .local v2, "result":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 116
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->SUCCESS:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "result":[B
    :goto_0
    return-object v3

    .line 96
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 99
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Invalid Key Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 105
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 108
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v3, "Illegal Block Size Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 109
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 110
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 112
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v3, "Bad Padding Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0
.end method

.method public encrypt(Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .locals 4
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "outResult"    # Ljava/lang/StringBuilder;

    .prologue
    .line 54
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 55
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 56
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 58
    .local v2, "result":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tigo/mfsapp/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 82
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->SUCCESS:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "result":[B
    :goto_0
    return-object v3

    .line 60
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "No such Algorithm Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 63
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 64
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v3, "No such Padding Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->NO_SUCH_ALGORTIHM:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 68
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 70
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v3, "Invalid Key Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 71
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v1

    .line 74
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v3, "Illegal Block Size Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0

    .line 76
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v1

    .line 78
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v3, "Bad Padding Error!"

    invoke-static {v3, v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 79
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ERROR:Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    goto :goto_0
.end method

.method public generateKey([C[B)Ljavax/crypto/SecretKey;
    .locals 5
    .param p1, "passphraseOrPin"    # [C
    .param p2, "salt"    # [B

    .prologue
    .line 136
    new-instance v1, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-direct {v1}, Lorg/spongycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>()V

    .line 137
    .local v1, "generator":Lorg/spongycastle/crypto/PBEParametersGenerator;
    invoke-static {p1}, Lorg/spongycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToUTF8Bytes([C)[B

    move-result-object v3

    const/16 v4, 0x3e8

    invoke-virtual {v1, v3, p2, v4}, Lorg/spongycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 138
    const/16 v3, 0x100

    invoke-virtual {v1, v3}, Lorg/spongycastle/crypto/PBEParametersGenerator;->generateDerivedParameters(I)Lorg/spongycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/spongycastle/crypto/params/KeyParameter;

    .line 140
    .local v2, "params":Lorg/spongycastle/crypto/params/KeyParameter;
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 141
    .local v0, "encoded":[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "AES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method public generateRandomSalt()[B
    .locals 3

    .prologue
    .line 148
    const/16 v2, 0x10

    new-array v0, v2, [B

    .line 150
    .local v0, "saltBytes":[B
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 151
    .local v1, "secureRand":Ljava/security/SecureRandom;
    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 153
    return-object v0
.end method
