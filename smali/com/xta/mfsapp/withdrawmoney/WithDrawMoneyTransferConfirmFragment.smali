.class public Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "WithDrawMoneyTransferConfirmFragment.java"


# static fields
.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"

.field public static final PARAM_SENDER_NAME:Ljava/lang/String; = "PARAM_SENDER_NAME"

.field public static final PARAM_VOUCHER:Ljava/lang/String; = "PARAM_VOUCHER"


# instance fields
.field private amountTransferText:Landroid/widget/TextView;

.field private senderName:Ljava/lang/String;

.field private senderNameText:Landroid/widget/TextView;

.field private voucherNumber:Ljava/lang/String;

.field private voucherNumberText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060287

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->amount:Ljava/lang/Float;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const-string v0, "PARAM_AMOUNT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->amount:Ljava/lang/Float;

    .line 35
    const-string v0, "PARAM_VOUCHER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->voucherNumber:Ljava/lang/String;

    .line 36
    const-string v0, "PARAM_SENDER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->senderName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    if-eqz p1, :cond_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f06028b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->amountTransferText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->voucherNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->voucherNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->senderNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->senderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->submit()V

    .line 89
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->fee:Ljava/lang/Float;

    .line 62
    const v1, 0x7f030085

    iput v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->layoutId:I

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->senderNameText:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0d01f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->voucherNumberText:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0d01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->amountTransferText:Landroid/widget/TextView;

    .line 70
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 129
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 132
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 136
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 96
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 101
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "sessionToken":Ljava/lang/String;
    const-string v1, "1"

    .line 105
    .local v1, "walletID":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->voucherNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawMoneyTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method
