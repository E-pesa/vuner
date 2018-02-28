.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "InternationalRemittanceSelectCompanyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

.field private listView:Landroid/widget/ListView;

.field private progressView:Landroid/view/View;

.field remittancePartner:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/RemittancePartner;",
            ">;"
        }
    .end annotation
.end field

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;)Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;Lcom/tigo/mfsapp/model/RemittancePartner;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/RemittancePartner;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->selectItem(Lcom/tigo/mfsapp/model/RemittancePartner;)V

    return-void
.end method

.method private selectItem(Lcom/tigo/mfsapp/model/RemittancePartner;)V
    .locals 2
    .param p1, "item"    # Lcom/tigo/mfsapp/model/RemittancePartner;

    .prologue
    .line 62
    new-instance v0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;-><init>()V

    .line 63
    .local v0, "fragment":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;
    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->setRemittancePartner(Lcom/tigo/mfsapp/model/RemittancePartner;)V

    .line 64
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 65
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->thereWasAnError:Z

    .line 145
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 136
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->thereWasAnError:Z

    .line 138
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const v0, 0x7f060210

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 151
    iget-boolean v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->closeAndGoHome()V

    .line 153
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 83
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->submit()V

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v1, 0x7f030067

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->listView:Landroid/widget/ListView;

    .line 38
    const v1, 0x7f0d0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->progressView:Landroid/view/View;

    .line 39
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 98
    instance-of v0, p2, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;

    if-eqz v0, :cond_0

    .line 101
    check-cast p2, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerCompaniesResponse;->getRemittancePartners()Lcom/tigo/mfsapp/model/RemittancePickUp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/RemittancePickUp;->getRemittancePartners()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->remittancePartner:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    .line 104
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->remittancePartner:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->setCompanies(Ljava/util/ArrayList;)V

    .line 106
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$InternationalRemittanceItemClickListener;-><init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->adapter:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceCompanyAdapter;->notifyDataSetChanged()V

    .line 109
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 88
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestInternationalRemittancePickUpByCustomerCompanies(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSelectCompanyListFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method
