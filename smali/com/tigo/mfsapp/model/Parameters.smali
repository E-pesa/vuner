.class public Lcom/tigo/mfsapp/model/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# static fields
.field private static instance:Lcom/tigo/mfsapp/model/Parameters;


# instance fields
.field private HeaderEnrichmentURL:Ljava/lang/String;

.field private ServiceNumberWithAsterisk:Ljava/lang/String;

.field private agentsLookupEnabled:Z

.field private askPinOnTransactions:Z

.field private baseBankLogosUrl:Ljava/lang/String;

.field private basePaymentLogosUrl:Ljava/lang/String;

.field private baseReferenceHelpImagesUrl:Ljava/lang/String;

.field private carrusels:Lcom/tigo/mfsapp/model/Carrusels;

.field private countryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Country;",
            ">;"
        }
    .end annotation
.end field

.field private currencySymbol:Ljava/lang/String;

.field private dateFormat:Ljava/lang/String;

.field private decimalDigits:I

.field private dotAsThousandsSeparator:Z

.field private headerEnrichementMSISDN:Ljava/lang/String;

.field private headerEnrichementName:Ljava/lang/String;

.field private headerEnrichmentEnabled:Z

.field private headerEnrichmentTestEnabled:Z

.field private headerEnrichmentTestVersion:Ljava/lang/String;

.field private hideFiltersInMaps:Z

.field private idTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/IdType;",
            ">;"
        }
    .end annotation
.end field

.field private infDigits:I

.field private internationalFormat:Ljava/lang/String;

.field private loginRequired:Z

.field private minAppVersion:Ljava/lang/String;

.field private msisdnInLoginRequired:Z

.field private nationalFormat:Ljava/lang/String;

.field private nfDigits:I

.field private phoneCustomerRepresentative:Ljava/lang/String;

.field private pinCodeDigits:I

.field private refreshTimeCashOut:I

.field private registerDeviceEnabled:Z

.field private registerSMSs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selfRegistration:Lcom/tigo/mfsapp/model/SelfRegistrationParams;

.field private shouldAskDescriptionInTxs:Z

.field private showBalanceHeader:Z

.field private showCommissionStatement:Z

.field private showDeregisterAllDevicesButton:Z

.field private showDeregisterThisInSettings:Z

.field private showDeregisterThisInSideBar:Z

.field private showEmailFieldInRegistration:Z

.field private showFiltersInMiniStatement:Z

.field private showMinistatement:Z

.field private showPendingVouchers:Z

.field private showResultingBalance:Z

.field private showScanBarCodeInBillPay:Z

.field private showSecurityQuestion:Z

.field private showTransactionTotalAmount:Z

.field private showUserProfileInSettings:Z

.field private subscribersLookupEnabled:Z

.field private supportedLanguages:[Ljava/lang/String;

.field private timeFormat:Ljava/lang/String;

.field private topUpAmountValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private totalBalanceInHeaderEnabled:Z

.field private transactionsTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/TransactionType;",
            ">;"
        }
    .end annotation
.end field

.field private visibleMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visibleMenuItemsForAgents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private visibleMenuItemsForMerchants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wallets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;"
        }
    .end annotation
.end field

.field private whatsNewURL:Ljava/lang/String;

.field private zoomInMaps:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichementMSISDN:Ljava/lang/String;

    .line 43
    iput-boolean v1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentEnabled:Z

    .line 46
    const-string v0, "dd/MM/y"

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->dateFormat:Ljava/lang/String;

    .line 47
    const-string v0, "HH:mm"

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->timeFormat:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/tigo/mfsapp/model/Parameters;->decimalDigits:I

    .line 49
    iput-boolean v1, p0, Lcom/tigo/mfsapp/model/Parameters;->dotAsThousandsSeparator:Z

    .line 61
    iput-boolean v1, p0, Lcom/tigo/mfsapp/model/Parameters;->showUserProfileInSettings:Z

    .line 76
    iput-boolean v1, p0, Lcom/tigo/mfsapp/model/Parameters;->askPinOnTransactions:Z

    return-void
.end method

