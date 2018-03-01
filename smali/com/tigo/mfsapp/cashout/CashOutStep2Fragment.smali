.class public Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "CashOutStep2Fragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 66
    const-string v1, ""

    .line 68
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv.tigo.mfsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "wallet":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "balance":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060107

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->amount:Ljava/lang/Float;

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->fee:Ljava/lang/Float;

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    aput-object v2, v5, v9

    aput-object v0, v5, v10

    aput-object p1, v5, v11

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .end local v0    # "balance":Ljava/lang/String;
    .end local v2    # "wallet":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060106

    new-array v5, v11, [Ljava/lang/Object;

    aput-object p1, v5, v7

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->amount:Ljava/lang/Float;

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->fee:Ljava/lang/Float;

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->MSISDN:Ljava/lang/String;

    aput-object v6, v5, v10

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "Cash Out"

    const-string v2, "CashOut"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 36
    iget-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 45
    .local v1, "foundIt":Z
    invoke-static {}, Lcom/tigo/mfsapp/model/Agent;->getRecents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Agent;

    .line 47
    .local v0, "agent":Lcom/tigo/mfsapp/model/Agent;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Agent;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 49
    const/4 v1, 0x1

    .line 53
    .end local v0    # "agent":Lcom/tigo/mfsapp/model/Agent;
    :cond_1
    if-nez v1, :cond_2

    .line 55
    new-instance v0, Lcom/tigo/mfsapp/model/Agent;

    iget-object v2, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->MSISDN:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->phone:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/tigo/mfsapp/model/Agent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .restart local v0    # "agent":Lcom/tigo/mfsapp/model/Agent;
    invoke-static {}, Lcom/tigo/mfsapp/model/Agent;->getRecents()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/tigo/mfsapp/model/Agent;->SaveAll()V

    .line 60
    .end local v0    # "agent":Lcom/tigo/mfsapp/model/Agent;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 61
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 21
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 22
    .local v1, "token":Ljava/lang/String;
    const/4 v5, 0x0

    .line 23
    .local v5, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->transactionDescription:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->MSISDN:Ljava/lang/String;

    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->transactionDescription:Ljava/lang/String;

    iget-object v6, p0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->amount:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Connection;->requestCashout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 30
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
