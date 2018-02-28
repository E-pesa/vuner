.class public Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BankToWalletFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

.field private banks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bank;",
            ">;"
        }
    .end annotation
.end field

.field private layoutProgressView:Landroid/view/View;

.field private listBanks:Landroid/widget/ListView;

.field private pinCode:Ljava/lang/String;

.field private selectedBank:Lcom/tigo/mfsapp/model/Bank;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)Lcom/tigo/mfsapp/model/Bank;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->selectedBank:Lcom/tigo/mfsapp/model/Bank;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;Lcom/tigo/mfsapp/model/Bank;)Lcom/tigo/mfsapp/model/Bank;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/Bank;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->selectedBank:Lcom/tigo/mfsapp/model/Bank;

    return-object p1
.end method


# virtual methods
.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->layoutProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 80
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    const-string v1, "ARG_PINCODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->pinCode:Ljava/lang/String;

    .line 51
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->submit()V

    .line 52
    return-void

    .line 49
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->pinCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 58
    const v1, 0x7f03005c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->listBanks:Landroid/widget/ListView;

    .line 61
    const v1, 0x7f0d0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->layoutProgressView:Landroid/view/View;

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->listBanks:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->adapter:Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 64
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->listBanks:Landroid/widget/ListView;

    new-instance v2, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;-><init>(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->showProgressDialog()V

    .line 74
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 92
    instance-of v1, p2, Lcom/tigo/mfsapp/service/BankToWalletResponse;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 94
    check-cast v0, Lcom/tigo/mfsapp/service/BankToWalletResponse;

    .line 95
    .local v0, "bankToWalletResponse":Lcom/tigo/mfsapp/service/BankToWalletResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/BankToWalletResponse;->getBanks()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->banks:Ljava/util/ArrayList;

    .line 97
    new-instance v1, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030021

    iget-object v4, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->banks:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->adapter:Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

    .line 98
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->adapter:Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;->notifyDataSetChanged()V

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->listBanks:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->adapter:Lcom/tigo/mfsapp/adapters/BankToWalletAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->hideProgressDialog()V

    .line 102
    .end local v0    # "bankToWalletResponse":Lcom/tigo/mfsapp/service/BankToWalletResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 85
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->pinCode:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestBankToWallet(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->layoutProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    return-void
.end method
