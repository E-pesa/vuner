.class public Lcom/tigo/mfsapp/maps/MapTabsFragment;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "MapTabsFragment.java"


# static fields
.field public static final ACTIVE_TAB:Ljava/lang/String; = "ACTIVE_TAB"

.field public static final AGENT_KEY:Ljava/lang/String; = "AGENT_KEY"

.field public static final MERCHANT_KEY:Ljava/lang/String; = "MERCHANT_KEY"

.field public static final TYPE_KEY:Ljava/lang/String; = "TYPE_KEY"


# instance fields
.field private tabHost:Landroid/support/v4/app/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/maps/MapTabsFragment;)Landroid/support/v4/app/FragmentTabHost;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapTabsFragment;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    return-object v0
.end method

.method private buildTabLayout(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "inf"    # Landroid/view/LayoutInflater;

    .prologue
    .line 84
    const v1, 0x7f0300c7

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "tab":Landroid/view/View;
    const v1, 0x7f0d02a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    new-instance v2, Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/FragmentTabHost;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    .line 31
    const v2, 0x7f030095

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 34
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v2, "YESICA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> Parameter received TYPE_KEY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "TYPE_KEY"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    const-string v4, "map"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f060180

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 40
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    const-string v4, "list"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f06017d

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 45
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    new-instance v3, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;-><init>(Lcom/tigo/mfsapp/maps/MapTabsFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 67
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d02a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 68
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/TextView;

    .end local v1    # "v":Landroid/view/View;
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    return-object v2
.end method