.method public static declared-synchronized getDefault()Lcom/tigo/mfsapp/model/Parameters;
    .locals 7

    .prologue
    .line 288
    const-class v5, Lcom/tigo/mfsapp/model/Parameters;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    iget-object v4, v4, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItems:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 290
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 292
    .local v0, "appPreferences":Landroid/content/SharedPreferences;
    const-string v4, "PARAMETERS"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 294
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 295
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v4, "PARAMETERS"

    const-string v6, ""

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parameters init:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    :try_start_1
    const-class v4, Lcom/tigo/mfsapp/model/Parameters;

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Parameters;

    sput-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    .line 300
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->loadDefaultLanguage()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "string":Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_2
    sget-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return-object v4

    .line 301
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "string":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v4, Lcom/tigo/mfsapp/model/Parameters;

    invoke-direct {v4}, Lcom/tigo/mfsapp/model/Parameters;-><init>()V

    sput-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "string":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 308
    :cond_2
    :try_start_4
    new-instance v4, Lcom/tigo/mfsapp/model/Parameters;

    invoke-direct {v4}, Lcom/tigo/mfsapp/model/Parameters;-><init>()V

    sput-object v4, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/tigo/mfsapp/model/Parameters;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    return-object v0
.end method

.method public static setInstance(Lcom/tigo/mfsapp/model/Parameters;)V
    .locals 0
    .param p0, "instance"    # Lcom/tigo/mfsapp/model/Parameters;

    .prologue
    .line 369
    sput-object p0, Lcom/tigo/mfsapp/model/Parameters;->instance:Lcom/tigo/mfsapp/model/Parameters;

    .line 370
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 446
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 447
    return-void
.end method

.method public getBaseBankLogosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->baseBankLogosUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBasePaymentLogosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->basePaymentLogosUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBaseReferenceHelpImagesUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->baseReferenceHelpImagesUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrusels()Lcom/tigo/mfsapp/model/Carrusels;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->carrusels:Lcom/tigo/mfsapp/model/Carrusels;

    return-object v0
.end method

.method public getCountryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Country;",
            ">;"
        }
    .end annotation

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->countryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getCurrencySymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDateFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->dateFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDecimalDigits()I
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->decimalDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeaderEnrichementMSISDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichementMSISDN:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderEnrichementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichementName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderEnrichmentTestVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentTestVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderEnrichmentURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->HeaderEnrichmentURL:Ljava/lang/String;

    return-object v0
.end method

.method public getIdTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/IdType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 578
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->idTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getInfDigits()I
    .locals 1

    .prologue
    .line 160
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->infDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInternationalFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->internationalFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->minAppVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNationalFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->nationalFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNfDigits()I
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->nfDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPhoneCustomerRepresentative()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->phoneCustomerRepresentative:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPinCodeDigits()I
    .locals 1

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->pinCodeDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRefreshTimeCashOut()I
    .locals 1

    .prologue
    .line 471
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->refreshTimeCashOut:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRegisterSMSs()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->registerSMSs:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSelfRegistration()Lcom/tigo/mfsapp/model/SelfRegistrationParams;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->selfRegistration:Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    return-object v0
.end method

.method public getServiceNumberWithAsterisk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->ServiceNumberWithAsterisk:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getSupportedLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->supportedLanguages:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimeFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->timeFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTopUpAmountValues()Ljava/util/ArrayList;
    .locals 1
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
    .line 628
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->topUpAmountValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransactionsTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/TransactionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 588
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->transactionsTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public declared-synchronized getVisibleMenuItems()Ljava/util/ArrayList;
    .locals 1
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
    .line 252
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVisibleMenuItemsForAgents()Ljava/util/ArrayList;
    .locals 1
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
    .line 269
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItemsForAgents:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVisibleMenuItemsForMerchants()Ljava/util/ArrayList;
    .locals 1
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
    .line 281
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItemsForMerchants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWallets()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->wallets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWhatsNewURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Parameters;->whatsNewURL:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomInMaps()I
    .locals 1

    .prologue
    .line 669
    iget v0, p0, Lcom/tigo/mfsapp/model/Parameters;->zoomInMaps:I

    return v0
.end method

.method public declared-synchronized isAgentsLookupEnabled()Z
    .locals 1

    .prologue
    .line 405
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->agentsLookupEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isAskPinOnTransactions()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->askPinOnTransactions:Z

    return v0
.end method

