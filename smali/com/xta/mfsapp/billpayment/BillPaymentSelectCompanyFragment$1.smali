.class Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;
.super Ljava/lang/Object;
.source "BillPaymentSelectCompanyFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    const v2, 0x7f06015a

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    return-void
.end method

.method public onSuccess(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lcom/tigo/mfsapp/utils/EncryptedStorge$Encryptable;>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$002(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 78
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V

    .line 79
    return-void
.end method
