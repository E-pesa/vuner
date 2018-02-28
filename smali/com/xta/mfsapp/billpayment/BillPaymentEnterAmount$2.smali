.class Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$2;
.super Ljava/lang/Object;
.source "BillPaymentEnterAmount.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V

    .line 213
    return-void
.end method
