.class public Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;
.super Ljava/lang/Object;
.source "HeaderEnrichmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    return-void
.end method

.method public static checkIfHELoginIsNeeded(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V
    .locals 8
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "listener"    # Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    .prologue
    const/4 v4, 0x1

    .line 55
    new-instance v2, Lcom/tigo/mfsapp/service/Connection;

    invoke-direct {v2}, Lcom/tigo/mfsapp/service/Connection;-><init>()V

    .line 57
    .local v2, "connection":Lcom/tigo/mfsapp/service/Connection;
    new-instance v6, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    invoke-direct {v6, p1, p0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v2, v6}, Lcom/tigo/mfsapp/service/Connection;->setConnectionListener(Lcom/tigo/mfsapp/service/Connection$ConnectionListener;)V

    .line 125
    invoke-static {}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->isDeviceRegistered()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->getHEAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v4, :cond_3

    .line 129
    .local v4, "isDeviceRegistered":Z
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/app/MfsApp;->getVersionName()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "localVersion":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichmentTestVersion()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "externalVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 133
    .local v1, "appVersionIsDebug":Z
    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    invoke-static {v5, v3}, Lcom/tigo/mfsapp/utils/CompareAppVersions;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 135
    const/4 v1, 0x1

    .line 139
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is deviceRegistered "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichmentURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Is HE testing enabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentTestEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " versions "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentTestEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 143
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 144
    new-instance v6, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$2;

    invoke-direct {v6, p1}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$2;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V

    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 181
    :cond_2
    :goto_1
    return-void

    .line 125
    .end local v1    # "appVersionIsDebug":Z
    .end local v3    # "externalVersion":Ljava/lang/String;
    .end local v4    # "isDeviceRegistered":Z
    .end local v5    # "localVersion":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 152
    .restart local v1    # "appVersionIsDebug":Z
    .restart local v3    # "externalVersion":Ljava/lang/String;
    .restart local v4    # "isDeviceRegistered":Z
    .restart local v5    # "localVersion":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 154
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getHeaderEnrichmentURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    if-nez v4, :cond_5

    .line 156
    invoke-static {p0}, Lcom/tigo/mfsapp/utils/Utils;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 161
    invoke-static {}, Lcom/tigo/mfsapp/utils/GUIDGen;->getNew()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "GUID":Ljava/lang/String;
    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->setGUID(Ljava/lang/String;)V

    .line 165
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GUID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 167
    const-string v6, ""

    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->getHeMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lcom/tigo/mfsapp/service/Connection;->requestHeaderEnrichmentTokenRegister(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 169
    .end local v0    # "GUID":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {p0}, Lcom/tigo/mfsapp/utils/Utils;->isNetworkWifi(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 170
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    .line 171
    new-instance v6, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$3;

    invoke-direct {v6, p1}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$3;-><init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V

    invoke-virtual {p0, v6}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private static getDigest(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "toLower"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 41
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 42
    .local v1, "mac":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 43
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/String;

    .line 44
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->toHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1    # "mac":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final isDeviceRegistered()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->getRegisteredDevice(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static onHeaderEnrichmentError(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/dialogs/OkDialogFragment;Landroid/view/View$OnClickListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p1, "okDialog"    # Lcom/tigo/mfsapp/dialogs/OkDialogFragment;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 188
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 189
    const/4 v1, 0x0

    const v2, 0x7f0b0085

    invoke-virtual {p1, v1, v2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setStyle(II)V

    .line 192
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060168

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setText(Ljava/lang/String;)V

    .line 194
    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static sha256Digest(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 35
    const-string v0, "SHA-256"

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->getDigest(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    const/4 v3, 0x1

    .line 51
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v3, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 52
    .local v0, "bi":Ljava/math/BigInteger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    shl-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "X"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
