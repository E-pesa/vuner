.class Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;
.super Ljava/lang/Object;
.source "VoucherDetailFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->cancelVoucher()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 5
    .param p1, "yes"    # Z

    .prologue
    const/4 v4, 0x1

    .line 123
    if-eqz p1, :cond_0

    .line 126
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1, v4}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$002(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;I)I

    .line 129
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$100(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    new-instance v2, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$202(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 140
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-virtual {v1, v2, v4}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 144
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->access$200(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3$1;-><init>(Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$3;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
