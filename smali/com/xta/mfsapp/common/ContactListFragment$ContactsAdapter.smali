.class Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
.super Lcom/tigo/mfsapp/adapters/ContactsAdapter;
.source "ContactListFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/FilterableList;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/common/ContactListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private indexAdapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

.field private final indexListView:Landroid/widget/ListView;

.field private final listView:Landroid/widget/ListView;

.field private sectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/tigo/mfsapp/common/ContactListFragment;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment;Landroid/widget/ListView;Landroid/widget/ListView;)V
    .locals 1
    .param p2, "listView"    # Landroid/widget/ListView;
    .param p3, "indexListView"    # Landroid/widget/ListView;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    .line 166
    invoke-virtual {p1}, Lcom/tigo/mfsapp/common/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;-><init>(Landroid/content/Context;)V

    .line 167
    iput-object p3, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    .line 168
    iput-object p2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->listView:Landroid/widget/ListView;

    .line 169
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$1;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Lcom/tigo/mfsapp/common/ContactListFragment;)V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->loadContacts(Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V

    .line 208
    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sectionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sectionList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sections:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexAdapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->listView:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected buildIndexView()V
    .locals 6

    .prologue
    .line 379
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/common/ContactListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x109000f

    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment;->access$600(Lcom/tigo/mfsapp/common/ContactListFragment;)Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;Landroid/content/Context;I[Ljava/lang/Object;Lcom/tigo/mfsapp/common/ContactListFragment$1;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexAdapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    .line 380
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexAdapter:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 382
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->indexListView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 395
    return-void
.end method

.method public getCategoriesNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 241
    .local v0, "categoriesNames":[Ljava/lang/String;
    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$2;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V

    return-object v0
.end method

.method public getFilterForCategory(ILjava/lang/String;)Landroid/widget/Filter;
    .locals 1
    .param p1, "categoryPosition"    # I
    .param p2, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterForShowAllCategory()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 254
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$3;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$3;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V

    return-object v0
.end method

.method public getFilterForShowFavoritesCategory()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 273
    new-instance v0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$4;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$4;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V

    return-object v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 349
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected getRowLayoutId()I
    .locals 1

    .prologue
    .line 213
    const v0, 0x7f030042

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 4
    .param p1, "arg0"    # I

    .prologue
    .line 355
    iget-object v3, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 358
    .local v0, "alphaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 359
    .local v1, "groupIndex":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 362
    .local v2, "offset":I
    if-le v2, p1, :cond_1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    .line 368
    .end local v0    # "alphaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "groupIndex":I
    .end local v2    # "offset":I
    :cond_0
    :goto_1
    return v1

    .line 364
    .restart local v0    # "alphaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1    # "groupIndex":I
    .restart local v2    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 365
    goto :goto_0

    .line 368
    .end local v0    # "alphaIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "groupIndex":I
    .end local v2    # "offset":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 292
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 294
    const v6, 0x7f0d00fc

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "header":Landroid/view/View;
    const/4 v4, 0x0

    .line 298
    .local v4, "headerVisible":Z
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Contact;

    .line 299
    .local v1, "currentitem":Lcom/tigo/mfsapp/model/Contact;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Contact;->getContactName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, "firstChar":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 303
    const/4 v4, 0x1

    .line 313
    :goto_0
    if-eqz v4, :cond_2

    .line 315
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 316
    const v6, 0x7f0d00fd

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    .local v0, "contactIndexText":Landroid/widget/TextView;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v0    # "contactIndexText":Landroid/widget/TextView;
    :goto_1
    iget-object v6, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->listView:Landroid/widget/ListView;

    new-instance v7, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;

    invoke-direct {v7, p0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;-><init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 343
    return-object p2

    .line 306
    :cond_0
    add-int/lit8 v6, p1, -0x1

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Contact;

    .line 307
    .local v5, "previousItem":Lcom/tigo/mfsapp/model/Contact;
    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Contact;->getContactName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const/4 v4, 0x0

    goto :goto_0

    .line 310
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 319
    .end local v5    # "previousItem":Lcom/tigo/mfsapp/model/Contact;
    :cond_2
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
