.class Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;
.super Ljava/lang/Object;
.source "BillPaymentSelectCompanyFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 143
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 148
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v7, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-virtual {v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/Company;

    .line 150
    .local v6, "selectedCompany":Lcom/tigo/mfsapp/model/Company;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "PARAM_SELECTED_COMPANY"

    invoke-virtual {v2, v7, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 153
    iget-object v7, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-virtual {v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->isCategoryFavoriteSelected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 156
    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Company;->getFavoriteReference()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "favoritejson":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 160
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 161
    .local v0, "b":Lcom/google/gson/Gson;
    const-class v7, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    invoke-virtual {v0, v5, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    .line 164
    .local v4, "favorite1":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    const-string v7, "PARAM_REF_NUMBER"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getReferenceNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v7, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getAmount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v7, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getReferenceType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v0    # "b":Lcom/google/gson/Gson;
    .end local v4    # "favorite1":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    .end local v5    # "favoritejson":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    invoke-direct {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;-><init>()V

    .line 182
    .local v1, "billPaymentEnterAmount":Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->initForm(Landroid/os/Bundle;)V

    .line 183
    iget-object v7, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-virtual {v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    check-cast v7, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v7, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 184
    return-void

    .line 168
    .end local v1    # "billPaymentEnterAmount":Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    .restart local v5    # "favoritejson":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;->this$0:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    invoke-static {v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    .line 171
    .local v3, "favorite":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Company;->getCompanyDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 173
    const-string v8, "PARAM_REF_NUMBER"

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getReferenceNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v8, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getAmount()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v8, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getReferenceType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
