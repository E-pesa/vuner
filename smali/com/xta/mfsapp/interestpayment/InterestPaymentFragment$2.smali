.class Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;
.super Ljava/lang/Object;
.source "InterestPaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->showTransactionConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->hideOkDialog()V

    .line 246
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$2;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->closeAndGoHome()V

    .line 247
    return-void
.end method
