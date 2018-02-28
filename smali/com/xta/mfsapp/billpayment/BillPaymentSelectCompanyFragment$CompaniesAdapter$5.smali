.class Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;
.super Landroid/widget/Filter;
.source "BillPaymentSelectCompanyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->getFilterForShowFavoritesCategory()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 540
    .local v0, "result":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v2, v2, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 541
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v1, v1, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 543
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 550
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v1, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$202(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 552
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->notifyDataSetInvalidated()V

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$5;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
