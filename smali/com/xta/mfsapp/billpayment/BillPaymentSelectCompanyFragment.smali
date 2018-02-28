.class public Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;
.super Lcom/tigo/mfsapp/common/FilterableListFragment;
.source "BillPaymentSelectCompanyFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;
    }
.end annotation


# instance fields
.field adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

.field private favoriteCompanies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation
.end field

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;",
            ">;"
        }
    .end annotation
.end field

.field private filteredCompanies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation
.end field

.field private final handler:Landroid/os/Handler;

.field private tigoCompanyCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/CompanyCategory;",
            ">;"
        }
    .end annotation
.end field

.field private unfilteredCompanies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;-><init>()V

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->handler:Landroid/os/Handler;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favorites:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->buildFavorites()V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->filteredCompanies:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->filteredCompanies:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favoriteCompanies:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->tigoCompanyCategories:Ljava/util/ArrayList;

    return-object v0
.end method

.method private buildFavorites()V
    .locals 10

    .prologue
    .line 203
    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favorites:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 205
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favoriteCompanies:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 210
    .local v0, "builder":Lcom/google/gson/Gson;
    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    .line 213
    .local v2, "favorite":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Company;

    .line 216
    .local v1, "company":Lcom/tigo/mfsapp/model/Company;
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "json":Ljava/lang/String;
    const-string v7, "YESICA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getCompanyId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " vs company item: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getCompanyId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getCompanyId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 223
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Company;

    .line 224
    .local v4, "newCompany":Lcom/tigo/mfsapp/model/Company;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tigo/mfsapp/model/Company;->setCompanyDescription(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/tigo/mfsapp/model/Company;->setFavoriteReference(Ljava/lang/String;)V

    .line 228
    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favoriteCompanies:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1    # "company":Lcom/tigo/mfsapp/model/Company;
    .end local v2    # "favorite":Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "newCompany":Lcom/tigo/mfsapp/model/Company;
    :cond_2
    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->tigoCompanyCategories:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->hideProgressDialog()V

    .line 242
    .end local v0    # "builder":Lcom/google/gson/Gson;
    :cond_3
    return-void
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->retrySubmit:Ljava/lang/Boolean;

    .line 571
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/FilterableListFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 573
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->hideProgressDialog()V

    .line 577
    :cond_0
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    return-object v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-string v0, "Bill_Pay"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 101
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 120
    instance-of v2, p2, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;

    if-eqz v2, :cond_4

    move-object v1, p2

    .line 122
    check-cast v1, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;

    .line 123
    .local v1, "companiesResponse":Lcom/tigo/mfsapp/service/TigoCompaniesResponse;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;->getTigoCompanies()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    .line 125
    :cond_0
    const-string v2, "companiesResponse.getTigoCompanies() response null"

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->hideProgressDialog()V

    .line 193
    .end local v1    # "companiesResponse":Lcom/tigo/mfsapp/service/TigoCompaniesResponse;
    :cond_1
    :goto_0
    return-void

    .line 129
    .restart local v1    # "companiesResponse":Lcom/tigo/mfsapp/service/TigoCompaniesResponse;
    :cond_2
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/TigoCompaniesResponse;->getTigoCompanies()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->filteredCompanies:Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->buildFavorites()V

    .line 138
    .end local v1    # "companiesResponse":Lcom/tigo/mfsapp/service/TigoCompaniesResponse;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->tigoCompanyCategories:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 140
    new-instance v2, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$CompaniesAdapter;

    .line 141
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->buildView()V

    .line 143
    new-instance v2, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$2;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favoriteCompanies:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->hideProgressDialog()V

    goto :goto_0

    .line 132
    :cond_4
    instance-of v2, p2, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;

    if-eqz v2, :cond_3

    move-object v0, p2

    .line 134
    check-cast v0, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;

    .line 135
    .local v0, "categoriesResponse":Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/TigoCompanyCategoriesResponse;->getTigoCompanyCategories()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->tigoCompanyCategories:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-super {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_0
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->setAutoShowProgressDialog(Z)V

    .line 67
    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favorites:Ljava/util/ArrayList;

    .line 68
    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->unfilteredCompanies:Ljava/util/ArrayList;

    .line 69
    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->favoriteCompanies:Ljava/util/ArrayList;

    .line 71
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v0

    const-class v1, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    const-string v2, "BILL_PAYMENT_FAVORITE"

    new-instance v3, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment$1;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getAll(Ljava/lang/Class;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 88
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->showProgressDialog()V

    .line 89
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentSelectCompanyFragment;->submit()V

    .line 90
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 106
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "sessionToken":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestTigoCompanies(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestTigoCompanyCategories(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method
