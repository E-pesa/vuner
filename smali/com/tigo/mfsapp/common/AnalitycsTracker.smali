.class public Lcom/tigo/mfsapp/common/AnalitycsTracker;
.super Ljava/lang/Object;
.source "AnalitycsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;


# instance fields
.field private instances:Lcom/tigo/mfsapp/common/AnalitycsTracker;

.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->mTrackers:Ljava/util/HashMap;

    .line 27
    return-void
.end method

.method private static createInstance()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/tigo/mfsapp/common/AnalitycsTracker;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;

    invoke-direct {v0}, Lcom/tigo/mfsapp/common/AnalitycsTracker;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->createInstance()V

    .line 51
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->INSTANCE:Lcom/tigo/mfsapp/common/AnalitycsTracker;

    return-object v0
.end method

.method public static getTrackerDev(Landroid/content/Context;)Lcom/google/android/gms/analytics/Tracker;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v1

    sget-object v2, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v3, 0x7f060300

    .line 63
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-virtual {v1, v2, p0, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 66
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    return-object v0
.end method

.method public static sendErrorEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sendtoAnalytics"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v1

    sget-object v2, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v3, 0x7f0602ff

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 114
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 115
    return-void
.end method

.method public static sendTimingTrack(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "intervalInMilliseconds"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v1

    sget-object v2, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v3, 0x7f0602ff

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 119
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setVariable(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->setValue(J)Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$TimingBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 121
    return-void
.end method

.method public static sendTransaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;D)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "transactionID"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "sku"    # Ljava/lang/String;
    .param p4, "total"    # Ljava/lang/Double;
    .param p5, "price"    # Ljava/lang/Double;
    .param p6, "fee"    # D

    .prologue
    .line 71
    new-instance v4, Lcom/google/android/gms/analytics/ecommerce/Product;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/ecommerce/Product;-><init>()V

    .line 72
    invoke-virtual {v4, p3}, Lcom/google/android/gms/analytics/ecommerce/Product;->setId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v4

    .line 73
    invoke-virtual {v4, p2}, Lcom/google/android/gms/analytics/ecommerce/Product;->setName(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v4

    const-string v5, "Tigo"

    .line 74
    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/ecommerce/Product;->setBrand(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v4

    .line 75
    invoke-virtual {p5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/ecommerce/Product;->setPrice(D)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v4

    const/4 v5, 0x1

    .line 76
    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/ecommerce/Product;->setQuantity(I)Lcom/google/android/gms/analytics/ecommerce/Product;

    move-result-object v1

    .line 77
    .local v1, "product":Lcom/google/android/gms/analytics/ecommerce/Product;
    new-instance v4, Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    const-string v5, "purchase"

    invoke-direct {v4, v5}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;-><init>(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v4, p1}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionId(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v4

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionAffiliation(Ljava/lang/String;)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v4

    .line 80
    invoke-virtual {p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionRevenue(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v4

    .line 81
    invoke-virtual {v4, p6, p7}, Lcom/google/android/gms/analytics/ecommerce/ProductAction;->setTransactionTax(D)Lcom/google/android/gms/analytics/ecommerce/ProductAction;

    move-result-object v2

    .line 82
    .local v2, "productAction":Lcom/google/android/gms/analytics/ecommerce/ProductAction;
    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;-><init>()V

    .line 83
    invoke-virtual {v4, v1}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->addProduct(Lcom/google/android/gms/analytics/ecommerce/Product;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 84
    invoke-virtual {v4, v2}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->setProductAction(Lcom/google/android/gms/analytics/ecommerce/ProductAction;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;

    .line 86
    .local v0, "builder":Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v4

    sget-object v5, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v6, 0x7f0602ff

    .line 87
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-virtual {v4, v5, p0, v6}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v3

    .line 89
    .local v3, "t":Lcom/google/android/gms/analytics/Tracker;
    const-string v4, "transaction"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ScreenViewBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public static sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cat_UI_Action"    # Ljava/lang/String;
    .param p2, "action_Button_Press"    # Ljava/lang/String;
    .param p3, "eventClickonRefreshBalance"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v1

    sget-object v2, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v3, 0x7f0602ff

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 104
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "ui_action"

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "button_press"

    .line 106
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    const-string v2, "Refresh_Balance_Button"

    .line 107
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 110
    return-void
.end method

.method public static sendViewVisit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "nameAnalyticsScreen"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getInstance()Lcom/tigo/mfsapp/common/AnalitycsTracker;

    move-result-object v1

    sget-object v2, Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;->APP_TRACKER:Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;

    const v3, 0x7f0602ff

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v3}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 97
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 99
    return-void
.end method


# virtual methods
.method declared-synchronized getTracker(Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;
    .locals 3
    .param p1, "trackerId"    # Lcom/tigo/mfsapp/common/AnalitycsTracker$TrackerName;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "trackingID"    # Ljava/lang/String;

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    invoke-static {p2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 127
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0, p3}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 128
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    .line 129
    iget-object v2, p0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/common/AnalitycsTracker;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
