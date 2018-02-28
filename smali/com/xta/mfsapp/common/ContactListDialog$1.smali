.class Lcom/tigo/mfsapp/common/ContactListDialog$1;
.super Ljava/lang/Object;
.source "ContactListDialog.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/ContactListDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/ContactListDialog;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/ContactListDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/ContactListDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tigo/mfsapp/common/ContactListDialog$1;->this$0:Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onSelectedContact(Lcom/tigo/mfsapp/model/Contact;)V
    .locals 1
    .param p1, "contact"    # Lcom/tigo/mfsapp/model/Contact;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListDialog$1;->this$0:Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/ContactListDialog;->access$000(Lcom/tigo/mfsapp/common/ContactListDialog;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/tigo/mfsapp/common/ContactListDialog$1;->this$0:Lcom/tigo/mfsapp/common/ContactListDialog;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/ContactListDialog;->access$000(Lcom/tigo/mfsapp/common/ContactListDialog;)Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tigo/mfsapp/common/ContactListFragment$OnContactListListener;->onSelectedContact(Lcom/tigo/mfsapp/model/Contact;)V

    .line 37
    :cond_0
    return-void
.end method
