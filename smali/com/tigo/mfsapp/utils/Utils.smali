.class public Lcom/tigo/mfsapp/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDpToPixel(FLandroid/content/Context;)F
    .locals 5
    .param p0, "dp"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 119
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 120
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    mul-float v1, p0, v3

    .line 121
    .local v1, "px":F
    return v1
.end method

.method public static convertPixelsToDp(FLandroid/content/Context;)F
    .locals 5
    .param p0, "px"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 138
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 139
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    div-float v0, p0, v3

    .line 140
    .local v0, "dp":F
    return v0
.end method

.method public static dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "dateToformat"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 260
    :cond_0
    const-string v5, ""

    .line 291
    :goto_0
    return-object v5

    .line 262
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 268
    .local v0, "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getTimeFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .local v4, "formatter":Ljava/text/SimpleDateFormat;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v5

    goto :goto_0

    .line 271
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/text/ParseException;
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    :try_start_2
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 279
    .restart local v0    # "date":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getDateFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getTimeFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    .line 281
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v4    # "formatter":Ljava/text/SimpleDateFormat;
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    goto :goto_0

    .line 283
    .end local v0    # "date":Ljava/util/Date;
    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e1":Ljava/text/ParseException;
    :goto_2
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 286
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    .line 291
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 283
    .end local v2    # "e1":Ljava/text/ParseException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v4    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    goto :goto_2

    .line 271
    .end local v1    # "e":Ljava/text/ParseException;
    .end local v3    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v4    # "formatter":Ljava/text/SimpleDateFormat;
    :catch_3
    move-exception v1

    move-object v3, v4

    .end local v4    # "formatter":Ljava/text/SimpleDateFormat;
    .restart local v3    # "formatter":Ljava/text/SimpleDateFormat;
    goto :goto_1
.end method

.method public static getAmountFromBar(Ljava/lang/String;Ljava/lang/String;III)Ljava/lang/Double;
    .locals 8
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "amountSearch"    # Ljava/lang/String;
    .param p2, "amountPos"    # I
    .param p3, "amountInt"    # I
    .param p4, "amountDec"    # I

    .prologue
    .line 383
    const/4 v2, 0x0

    .line 386
    .local v2, "result":Ljava/lang/Double;
    move v1, p2

    .line 387
    .local v1, "offset":I
    if-eqz p1, :cond_1

    :try_start_0
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 389
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 390
    const/4 v5, 0x0

    .line 403
    :goto_0
    return-object v5

    .line 391
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v1, v5

    .line 393
    :cond_1
    add-int v5, v1, p3

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 394
    .local v4, "strInt":Ljava/lang/String;
    add-int v5, v1, p3

    add-int v6, v1, p3

    add-int/2addr v6, p4

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "strDec":Ljava/lang/String;
    const-string v5, "%s.%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v3    # "strDec":Ljava/lang/String;
    .end local v4    # "strInt":Ljava/lang/String;
    :goto_1
    move-object v5, v2

    .line 403
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getNewMockHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 2

    .prologue
    .line 165
    new-instance v0, Lorg/apache/http/message/BasicHttpResponse;

    new-instance v1, Lcom/tigo/mfsapp/utils/Utils$1;

    invoke-direct {v1}, Lcom/tigo/mfsapp/utils/Utils$1;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/StatusLine;)V

    return-object v0
.end method