.method public declared-synchronized isDotAsThousandsSeparator()Z
    .locals 1

    .prologue
    .line 435
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->dotAsThousandsSeparator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeaderEnrichmentEnabled()Z
    .locals 1

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isHeaderEnrichmentTestEnabled()Z
    .locals 1

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentTestEnabled:Z

    return v0
.end method

.method public isHideFiltersInMaps()Z
    .locals 1

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->hideFiltersInMaps:Z

    return v0
.end method

.method public declared-synchronized isLoginRequired()Z
    .locals 1

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->loginRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMsisdnInLoginRequired()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->msisdnInLoginRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isRegisterDeviceEnabled()Z
    .locals 1

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->registerDeviceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShouldAskDescriptionInTxs()Z
    .locals 1

    .prologue
    .line 618
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->shouldAskDescriptionInTxs:Z

    return v0
.end method

.method public declared-synchronized isShowBalanceHeader()Z
    .locals 1

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showBalanceHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowCommissionStatement()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showCommissionStatement:Z

    return v0
.end method

.method public isShowDeregisterAllDevicesButton()Z
    .locals 1

    .prologue
    .line 608
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterAllDevicesButton:Z

    return v0
.end method

.method public isShowDeregisterThisInSettings()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterThisInSettings:Z

    return v0
.end method

.method public isShowDeregisterThisInSideBar()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterThisInSideBar:Z

    return v0
.end method

.method public isShowEmailFieldInRegistration()Z
    .locals 1

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showEmailFieldInRegistration:Z

    return v0
.end method

.method public isShowFiltersInMiniStatement()Z
    .locals 1

    .prologue
    .line 508
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showFiltersInMiniStatement:Z

    return v0
.end method

.method public isShowMinistatement()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showMinistatement:Z

    return v0
.end method

.method public isShowPendingVouchers()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showPendingVouchers:Z

    return v0
.end method

.method public declared-synchronized isShowResultingBalance()Z
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showResultingBalance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowScanBarCodeInBillPay()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showScanBarCodeInBillPay:Z

    return v0
.end method

.method public isShowSecurityQuestion()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showSecurityQuestion:Z

    return v0
.end method

.method public declared-synchronized isShowTransactionTotalAmount()Z
    .locals 1

    .prologue
    .line 240
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showTransactionTotalAmount:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowUserProfileInSettings()Z
    .locals 1

    .prologue
    .line 548
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->showUserProfileInSettings:Z

    return v0
.end method

