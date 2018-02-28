.class public Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
.super Lcom/tigo/mfsapp/common/FilterableListFragment;
.source "BankTranferFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;
    }
.end annotation


# instance fields
.field banks:Lorg/json/JSONArray;

.field private banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

.field private banksReady:Ljava/lang/Boolean;

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;",
            ">;"
        }
    .end annotation
.end field

.field private indexSelected:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/FilterableListFragment;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksReady:Ljava/lang/Boolean;

    .line 134
    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->favorites:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->buildFavorites()V

    return-void
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Lcom/tigo/mfsapp/adapters/BankInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->selectItem(Lcom/tigo/mfsapp/adapters/BankInfo;)V

    return-void
.end method

.method static synthetic access$402(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->indexSelected:I

    return p1
.end method

.method private buildFavorites()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->favorites:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksReady:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->buildView()V

    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getFiltersView()Landroid/widget/Spinner;

    move-result-object v0

    iget v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->indexSelected:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 85
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->hideProgressDialog()V

    .line 88
    :cond_0
    return-void
.end method

.method private createBankList()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banks:Lorg/json/JSONArray;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 113
    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banks:Lorg/json/JSONArray;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 114
    .local v3, "obj":Lorg/json/JSONObject;
    new-instance v4, Lcom/tigo/mfsapp/adapters/BankInfo;

    const-string v5, "BN"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "LIN"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "RNHIN"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/tigo/mfsapp/adapters/BankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 123
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    return-object v2
.end method

.method private selectItem(Lcom/tigo/mfsapp/adapters/BankInfo;)V
    .locals 2
    .param p1, "bankInfo"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 128
    new-instance v0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;-><init>()V

    .line 129
    .local v0, "fragment":Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;
    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->setBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)V

    .line 130
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->setBanksAdapter(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    .line 131
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 132
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .line 96
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->setFragment(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V

    .line 97
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->createBankList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->setList(Ljava/util/ArrayList;)V

    .line 98
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->setUnprocecedFavorites(Ljava/util/ArrayList;)V

    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->buildFavorites()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    return-object v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "Bank_Transfer"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 155
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/FilterableListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->setAutoShowProgressDialog(Z)V

    .line 48
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v1

    const-class v2, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    const-string v3, "BANK_TRANSFER_FAVORITE"

    new-instance v4, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getAll(Ljava/lang/Class;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 65
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getFiltersView()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->showProgressDialog()V

    .line 68
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->submit()V

    .line 69
    new-instance v1, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;)V

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 70
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v1, 0x1

    .line 167
    check-cast p2, Lcom/tigo/mfsapp/service/BankLookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/BankLookupResponse;->getBanks()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banks:Lorg/json/JSONArray;

    .line 168
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksReady:Ljava/lang/Boolean;

    .line 169
    invoke-direct {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->buildFavorites()V

    .line 170
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getFiltersView()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 171
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 160
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestBankLookup(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method protected saveFavorites()V
    .locals 6

    .prologue
    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v2, "newFavorites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;>;"
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-static {}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->getFavorites()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 185
    .local v0, "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    .line 187
    .local v1, "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->isEqualToBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0    # "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    .end local v1    # "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    :cond_2
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->isChanged()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v3

    const-string v4, "BANK_TRANSFER_FAVORITE"

    new-instance v5, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$2;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$2;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/tigo/mfsapp/utils/FavoriteManager;->savaAll(Ljava/util/ArrayList;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskResult;)V

    .line 214
    :cond_3
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method