.method public static getPhoneNumberFromNetwork(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 1
    .param p0, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPhoneNumberFromSystem(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 53
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getReceiptFromBar(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "len"    # I

    .prologue
    .line 361
    const/4 v2, 0x0

    .line 364
    .local v2, "result":Ljava/lang/String;
    move v1, p2

    .line 365
    .local v1, "offset":I
    if-eqz p1, :cond_1

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "null"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 367
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 368
    const/4 v3, 0x0

    .line 378
    :goto_0
    return-object v3

    .line 369
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 371
    :cond_1
    add-int v3, v1, p3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 372
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v2

    .line 378
    goto :goto_0
.end method

.method public static getWalletName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 348
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Wallet;

    .line 350
    .local v0, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallet name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 353
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 356
    .end local v0    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :goto_0
    return-object v1

    :cond_1
    const-string v1, ""

    goto :goto_0
.end method

.method public static isNetworkWifi(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 435
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 436
    .local v0, "mng":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    return v1
.end method

.method public static isUIThread()Z
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadDefaultLanguage()V
    .locals 4

    .prologue
    .line 64
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "defaultLanguage":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 67
    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->loadLanguageInEnvironment(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method private static loadLanguageInEnvironment(Ljava/lang/String;)V
    .locals 9
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-static {p0}, Lcom/tigo/mfsapp/utils/Utils;->parseLanguage(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "parsedLanguage":[Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 82
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 83
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 84
    .local v0, "conf":Landroid/content/res/Configuration;
    new-instance v4, Ljava/util/Locale;

    aget-object v5, v2, v7

    aget-object v6, v2, v8

    invoke-direct {v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadLanguageInEnvironment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 87
    return-void
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v2, 0x0

    .line 194
    .local v2, "hash":Ljava/lang/String;
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 195
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 196
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 202
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 197
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static moneyFormater(Ljava/lang/Float;)Ljava/lang/String;
    .locals 5
    .param p0, "f"    # Ljava/lang/Float;

    .prologue
    const/16 v4, 0x2e

    const/16 v3, 0x2c

    .line 228
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getDecimalDigits()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 241
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "format":Ljava/text/DecimalFormat;
    :goto_0
    new-instance v0, Ljava/text/DecimalFormatSymbols;

    invoke-direct {v0}, Ljava/text/DecimalFormatSymbols;-><init>()V

    .line 245
    .local v0, "d":Ljava/text/DecimalFormatSymbols;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isDotAsThousandsSeparator()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-virtual {v0, v4}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 248
    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    .line 253
    :goto_1
    invoke-virtual {v1, v0}, Ljava/text/DecimalFormat;->setDecimalFormatSymbols(Ljava/text/DecimalFormatSymbols;)V

    .line 254
    invoke-virtual {v1, p0}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 231
    .end local v0    # "d":Ljava/text/DecimalFormatSymbols;
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :pswitch_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v1    # "format":Ljava/text/DecimalFormat;
    goto :goto_0

    .line 235
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :pswitch_1
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 236
    .restart local v1    # "format":Ljava/text/DecimalFormat;
    goto :goto_0

    .line 238
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :pswitch_2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#,##0.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 239
    .restart local v1    # "format":Ljava/text/DecimalFormat;
    goto :goto_0

    .line 250
    .restart local v0    # "d":Ljava/text/DecimalFormatSymbols;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/text/DecimalFormatSymbols;->setGroupingSeparator(C)V

    .line 251
    invoke-virtual {v0, v4}, Ljava/text/DecimalFormatSymbols;->setDecimalSeparator(C)V

    goto :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static moneyFormater(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;
    .locals 1
    .param p0, "f"    # Ljava/lang/Float;

    .prologue
    .line 212
    invoke-static {p0}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "stringFormat":Ljava/lang/String;
    const-string v2, "$"

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 219
    move-object v1, p0

    .line 220
    .local v1, "value":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static parseLanguage(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "res":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 97
    .end local v0    # "res":[Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 98
    .restart local v0    # "res":[Ljava/lang/String;
    aput-object p0, v0, v2

    .line 100
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method public static readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 149
    .local v2, "reader":Ljava/io/Reader;
    :try_start_0
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 150
    .local v3, "writer":Ljava/io/StringWriter;
    const/16 v4, 0x400

    new-array v0, v4, [C

    .line 152
    .local v0, "buffer":[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "count":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 154
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v0    # "buffer":[C
    .end local v1    # "count":I
    .end local v3    # "writer":Ljava/io/StringWriter;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    throw v4

    .line 156
    .restart local v0    # "buffer":[C
    .restart local v1    # "count":I
    .restart local v3    # "writer":Ljava/io/StringWriter;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 159
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    return-object v4
.end method

.method public static searchStringNameByStringId(Ljava/lang/String;)I
    .locals 7
    .param p0, "nameField"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 409
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 411
    .local v2, "id":Ljava/lang/Integer;
    const-class v5, Lcom/tigo/mfsapp/R$string;

    invoke-virtual {v5}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 413
    .local v1, "fields":[Ljava/lang/reflect/Field;
    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v0, v1, v4

    .line 416
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 418
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 423
    :try_start_0
    const-class v6, Lcom/tigo/mfsapp/R$string;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 424
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static setApplicationLanguage(Ljava/lang/String;)V
    .locals 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApplicationLanguage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Lcom/tigo/mfsapp/utils/Utils;->loadLanguageInEnvironment(Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "language"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method

.method public static setDefaultFont(Landroid/view/ViewGroup;)V
    .locals 11
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 297
    if-eqz p0, :cond_2

    .line 299
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 301
    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 302
    .local v7, "view":Landroid/view/View;
    instance-of v9, v7, Landroid/view/ViewGroup;

    if-eqz v9, :cond_1

    .line 303
    check-cast v7, Landroid/view/ViewGroup;

    .end local v7    # "view":Landroid/view/View;
    invoke-static {v7}, Lcom/tigo/mfsapp/utils/Utils;->setDefaultFont(Landroid/view/ViewGroup;)V

    .line 299
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 304
    .restart local v7    # "view":Landroid/view/View;
    :cond_1
    instance-of v9, v7, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    .line 308
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/app/MfsApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fonts/CronosMM.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 309
    .local v3, "font":Landroid/graphics/Typeface;
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    .line 310
    .local v6, "textView":Landroid/widget/TextView;
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 311
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 312
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 313
    .local v8, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 314
    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    .line 315
    .local v4, "fontSize":F
    const/high16 v9, 0x40000000    # 2.0f

    iget v10, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v9, v9

    add-float/2addr v4, v9

    .line 316
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "font":Landroid/graphics/Typeface;
    .end local v4    # "fontSize":F
    .end local v6    # "textView":Landroid/widget/TextView;
    .end local v8    # "windowManager":Landroid/view/WindowManager;
    :catch_0
    move-exception v2

    .line 320
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 326
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v7    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public static updateTotalWallets()V
    .locals 6

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "total":F
    const/4 v1, 0x0

    .line 332
    .local v1, "totalWallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/Wallet;

    .line 334
    .local v2, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 335
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    add-float/2addr v0, v4

    goto :goto_0

    .line 337
    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 340
    .end local v2    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_1
    if-eqz v1, :cond_2

    .line 342
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/model/Wallet;->setBalance(F)V

    .line 344
    :cond_2
    return-void
.end method