.method public declared-synchronized isSubscribersLookupEnabled()Z
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->subscribersLookupEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTotalBalanceInHeaderEnabled()Z
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Parameters;->totalBalanceInHeaderEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public save()V
    .locals 4

    .prologue
    .line 481
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 482
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/tigo/mfsapp/model/Parameters;

    invoke-virtual {v0, p0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "PARAMETERS"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    return-void
.end method

.method public declared-synchronized setAgentsLookupEnabled(Z)V
    .locals 1
    .param p1, "agentsLookupEnabled"    # Z

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->agentsLookupEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAskPinOnTransactions(Z)V
    .locals 0
    .param p1, "askPinOnTransactions"    # Z

    .prologue
    .line 702
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->askPinOnTransactions:Z

    .line 703
    return-void
.end method

.method public setBaseBankLogosUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseBankLogosUrl"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->baseBankLogosUrl:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setBasePaymentLogosUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "basePaymentLogosUrl"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->basePaymentLogosUrl:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setBaseReferenceHelpImagesUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "baseReferenceHelpImagesUrl"    # Ljava/lang/String;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->baseReferenceHelpImagesUrl:Ljava/lang/String;

    .line 351
    return-void
.end method

.method public setCarrusels(Lcom/tigo/mfsapp/model/Carrusels;)V
    .locals 0
    .param p1, "carrusels"    # Lcom/tigo/mfsapp/model/Carrusels;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->carrusels:Lcom/tigo/mfsapp/model/Carrusels;

    .line 644
    return-void
.end method

.method public setCountryList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Country;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, "countryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Country;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->countryList:Ljava/util/ArrayList;

    .line 574
    return-void
.end method

.method public declared-synchronized setCurrencySymbol(Ljava/lang/String;)V
    .locals 1
    .param p1, "currencySymbol"    # Ljava/lang/String;

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->currencySymbol:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 380
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->dateFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDecimalDigits(I)V
    .locals 1
    .param p1, "decimalDigits"    # I

    .prologue
    .line 400
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->decimalDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDotAsThousandsSeparator(Z)V
    .locals 1
    .param p1, "dotAsThousandsSeparator"    # Z

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->dotAsThousandsSeparator:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeaderEnrichementMSISDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerEnrichementMSISDN"    # Ljava/lang/String;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichementMSISDN:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setHeaderEnrichementName(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerEnrichementName"    # Ljava/lang/String;

    .prologue
    .line 461
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichementName:Ljava/lang/String;

    .line 462
    return-void
.end method

.method public declared-synchronized setHeaderEnrichmentEnabled(Z)V
    .locals 1
    .param p1, "headerEnrichmentEnabled"    # Z

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeaderEnrichmentTestEnabled(Z)V
    .locals 0
    .param p1, "headerEnrichmentTestEnabled"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentTestEnabled:Z

    .line 707
    return-void
.end method

.method public setHeaderEnrichmentTestVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerEnrichmentTestVersion"    # Ljava/lang/String;

    .prologue
    .line 714
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->headerEnrichmentTestVersion:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public setHeaderEnrichmentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerEnrichmentURL"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->HeaderEnrichmentURL:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setHideFiltersInMaps(Z)V
    .locals 0
    .param p1, "hideFiltersInMaps"    # Z

    .prologue
    .line 657
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->hideFiltersInMaps:Z

    .line 658
    return-void
.end method

.method public setIdTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/IdType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 583
    .local p1, "idTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->idTypes:Ljava/util/ArrayList;

    .line 584
    return-void
.end method

.method public declared-synchronized setInfDigits(I)V
    .locals 1
    .param p1, "infDigits"    # I

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->infDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setInternationalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "internationalFormat"    # Ljava/lang/String;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->internationalFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLoginRequired(Z)V
    .locals 1
    .param p1, "loginRequired"    # Z

    .prologue
    .line 97
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->loginRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinAppVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "minAppVersion"    # Ljava/lang/String;

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->minAppVersion:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMsisdnInLoginRequired(Z)V
    .locals 1
    .param p1, "msisdnInLoginRequired"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->msisdnInLoginRequired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNationalFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "nationalFormat"    # Ljava/lang/String;

    .prologue
    .line 135
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->nationalFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNfDigits(I)V
    .locals 1
    .param p1, "nfDigits"    # I

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->nfDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPhoneCustomerRepresentative(Ljava/lang/String;)V
    .locals 1
    .param p1, "phoneCustomerRepresentative"    # Ljava/lang/String;

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->phoneCustomerRepresentative:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPinCodeDigits(I)V
    .locals 1
    .param p1, "pinCodeDigits"    # I

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->pinCodeDigits:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRefreshTimeCashOut(I)V
    .locals 1
    .param p1, "refreshTimeCashOut"    # I

    .prologue
    .line 476
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->refreshTimeCashOut:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit p0

    return-void

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRegisterDeviceEnabled(Z)V
    .locals 1
    .param p1, "registerDeviceEnabled"    # Z

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->registerDeviceEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRegisterSmss(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, "registerSMSs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->registerSMSs:Ljava/util/HashMap;

    .line 489
    return-void
.end method

.method public setSelfRegistration(Lcom/tigo/mfsapp/model/SelfRegistrationParams;)V
    .locals 0
    .param p1, "selfRegistration"    # Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->selfRegistration:Lcom/tigo/mfsapp/model/SelfRegistrationParams;

    .line 649
    return-void
.end method

.method public setServiceNumberWithAsterisk(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceNumberWithAsterisk"    # Ljava/lang/String;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->ServiceNumberWithAsterisk:Ljava/lang/String;

    .line 695
    return-void
.end method

.method public setShouldAskDescriptionInTxs(Z)V
    .locals 0
    .param p1, "shouldAskDescriptionInTxs"    # Z

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->shouldAskDescriptionInTxs:Z

    .line 624
    return-void
.end method

.method public declared-synchronized setShowBalanceHeader(Z)V
    .locals 1
    .param p1, "showBalanceHeader"    # Z

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showBalanceHeader:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowCommissionStatement(Z)V
    .locals 0
    .param p1, "showCommissionStatement"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showCommissionStatement:Z

    .line 524
    return-void
.end method

.method public setShowDeregisterAllDevicesButton(Z)V
    .locals 0
    .param p1, "showDeregisterAllDevicesButton"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterAllDevicesButton:Z

    .line 614
    return-void
.end method

.method public setShowDeregisterThisInSettings(Z)V
    .locals 0
    .param p1, "showDeregisterThisInSettings"    # Z

    .prologue
    .line 681
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterThisInSettings:Z

    .line 682
    return-void
.end method

.method public setShowDeregisterThisInSideBar(Z)V
    .locals 0
    .param p1, "showDeregisterThisInSideBar"    # Z

    .prologue
    .line 673
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showDeregisterThisInSideBar:Z

    .line 674
    return-void
.end method

.method public setShowEmailFieldInRegistration(Z)V
    .locals 0
    .param p1, "showEmailFieldInRegistration"    # Z

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showEmailFieldInRegistration:Z

    .line 564
    return-void
.end method

.method public setShowFiltersInMiniStatement(Z)V
    .locals 0
    .param p1, "showFiltersInMiniStatement"    # Z

    .prologue
    .line 513
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showFiltersInMiniStatement:Z

    .line 514
    return-void
.end method

.method public setShowMinistatement(Z)V
    .locals 0
    .param p1, "showMinistatement"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showMinistatement:Z

    .line 467
    return-void
.end method

.method public setShowPendingVouchers(Z)V
    .locals 0
    .param p1, "showPendingVouchers"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showPendingVouchers:Z

    .line 519
    return-void
.end method

.method public declared-synchronized setShowResultingBalance(Z)V
    .locals 1
    .param p1, "showResultingBalance"    # Z

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showResultingBalance:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowScanBarCodeInBillPay(Z)V
    .locals 0
    .param p1, "showScanBarCodeInBillPay"    # Z

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showScanBarCodeInBillPay:Z

    .line 544
    return-void
.end method

.method public setShowSecurityQuestion(Z)V
    .locals 0
    .param p1, "showSecurityQuestion"    # Z

    .prologue
    .line 533
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showSecurityQuestion:Z

    .line 534
    return-void
.end method

.method public declared-synchronized setShowTransactionTotalAmount(Z)V
    .locals 1
    .param p1, "showTransactionTotalAmount"    # Z

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showTransactionTotalAmount:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShowUserProfileInSettings(Z)V
    .locals 0
    .param p1, "showUserProfileInSettings"    # Z

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->showUserProfileInSettings:Z

    .line 554
    return-void
.end method

.method public declared-synchronized setSubscribersLookupEnabled(Z)V
    .locals 1
    .param p1, "subscribersLookupEnabled"    # Z

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->subscribersLookupEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    monitor-exit p0

    return-void

    .line 420
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportedLanguages([Ljava/lang/String;)V
    .locals 1
    .param p1, "supportedLanguages"    # [Ljava/lang/String;

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->supportedLanguages:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTimeFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeFormat"    # Ljava/lang/String;

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->timeFormat:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return-void

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTopUpAmountValues(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, "topUpAmountValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->topUpAmountValues:Ljava/util/ArrayList;

    .line 634
    return-void
.end method

.method public declared-synchronized setTotalBalanceInHeaderEnabled(Z)V
    .locals 1
    .param p1, "totalBalanceInHeaderEnabled"    # Z

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Parameters;->totalBalanceInHeaderEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTransactionsTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/TransactionType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p1, "transactionsTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/TransactionType;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->transactionsTypes:Ljava/util/ArrayList;

    .line 594
    return-void
.end method

.method public declared-synchronized setVisibleMenuItems(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, "visibleMenuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItems:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVisibleMenuItemsForAgents(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "visibleMenuItemsForAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItemsForAgents:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    monitor-exit p0

    return-void

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVisibleMenuItemsForMerchants(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p1, "visibleMenuItemsForMerchants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->visibleMenuItemsForMerchants:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWallets(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 215
    .local p1, "wallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->wallets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWhatsNewURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "whatsNewURL"    # Ljava/lang/String;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Parameters;->whatsNewURL:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public setZoomInMaps(I)V
    .locals 0
    .param p1, "zoomInMaps"    # I

    .prologue
    .line 665
    iput p1, p0, Lcom/tigo/mfsapp/model/Parameters;->zoomInMaps:I

    .line 666
    return-void
.end method
