.class Lcom/tigo/mfsapp/maps/MapTabsFragment$1;
.super Ljava/lang/Object;
.source "MapTabsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapTabsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/MapTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/MapTabsFragment;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0d02a7

    .line 49
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->access$000(Lcom/tigo/mfsapp/maps/MapTabsFragment;)Landroid/support/v4/app/FragmentTabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 50
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->access$000(Lcom/tigo/mfsapp/maps/MapTabsFragment;)Landroid/support/v4/app/FragmentTabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 52
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->access$000(Lcom/tigo/mfsapp/maps/MapTabsFragment;)Landroid/support/v4/app/FragmentTabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTabHost;->getCurrentTab()I

    move-result v0

    .line 57
    .local v0, "activeTab":I
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->access$000(Lcom/tigo/mfsapp/maps/MapTabsFragment;)Landroid/support/v4/app/FragmentTabHost;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 58
    .restart local v2    # "v":Landroid/view/View;
    if-eqz v2, :cond_2

    move-object v3, v2

    .line 59
    check-cast v3, Landroid/widget/TextView;

    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "v":Landroid/view/View;
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapTabsFragment$1;->this$0:Lcom/tigo/mfsapp/maps/MapTabsFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/maps/MapTabsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    :cond_2
    return-void
.end method
