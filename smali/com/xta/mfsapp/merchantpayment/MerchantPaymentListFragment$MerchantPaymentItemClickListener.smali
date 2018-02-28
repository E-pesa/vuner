.class Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;
.super Ljava/lang/Object;
.source "MerchantPaymentListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MerchantPaymentItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;-><init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V

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
    .line 76
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->access$200(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentAdapter;->getItem(I)Lcom/tigo/mfsapp/model/MerchantPaymet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->access$102(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;Lcom/tigo/mfsapp/model/MerchantPaymet;)Lcom/tigo/mfsapp/model/MerchantPaymet;

    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$MerchantPaymentItemClickListener;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->access$300(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V

    .line 79
    return-void
.end method
