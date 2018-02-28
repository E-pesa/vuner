.class Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;
.super Ljava/lang/Object;
.source "PendingVouchersListFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/pendingvouchers/VoucherDetailFragment$OnVoucherDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->ShowVoucherDetails(Lcom/tigo/mfsapp/model/PendingVouchers;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;->this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public voucherDeleted(Lcom/tigo/mfsapp/model/PendingVouchers;)V
    .locals 1
    .param p1, "voucher"    # Lcom/tigo/mfsapp/model/PendingVouchers;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;->this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->refreshList()V

    .line 97
    return-void
.end method
