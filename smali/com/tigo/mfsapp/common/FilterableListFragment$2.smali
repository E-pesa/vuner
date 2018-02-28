.class Lcom/tigo/mfsapp/common/FilterableListFragment$2;
.super Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;
.source "FilterableListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/FilterableListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/FilterableListFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/FilterableListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/FilterableListFragment;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$2;->this$0:Lcom/tigo/mfsapp/common/FilterableListFragment;

    invoke-direct {p0}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$2;->this$0:Lcom/tigo/mfsapp/common/FilterableListFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
