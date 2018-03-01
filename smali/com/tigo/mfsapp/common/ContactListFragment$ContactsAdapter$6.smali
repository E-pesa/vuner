.class Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->buildIndexView()V
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
    .line 383
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 388
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->getPositionForSection(I)I

    move-result v0

    .line 389
    .local v0, "pos":I
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$800(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocusFromTouch()Z

    .line 390
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$800(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 391
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$6;->this$1:Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;->access$500(Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter;)Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/common/ContactListFragment$ContactsAdapter$IndexListAdapter;->setSelectedIndex(I)V

    .line 392
    return-void
.end method
