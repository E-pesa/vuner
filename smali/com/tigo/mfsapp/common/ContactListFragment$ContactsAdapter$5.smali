.class Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 333
    move v0, p2

    .line 334
    .local v0, "firstPosition":I
    iget-object v2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 335
    .local v1, "sectionIndex":I
    iget-object v2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v2}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v2}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$100(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$5;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v2}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$500(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->setSelectedIndex(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 328
    return-void
.end method
