.class public Lcom/tigo/mfsapp/utils/EncryptedStorge;
.super Ljava/lang/Object;
.source "EncryptedStorge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;,
        Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;
    }
.end annotation


# static fields
.field private static instance:Lcom/tigo/mfsapp/utils/EncryptedStorge;


# instance fields
.field private secretKey:Ljavax/crypto/SecretKey;

.field private state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    iput-object v0, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 42
    return-void
.end method

.method public static get()Lcom/tigo/mfsapp/utils/EncryptedStorge;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->instance:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge;

    invoke-direct {v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->instance:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    .line 37
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->instance:Lcom/tigo/mfsapp/utils/EncryptedStorge;

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    return-object v0
.end method

.method private getSecretKey()Ljavax/crypto/SecretKey;
    .locals 7

    .prologue
    .line 51
    iget-object v5, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->secretKey:Ljavax/crypto/SecretKey;

    if-nez v5, :cond_4

    .line 53
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 54
    .local v0, "context":Landroid/content/Context;
    const/4 v5, 0x0

    new-array v2, v5, [B

    .line 56
    .local v2, "salt":[B
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "passphrase":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "9774d56d682e549c"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    :cond_0
    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_1
    if-nez v1, :cond_2

    .line 67
    const-string v5, "wifi"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 68
    .local v4, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v4    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    if-nez v1, :cond_3

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "35"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 74
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    rem-int/lit8 v6, v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v3

    .line 79
    .local v3, "uuid":Ljava/util/UUID;
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->get()Lcom/tigo/mfsapp/utils/EncryptionUtil;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->generateKey([C[B)Ljavax/crypto/SecretKey;

    move-result-object v5

    iput-object v5, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->secretKey:Ljavax/crypto/SecretKey;

    .line 82
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "passphrase":Ljava/lang/String;
    .end local v2    # "salt":[B
    .end local v3    # "uuid":Ljava/util/UUID;
    :cond_4
    iget-object v5, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->secretKey:Ljavax/crypto/SecretKey;

    return-object v5
.end method


# virtual methods
.method public DeleteAll(Ljava/lang/String;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 89
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 90
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "counter":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "id_counter":Ljava/lang/String;
    :goto_0
    invoke-interface {v3, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 102
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    return v4
.end method

.method public Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 175
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "encryptedValue":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    sget-object v5, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    sget-object v5, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    if-ne v4, v5, :cond_1

    .line 179
    :cond_0
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 182
    :cond_1
    if-eqz v1, :cond_2

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .local v0, "decryptResult":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->get()Lcom/tigo/mfsapp/utils/EncryptionUtil;

    move-result-object v4

    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v4, v5, v1, v0}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->decrypt(Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    move-result-object v2

    .line 187
    .local v2, "errorCode":Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    sget-object v4, Lcom/tigo/mfsapp/utils/EncryptedStorge$1;->$SwitchMap$com$tigo$mfsapp$utils$EncryptionUtil$ErrorCode:[I

    invoke-virtual {v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 202
    .end local v0    # "decryptResult":Ljava/lang/StringBuilder;
    .end local v2    # "errorCode":Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .end local p2    # "defValue":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p2

    .line 190
    .restart local v0    # "decryptResult":Ljava/lang/StringBuilder;
    .restart local v2    # "errorCode":Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    .restart local p2    # "defValue":Ljava/lang/String;
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error decrypting id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 194
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error, no such Algorithm while decrypting id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public LoadAll(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v2, "loadedData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 210
    .local v3, "parser":Lcom/google/gson/Gson;
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 211
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 212
    .local v0, "counter":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "id_counter":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    sget-object v7, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    sget-object v7, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    if-ne v6, v7, :cond_1

    .line 216
    :cond_0
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 219
    :cond_1
    :goto_1
    invoke-interface {v4, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 221
    const/4 v6, 0x0

    invoke-virtual {p0, v1, v6}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, "result":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 225
    invoke-virtual {v3, v5, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    goto :goto_1

    .line 232
    .end local v5    # "result":Ljava/lang/String;
    :cond_3
    return-object v2
.end method

.method public Save(Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 108
    invoke-interface {p2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public Save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-object v5, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    iput-object v5, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "encryptResult":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->get()Lcom/tigo/mfsapp/utils/EncryptionUtil;

    move-result-object v5

    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v5, v6, p2, v1}, Lcom/tigo/mfsapp/utils/EncryptionUtil;->encrypt(Ljavax/crypto/SecretKey;Ljava/lang/String;Ljava/lang/StringBuilder;)Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;

    move-result-object v2

    .line 118
    .local v2, "errorCode":Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;
    const/4 v4, 0x0

    .line 120
    .local v4, "result":Z
    sget-object v5, Lcom/tigo/mfsapp/utils/EncryptedStorge$1;->$SwitchMap$com$tigo$mfsapp$utils$EncryptionUtil$ErrorCode:[I

    invoke-virtual {v2}, Lcom/tigo/mfsapp/utils/EncryptionUtil$ErrorCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 144
    :cond_0
    :goto_0
    sget-object v5, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    iput-object v5, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 145
    return v4

    .line 123
    :pswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error encrypting id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error, no such Algorithm while encryting id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-direct {p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 133
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 134
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, p1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 136
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 138
    if-nez v4, :cond_0

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error while commiting encrypted string to Shared Preference. Id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public SaveAll(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 150
    .local p2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->SAVING_ALL:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    iput-object v3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 151
    const/4 v0, 0x1

    .line 153
    .local v0, "result":Z
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->DeleteAll(Ljava/lang/String;)Z

    .line 155
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 157
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;

    invoke-interface {v3}, Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;->toJson()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "value":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 163
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->DeleteAll(Ljava/lang/String;)Z

    .line 168
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;->IDLE:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    iput-object v3, p0, Lcom/tigo/mfsapp/utils/EncryptedStorge;->state:Lcom/tigo/mfsapp/utils/EncryptedStorge$STATE;

    .line 169
    return v0

    .line 155
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public asyncLoad(Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 280
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;-><init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 282
    .local v0, "task":Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 284
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public asyncLoadAll(Ljava/lang/String;Ljava/lang/Class;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    const/4 v3, 0x0

    .line 266
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;-><init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/lang/Class;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 268
    .local v0, "task":Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 270
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$LoadAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public asyncSave(Ljava/lang/String;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 252
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;-><init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 254
    .local v0, "task":Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 256
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public asyncSaveAll(Ljava/lang/String;Ljava/util/ArrayList;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "valueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    const/4 v3, 0x0

    .line 238
    new-instance v0, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;-><init>(Lcom/tigo/mfsapp/utils/EncryptedStorge;Ljava/lang/String;Ljava/util/ArrayList;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 240
    .local v0, "task":Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 242
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/utils/EncryptedStorge$SaveAllTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
