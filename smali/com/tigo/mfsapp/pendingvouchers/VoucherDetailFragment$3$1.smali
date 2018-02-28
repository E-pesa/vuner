.class Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;
.super Ljava/lang/Object;
.source "VoucherDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->confirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    iget-object v1, v1, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$302(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 152
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$002(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;I)I

    .line 153
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;->this$1:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$400(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    .line 154
    return-void
.end method
