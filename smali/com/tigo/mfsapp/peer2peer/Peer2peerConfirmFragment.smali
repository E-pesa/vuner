.class public Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "Peer2peerConfirmFragment.java"


# instance fields
.field private pinCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->pinCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv.tigo.mfsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 61
    const-string v1, ""

    .line 63
    .local v1, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "wallet":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "balance":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0602c9

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v7}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->fee:Ljava/lang/Float;

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

    .line 75
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

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "Send Money"

    const-string v2, "SendMoney"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f0602b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 46
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 8
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 22
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

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->pinCode:Ljava/lang/String;

    .line 26
    :cond_1
    const/4 v4, 0x0

    .line 27
    .local v4, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    .line 28
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->transactionDescription:Ljava/lang/String;

    .line 33
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->pinCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->MSISDN:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->amount:Ljava/lang/Float;

    iget-object v6, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->transactionDescription:Ljava/lang/String;

    iget-object v7, p0, Lcom/tigo/mfsapp/peer2peer/Peer2peerConfirmFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lcom/tigo/mfsapp/service/Connection;->requestPeer2peer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;)V

    .line 34
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method
