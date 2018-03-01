.class public Lcom/tigo/mfsapp/maps/MapsActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "MapsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 12
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    const v4, 0x7f030096

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/maps/MapsActivity;->setContentView(I)V

    .line 14
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "logo"

    const-string v6, "drawable"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapsActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 15
    .local v3, "resId":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 16
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setLogo(I)V

    .line 17
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 18
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 19
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 22
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v4, "TYPE_KEY"

    const-string v5, "AGENT_KEY"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v2, Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/maps/MapTabsFragment;-><init>()V

    .line 26
    .local v2, "mapTabsFragment":Lcom/tigo/mfsapp/maps/MapTabsFragment;
    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const v5, 0x7f0d021e

    invoke-virtual {v4, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 30
    return-void
.end method
