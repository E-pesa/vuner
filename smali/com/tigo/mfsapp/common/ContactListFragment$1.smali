.class Lcom/tigo/mfsapp/common/ContactListFragment$1;
.super Ljava/lang/Object;
.source "ContactListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/ContactListFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/ContactListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/ContactListFragment;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$1;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 67
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$1;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment;->access$000(Lcom/tigo/mfsapp/common/ContactListFragment;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Contact;

    .line 70
    .local v0, "contact":Lcom/tigo/mfsapp/model/Contact;
    iget-object v1, p0, Lcom/tigo/mfsapp/common/ContactListFragment$1;->this$0:Lcom/tigo/mfsapp/common/ContactListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/common/ContactListFragment;->access$000(Lcom/tigo/mfsapp/common/ContactListFragment;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;->onSelectedContact(Lcom/tigo/mfsapp/model/Contact;)V

    .line 72
    .end local v0    # "contact":Lcom/tigo/mfsapp/model/Contact;
    :cond_0
    return-void
.end method
