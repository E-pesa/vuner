.class Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;
.super Ljava/util/TimerTask;
.source "MerchantPaymentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->doListRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1$1;-><init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    return-void
.end method
