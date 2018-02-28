.class Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;
.super Ljava/lang/Object;
.source "WithDrawVoucherConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->onTransactionDeny()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->hideOkDialog()V

    .line 203
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->closeAndGoHome()V

    .line 204
    return-void
.end method
