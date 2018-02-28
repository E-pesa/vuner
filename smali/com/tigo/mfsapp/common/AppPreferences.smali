.class public Lcom/tigo/mfsapp/common/AppPreferences;
.super Ljava/lang/Object;
.source "AppPreferences.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/common/AppPreferences$MainButtonItem;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "ACCOUNT_ID"

.field public static final ACCOUNT_NAME:Ljava/lang/String; = "ACCOUNT_NAME"

.field public static final COMMA:C = ','

.field public static final DATEFORMAT_FROM_SERVER:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final DATEFORMAT_FROM_SERVER_SKIP_TIME:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DOCUMENT_TYPE:Ljava/lang/String; = "DOCUMENT_TYPE"

.field public static final DOT:C = '.'

.field public static final EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final HE_ACCESSTOKEN:Ljava/lang/String; = "HE_ACCESSTOKEN"

.field public static final HE_MSISDN:Ljava/lang/String; = "HE_MSISDN"

.field public static final HRS:Ljava/lang/String; = "HRS"

.field private static final ISDEVICE_REGISTERED:Ljava/lang/String; = "ISDEVICE_REGISTERED"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MAP_PINS:Ljava/lang/String; = "MAP_PINS"

.field public static final MONEY_REG_EXP:Ljava/lang/String; = "#,##0"

.field public static final MONEY_REG_EXP_1_DEC:Ljava/lang/String; = "#,##0.0"

.field public static final MONEY_REG_EXP_2_DEC:Ljava/lang/String; = "#,##0.00"

.field public static final MSISDN:Ljava/lang/String; = "MSISDN"

.field public static final PARAMETERS:Ljava/lang/String; = "PARAMETERS"

.field public static final POPUP:Ljava/lang/String; = "POPUP"

.field public static final ROLE:Ljava/lang/String; = "ROLE"

.field public static final ROLE_AGENT:Ljava/lang/String; = "agent"

.field public static final ROLE_EMPTY:Ljava/lang/String; = "empty"

.field public static final ROLE_MERCHANT:Ljava/lang/String; = "merchant"

.field public static final ROLE_SUBSCRIBER:Ljava/lang/String; = "subscriber"

.field private static final SELECTED_WALLET:Ljava/lang/String; = "SELECTED_WALLET"

.field public static final TIGO_MSISDNs:Ljava/lang/String; = "TIGO_MSISDNs"

.field public static final VALIDATED_GUID:Ljava/lang/String; = "VALIDATED_GUID"

.field public static final WAITING_REGISTRATION_CODE:Ljava/lang/String; = "WAITING_REGISTRATION_CODE"

.field private static mainMenuMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static selectedWallet:Lcom/tigo/mfsapp/model/Wallet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    return-void
.end method

.method public static cleanMenuMap()V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences;->mainMenuMap:Ljava/util/LinkedHashMap;

    .line 492
    return-void
.end method

