.class public Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "DepositMoneyConfirmFragment.java"


# instance fields
.field protected commission:Ljava/lang/Float;

.field private pinCode:Ljava/lang/String;

.field protected textCommission:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method private showCommission(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 43
    iget-object v2, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->commission:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 45
    const v2, 0x7f0d0076

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "commissionLineView":Landroid/view/View;
    const v2, 0x7f0d0074

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 47
    .local v1, "separator":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .end local v0    # "commissionLineView":Landroid/view/View;
    .end local v1    # "separator":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCommission()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->commission:Ljava/lang/Float;

    return-object v0
.end method

.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv.tigo.mfsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v1, ""

    .line 92
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "wallet":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "balance":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602c7

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v7}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->commission:Ljava/lang/Float;

    invoke-static {v7}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v2, v5, v6

    const/4 v6, 0x4

    aput-object v0, v5, v6

    const/4 v6, 0x5

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .end local v0    # "balance":Ljava/lang/String;
    .end local v1    # "string":Ljava/lang/String;
    .end local v2    # "wallet":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getConfirmationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f0602b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v1, 0x7f030049

    iput v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->layoutId:I

    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->textCommission:Landroid/widget/TextView;

    .line 34
    iget-object v1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->textCommission:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->commission:Ljava/lang/Float;

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->showCommission(Landroid/view/View;)V

    .line 38
    return-object v0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 55
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->pinCode:Ljava/lang/String;

    .line 59
    :cond_1
    const/4 v4, 0x0

    .line 60
    .local v4, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->pinCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->MSISDN:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->amount:Ljava/lang/Float;

    iget-object v6, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Connection;->requestDepositMoney(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 62
    return-void
.end method

.method public setCommission(Ljava/lang/Float;)V
    .locals 0
    .param p1, "commission"    # Ljava/lang/Float;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/tigo/mfsapp/depositmoney/DepositMoneyConfirmFragment;->commission:Ljava/lang/Float;

    .line 118
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method
