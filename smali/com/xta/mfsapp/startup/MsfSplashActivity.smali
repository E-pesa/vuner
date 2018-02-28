.class public Lcom/tigo/mfsapp/startup/MsfSplashActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MsfSplashActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/startup/MsfSplashActivity;->requestWindowFeature(I)Z

    .line 25
    invoke-virtual {p0}, Lcom/tigo/mfsapp/startup/MsfSplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 26
    const v3, 0x7f0300ab

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/startup/MsfSplashActivity;->setContentView(I)V

    .line 29
    const v3, 0x7f0d00ff

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/startup/MsfSplashActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 33
    .local v2, "versionText":Landroid/widget/TextView;
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 34
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 62
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->save()V

    .line 63
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 56
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 49
    return-void
.end method
