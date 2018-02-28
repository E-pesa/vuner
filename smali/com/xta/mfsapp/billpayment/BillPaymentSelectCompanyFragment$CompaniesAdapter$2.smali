.class Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;
.super Landroid/widget/Filter;
.source "BillPaymentSelectCompanyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->getFilter()Landroid/widget/Filter;
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
    .line 379
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v0, "companies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Company;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 387
    .local v4, "stringToSearch":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v5, v5, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Company;

    .line 389
    .local v1, "company":Lcom/tigo/mfsapp/model/Company;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "companyName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 393
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v1    # "company":Lcom/tigo/mfsapp/model/Company;
    .end local v2    # "companyName":Ljava/lang/String;
    :cond_1
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 398
    .local v3, "result":Landroid/widget/Filter$FilterResults;
    iput-object v0, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 399
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 401
    return-object v3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    iget-object v1, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$202(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 410
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-nez v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->notifyDataSetInvalidated()V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter$2;->this$1:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
