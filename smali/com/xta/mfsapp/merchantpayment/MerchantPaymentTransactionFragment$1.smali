.class Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;
.super Ljava/lang/Object;
.source "MerchantPaymentTransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->onTransactionDeny()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->hideOkDialog()V

    .line 169
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->closeAndGoHome()V

    .line 170
    return-void
.end method
