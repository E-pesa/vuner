.class Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1$1;
.super Ljava/lang/Object;
.source "MerchantPaymentListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1$1;->this$1:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1$1;->this$1:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;->access$400(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;)V

    .line 237
    return-void
.end method
