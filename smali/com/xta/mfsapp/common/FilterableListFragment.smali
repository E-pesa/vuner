.class public abstract Lcom/tigo/mfsapp/common/FilterableListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "FilterableListFragment.java"


# instance fields
.field private filtersView:Landroid/widget/Spinner;

.field private firterable:Z

.field private listView:Landroid/widget/ListView;

.field private menu:Landroid/view/Menu;

.field protected titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->firterable:Z

    return-void
.end method


# virtual methods
.method public buildView()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 64
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v5, v0, Lcom/tigo/mfsapp/common/FilterableList;

    if-nez v5, :cond_0

    .line 66
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Adapter class must implement FilterableList interface"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v3, v0

    .line 69
    check-cast v3, Lcom/tigo/mfsapp/common/FilterableList;

    .line 71
    .local v3, "filterable":Lcom/tigo/mfsapp/common/FilterableList;
    iget-object v5, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-virtual {p0, v8}, Lcom/tigo/mfsapp/common/FilterableListFragment;->setHasOptionsMenu(Z)V

    .line 75
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v7, 0x1090009

    invoke-direct {v4, v5, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 76
    .local v4, "filtersAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-interface {v3}, Lcom/tigo/mfsapp/common/FilterableList;->getCategoriesNames()[Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "categoriesNames":[Ljava/lang/String;
    array-length v7, v1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v2, v1, v5

    .line 80
    .local v2, "category":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 78
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "category":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v7, 0x7f060043

    invoke-virtual {v5, v7}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f060044

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 86
    iget-object v5, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    invoke-virtual {v5, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 87
    iget-object v5, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    new-instance v6, Lcom/tigo/mfsapp/common/FilterableListFragment$1;

    invoke-direct {v6, p0, v3}, Lcom/tigo/mfsapp/common/FilterableListFragment$1;-><init>(Lcom/tigo/mfsapp/common/FilterableListFragment;Lcom/tigo/mfsapp/common/FilterableList;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 115
    return-void
.end method

.method public abstract getAdapter()Landroid/widget/ListAdapter;
.end method

.method public getFiltersView()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f030057

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getMenuItems()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public isCategoryFavoriteSelected()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 122
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isCategoryShowAllSelected()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isFirterable()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->firterable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->menu:Landroid/view/Menu;

    .line 145
    iget-boolean v2, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->firterable:Z

    if-eqz v2, :cond_0

    .line 147
    const/high16 v2, 0x7f0e0000

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
    const v2, 0x7f0d02bb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 150
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/widget/SearchViewCompat;->newSearchView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 151
    .local v1, "searchView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 153
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 174
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    .end local v1    # "searchView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0    # "menuItem":Landroid/view/MenuItem;
    .restart local v1    # "searchView":Landroid/view/View;
    :cond_1
    invoke-static {v0, v1}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 158
    new-instance v2, Lcom/tigo/mfsapp/common/FilterableListFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/FilterableListFragment$2;-><init>(Lcom/tigo/mfsapp/common/FilterableListFragment;)V

    invoke-static {v1, v2}, Landroid/support/v4/widget/SearchViewCompat;->setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListenerCompat;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->getLayoutId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->listView:Landroid/widget/ListView;

    .line 44
    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->filtersView:Landroid/widget/Spinner;

    .line 45
    const v1, 0x7f0d0130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->titleTextView:Landroid/widget/TextView;

    .line 46
    return-object v0
.end method

.method public setFirterable(Z)V
    .locals 0
    .param p1, "firterable"    # Z

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->firterable:Z

    .line 189
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tigo/mfsapp/common/FilterableListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    return-void
.end method
