.class Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;
.super Ljava/lang/Object;
.source "BillPaymentSelectCompanyFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;->this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 4
    .param p1, "yes"    # Z

    .prologue
    .line 333
    if-eqz p1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;->this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v0, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;->this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    iget v1, v1, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;->this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v0, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;->this$2:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v1, v1, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "BILL_PAYMENT_FAVORITE"

    new-instance v3, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1$1;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$1$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tigo/mfsapp/utils/FavoriteManager;->savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 361
    :cond_0
    return-void
.end method
