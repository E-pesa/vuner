.class Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;
.super Ljava/lang/Object;
.source "YesNoDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;)Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;->confirm(Z)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment;->dismiss()V

    .line 52
    return-void
.end method
