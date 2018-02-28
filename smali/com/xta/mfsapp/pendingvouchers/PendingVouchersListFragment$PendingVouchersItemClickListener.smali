.class Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;
.super Ljava/lang/Object;
.source "PendingVouchersListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingVouchersItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;->this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;-><init>(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)V

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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;->this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->access$100(Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;)Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersAdapter;->getItem(I)Lcom/tigo/mfsapp/model/PendingVouchers;

    move-result-object v0

    .line 79
    .local v0, "voucher":Lcom/tigo/mfsapp/model/PendingVouchers;
    iget-object v1, p0, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment$PendingVouchersItemClickListener;->this$0:Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/pendingvouchers/PendingVouchersListFragment;->ShowVoucherDetails(Lcom/tigo/mfsapp/model/PendingVouchers;)V

    .line 80
    return-void
.end method
