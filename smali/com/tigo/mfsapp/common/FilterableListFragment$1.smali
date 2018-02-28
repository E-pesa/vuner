.class Lcom/tigo/mfsapp/common/FilterableListFragment$1;
.super Ljava/lang/Object;
.source "FilterableListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/FilterableListFragment;->buildView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/FilterableListFragment;

.field final synthetic val$filterable:Lcom/tigo/mfsapp/common/FilterableList;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/FilterableListFragment;Lcom/tigo/mfsapp/common/FilterableList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/FilterableListFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$1;->this$0:Lcom/tigo/mfsapp/common/FilterableListFragment;

    iput-object p2, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$1;->val$filterable:Lcom/tigo/mfsapp/common/FilterableList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v0, 0x0

    .line 94
    .local v0, "filter":Landroid/widget/Filter;
    if-nez p3, :cond_0

    .line 96
    iget-object v1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$1;->val$filterable:Lcom/tigo/mfsapp/common/FilterableList;

    invoke-interface {v1}, Lcom/tigo/mfsapp/common/FilterableList;->getFilterForShowAllCategory()Landroid/widget/Filter;

    move-result-object v0

    .line 105
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 97
    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$1;->val$filterable:Lcom/tigo/mfsapp/common/FilterableList;

    invoke-interface {v1}, Lcom/tigo/mfsapp/common/FilterableList;->getFilterForShowFavoritesCategory()Landroid/widget/Filter;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/common/FilterableListFragment$1;->val$filterable:Lcom/tigo/mfsapp/common/FilterableList;

    add-int/lit8 v3, p3, -0x2

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/tigo/mfsapp/common/FilterableList;->getFilterForCategory(ILjava/lang/String;)Landroid/widget/Filter;

    move-result-object v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
