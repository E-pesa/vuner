.class Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;
.super Ljava/lang/Object;
.source "BillPaymentEnterAmount.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->buildEditTextRefNumber()V
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
    .line 252
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const v5, 0x7f06016a

    const v4, 0x7f02011f

    .line 256
    if-nez p2, :cond_0

    .line 257
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 258
    check-cast v1, Landroid/widget/EditText;

    .line 259
    .local v1, "tx":Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "s":Ljava/lang/String;
    const-string v2, "Number"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 274
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "tx":Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-void

    .line 265
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v1    # "tx":Landroid/widget/EditText;
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$500(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$600(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v2

    const v3, 0x7f06016d

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0
.end method
