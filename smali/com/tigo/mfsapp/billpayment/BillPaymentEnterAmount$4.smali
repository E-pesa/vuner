.class Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;
.super Ljava/lang/Object;
.source "BillPaymentEnterAmount.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->setDocumentType(Lcom/tigo/mfsapp/components/SelectDocumentType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    iput-object p2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f060062

    .line 586
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$202(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Lcom/tigo/mfsapp/model/ReferenceNumberKey;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 587
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$700(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    const v3, 0x7f060126

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    .line 589
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->access$800(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V

    .line 590
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 596
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
