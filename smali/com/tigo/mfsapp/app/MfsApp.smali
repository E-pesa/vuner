.class public Lcom/tigo/mfsapp/app/MfsApp;
.super Landroid/app/Application;
.source "MfsApp.java"


# static fields
.field private static instance:Lcom/tigo/mfsapp/app/MfsApp;


# instance fields
.field private SessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/tigo/mfsapp/app/MfsApp;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tigo/mfsapp/app/MfsApp;->instance:Lcom/tigo/mfsapp/app/MfsApp;

    return-object v0
.end method

.method public static isDebugBuild()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 30
    sget-object v1, Lcom/tigo/mfsapp/app/MfsApp;->instance:Lcom/tigo/mfsapp/app/MfsApp;

    if-nez v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/tigo/mfsapp/app/MfsApp;->instance:Lcom/tigo/mfsapp/app/MfsApp;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 69
    .local v1, "name":Ljava/lang/CharSequence;
    const-string v0, ""

    .line 70
    .local v0, "appname":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_0
    return-object v0
.end method

.method public getScreenSize()Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 63
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 64
    .local v0, "wm":Landroid/view/WindowManager;
    new-instance v1, Landroid/graphics/Point;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public declared-synchronized getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tigo/mfsapp/app/MfsApp;->SessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 53
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 56
    const-string v2, ""

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 23
    sput-object p0, Lcom/tigo/mfsapp/app/MfsApp;->instance:Lcom/tigo/mfsapp/app/MfsApp;

    .line 24
    invoke-virtual {p0}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/common/NewRelicService;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public declared-synchronized setSessionToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tigo/mfsapp/app/MfsApp;->SessionToken:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