.method public static getEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 506
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "EMAIL"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 440
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "VALIDATED_GUID"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHEAccessToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "HE_ACCESSTOKEN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHeMSISDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "HE_MSISDN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "language"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPopUpURLImage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 496
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "POPUP"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMSISDN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "MSISDN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainMenuMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tigo/mfsapp/adapters/MainButtonInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    sget-object v0, Lcom/tigo/mfsapp/common/AppPreferences;->mainMenuMap:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/tigo/mfsapp/common/AppPreferences$1;

    invoke-direct {v0}, Lcom/tigo/mfsapp/common/AppPreferences$1;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/common/AppPreferences;->mainMenuMap:Ljava/util/LinkedHashMap;

    .line 435
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/common/AppPreferences;->mainMenuMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getROLE(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "defValue"    # Ljava/lang/String;

    .prologue
    .line 481
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "ROLE"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRegisteredDevice(Z)Z
    .locals 2
    .param p0, "def"    # Z

    .prologue
    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "ISDEVICE_REGISTERED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;
    .locals 5

    .prologue
    .line 154
    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences;->selectedWallet:Lcom/tigo/mfsapp/model/Wallet;

    if-nez v2, :cond_1

    .line 156
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    .line 157
    .local v0, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 159
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SELECTED_WALLET"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "selectedWalletIndex":I
    if-gez v1, :cond_0

    const/4 v1, 0x0

    .line 161
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/Wallet;

    sput-object v2, Lcom/tigo/mfsapp/common/AppPreferences;->selectedWallet:Lcom/tigo/mfsapp/model/Wallet;

    .line 164
    .end local v1    # "selectedWalletIndex":I
    :cond_1
    sget-object v2, Lcom/tigo/mfsapp/common/AppPreferences;->selectedWallet:Lcom/tigo/mfsapp/model/Wallet;

    return-object v2
.end method

.method public static getTigoMSISDNs()Ljava/util/HashSet;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "TIGO_MSISDNs"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "json":Ljava/lang/String;
    new-instance v7, Lcom/google/gson/GsonBuilder;

    invoke-direct {v7}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v8, [Ljava/lang/String;

    invoke-virtual {v7, v3, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 131
    .local v2, "fromJson":[Ljava/lang/String;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 133
    .local v6, "tigoMSISDNs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 135
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v5, v2, v7

    .line 139
    .local v5, "jsonString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 140
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v9, "MSISDN"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "MSISDN":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "MSISDN":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 149
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v5    # "jsonString":Ljava/lang/String;
    :cond_0
    return-object v6
.end method

.method public static getVisibleItemsForRole()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    const-string v1, "empty"

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getROLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "role":Ljava/lang/String;
    const-string v1, "subscriber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getVisibleMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 192
    :cond_0
    const-string v1, "merchant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getVisibleMenuItemsForMerchants()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "agent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getVisibleMenuItemsForAgents()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getVisibleMenuItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method public static isOneWallet()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "EMAIL"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 512
    return-void
.end method

.method public static setGUID(Ljava/lang/String;)V
    .locals 2
    .param p0, "GUID"    # Ljava/lang/String;

    .prologue
    .line 445
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "VALIDATED_GUID"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 446
    return-void
.end method

.method public static setHEAccessToken(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 475
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "HE_ACCESSTOKEN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 476
    return-void
.end method

.method public static setHeMSISDN(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 465
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "HE_MSISDN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 466
    return-void
.end method

.method public static setLastPopUpURLImage(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 501
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "POPUP"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 502
    return-void
.end method

.method public static setMSISDN(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "MSISDN"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    return-void
.end method

.method public static setROLE(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 486
    invoke-static {}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->get()Lcom/tigo/mfsapp/utils/EncryptedStorge;

    move-result-object v0

    const-string v1, "ROLE"

    invoke-virtual {v0, v1, p0}, Lcom/tigo/mfsapp/utils/EncryptedStorge;->Save(Ljava/lang/String;Ljava/lang/String;)Z

    .line 487
    return-void
.end method

.method public static setRegisteredDevice(Z)V
    .locals 2
    .param p0, "registeredDevice"    # Z

    .prologue
    .line 96
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ISDEVICE_REGISTERED"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 100
    return-void
.end method

.method public static setSelectedWallet(Lcom/tigo/mfsapp/model/Wallet;)V
    .locals 4
    .param p0, "selectedWallet"    # Lcom/tigo/mfsapp/model/Wallet;

    .prologue
    .line 169
    sput-object p0, Lcom/tigo/mfsapp/common/AppPreferences;->selectedWallet:Lcom/tigo/mfsapp/model/Wallet;

    .line 170
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    .line 171
    .local v0, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 173
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "SELECTED_WALLET"

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 175
    :cond_0
    return-void
.end method

.method public static setTigoMSISDNs(Ljava/util/HashSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "tigoMSISDNs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "json":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "TIGO_MSISDNs"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 124
    return-void
.end method
