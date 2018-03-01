.class public Lcom/tigo/mfsapp/logs/LogsFragment;
.super Lcom/tigo/mfsapp/common/BaseFragment;
.source "LogsFragment.java"


# static fields
.field public static final ACTIVE_TAB:Ljava/lang/String; = "ACTIVE_TAB"

.field public static final ARG_PINCODE:Ljava/lang/String; = "ARG_PINCODE"


# instance fields
.field private tabHost:Landroid/support/v4/app/FragmentTabHost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/logs/LogsFragment;)Landroid/support/v4/app/FragmentTabHost;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/LogsFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    return-object v0
.end method

.method private buildTabLayout(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "inf"    # Landroid/view/LayoutInflater;

    .prologue
    .line 80
    const v1, 0x7f0300c7

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "tab":Landroid/view/View;
    const v1, 0x7f0d02a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f06008a

    .line 28
    new-instance v2, Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/FragmentTabHost;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    .line 30
    const v2, 0x7f030093

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const v5, 0x1020011

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    .line 33
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    const-string v4, "activity_log"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x7f060047

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/logs/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/tigo/mfsapp/logs/LogsFragment;->buildTabLayout(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 34
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowMinistatement()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowFiltersInMiniStatement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    const-string v4, "mini_statement"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/logs/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/tigo/mfsapp/logs/LogsFragment;->buildTabLayout(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 43
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    new-instance v3, Lcom/tigo/mfsapp/logs/LogsFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/logs/LogsFragment$1;-><init>(Lcom/tigo/mfsapp/logs/LogsFragment;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "ACTIVE_TAB"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    .local v0, "activeTab":I
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/FragmentTabHost;->setCurrentTab(I)V

    .line 67
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

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
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    return-object v2

    .line 39
    .end local v0    # "activeTab":I
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    iget-object v3, p0, Lcom/tigo/mfsapp/logs/LogsFragment;->tabHost:Landroid/support/v4/app/FragmentTabHost;

    const-string v4, "mini_statement"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/logs/LogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lcom/tigo/mfsapp/logs/LogsFragment;->buildTabLayout(Ljava/lang/String;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/LogsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0
.end method
