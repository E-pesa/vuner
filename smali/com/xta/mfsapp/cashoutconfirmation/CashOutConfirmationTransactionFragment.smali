.class public Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "CashOutConfirmationTransactionFragment.java"


# instance fields
.field private approve:Z

.field private deny:Landroid/widget/Button;

.field private transaction:Lcom/tigo/mfsapp/model/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method

.method private onTransactionDeny()V
    .locals 3

    .prologue
    .line 168
    const v0, 0x7f060104

    const v1, 0x7f060103

    new-instance v2, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;-><init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 177
    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "balance":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "wallet":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Transaction;->getAmount()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "amount":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->fee:Ljava/lang/Float;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "fees":Ljava/lang/String;
    const-string v3, ""

    .line 109
    .local v3, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sv.tigo.mfsapp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06026c

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    aput-object v2, v7, v10

    aput-object v4, v7, v11

    aput-object v1, v7, v12

    iget-object v8, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Transaction;->getTxnId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v13

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 116
    :goto_0
    return-object v3

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06026b

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Transaction;->getTxnId()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v4, v7, v10

    aput-object v1, v7, v11

    aput-object v0, v7, v12

    aput-object v2, v7, v13

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method protected getConfirmationTitleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const-string v0, ""

    .line 90
    .local v0, "string":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->approve:Z

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060104

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "Cash Out"

    const-string v2, "CashOut"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const v0, 0x7f060085

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/tigo/mfsapp/model/Transaction;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_1

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->approve:Z

    .line 55
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->submit()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00cd

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->approve:Z

    .line 60
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->submit()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const v1, 0x7f03002c

    iput v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->layoutId:I

    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->deny:Landroid/widget/Button;

    .line 38
    iget-object v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->avatar:Landroid/widget/ImageView;

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->deny:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->setSubmitButton(Landroid/view/View;)V

    .line 42
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 153
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 164
    :goto_0
    return-void

    .line 156
    :pswitch_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->onTransactionDeny()V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 139
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Transaction;->getTxnId()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->approve:Z

    iget-object v3, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->fee:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestCashoutConfirmationApproverTransaction(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Float;)V

    .line 142
    return-void
.end method

.method public setTransaction(Lcom/tigo/mfsapp/model/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Lcom/tigo/mfsapp/model/Transaction;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/Transaction;

    .line 82
    return-void
.end method

.method protected showBalance(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 123
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    const v4, 0x7f0d007e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, "balanceView":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .end local v3    # "balanceView":Landroid/view/View;
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    iget-object v5, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "balance":Ljava/lang/String;
    const v4, 0x7f0d007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 131
    .local v1, "balanceText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "balanceUpdated":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
