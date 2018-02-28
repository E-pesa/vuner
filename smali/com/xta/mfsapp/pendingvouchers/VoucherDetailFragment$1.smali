.class Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$1;
.super Ljava/lang/Object;
.source "VoucherDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 90
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$1;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$1;->this$0:Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment;->cancelVoucher()V

    .line 96
    return-void
.end method
