.class Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;
.super Ljava/lang/Object;
.source "PincodeDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    const v3, 0x7f0601d9

    const v4, 0x7f0200d3

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isLengthValid()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isNumericDataOnly()Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setText(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v2

    const v3, 0x7f060143

    const v4, 0x7f0200b4

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$100(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 108
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$100(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 110
    :cond_4
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, "targetFragment":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, "data":Landroid/content/Intent;
    const-string v2, "PINCODE"

    iget-object v3, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->access$000(Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/components/PinCustomEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->dismiss()V

    .line 116
    iget-object v2, p0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment$1;->this$0:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getTargetRequestCode()I

    move-result v2

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method
