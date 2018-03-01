.class Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;
.super Ljava/lang/Object;
.source "BillPaymentListPaymentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BillPaymentPaymentsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)V

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
    .line 151
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bill selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bill;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->access$102(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;Lcom/tigo/mfsapp/model/Bill;)Lcom/tigo/mfsapp/model/Bill;

    .line 154
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->setBillSelected(I)V

    .line 156
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)V

    .line 160
    return-void
.end method
