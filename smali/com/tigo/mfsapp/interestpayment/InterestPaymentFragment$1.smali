.class Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;
.super Ljava/lang/Object;
.source "InterestPaymentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->confirmInterestPayment()V
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
    .line 221
    iput-object p1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    iget-object v1, v1, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->access$102(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 228
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->access$202(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;I)I

    .line 229
    iget-object v0, p0, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment$1;->this$0:Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;->access$300(Lcom/tigo/mfsapp/interestpayment/InterestPaymentFragment;)V

    .line 230
    return-void
.end method
