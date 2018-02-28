.class public Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "MerchantPaymentTransactionFragment.java"


# instance fields
.field private approve:Z

.field private deny:Landroid/widget/Button;

.field private merchantDescText:Landroid/widget/TextView;

.field private merchantImage:Landroid/widget/ImageView;

.field private merchantNameText:Landroid/widget/TextView;

.field private transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;


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
    .line 163
    const v0, 0x7f060076

    const v1, 0x7f060271

    new-instance v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment$1;-><init>(Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 172
    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 101
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "balance":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getTotal()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "amount":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv.tigo.mfsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060187

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "string":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 109
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060186

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantID()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/tigo/mfsapp/model/MerchantPaymet;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_1

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->approve:Z

    .line 69
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->submit()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d00cd

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->approve:Z

    .line 74
    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->submit()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f03006d

    iput v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->layoutId:I

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->deny:Landroid/widget/Button;

    .line 42
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->avatar:Landroid/widget/ImageView;

    const v2, 0x7f0200d5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    const v1, 0x7f0d0190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->merchantNameText:Landroid/widget/TextView;

    .line 45
    const v1, 0x7f0d0191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->merchantDescText:Landroid/widget/TextView;

    .line 46
    const v1, 0x7f0d0192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->merchantImage:Landroid/widget/ImageView;

    .line 48
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->deny:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->setSubmitButton(Landroid/view/View;)V

    .line 50
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->merchantNameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->merchantDescText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getTransactionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 148
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 159
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->onTransactionDeny()V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 134
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/MerchantPaymet;->getMerchantID()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->approve:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestInternationalRemittanceMerchantPaymetConfirm(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 137
    return-void
.end method

.method public setTransaction(Lcom/tigo/mfsapp/model/MerchantPaymet;)V
    .locals 0
    .param p1, "transaction"    # Lcom/tigo/mfsapp/model/MerchantPaymet;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->transaction:Lcom/tigo/mfsapp/model/MerchantPaymet;

    .line 96
    return-void
.end method

.method protected showBalance(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v4

    if-nez v4, :cond_0

    .line 120
    const v4, 0x7f0d007e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 121
    .local v3, "balanceView":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .end local v3    # "balanceView":Landroid/view/View;
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    iget-object v5, p0, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "balance":Ljava/lang/String;
    const v4, 0x7f0d007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 126
    .local v1, "balanceText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentTransactionFragment;->getResources()Landroid/content/res/Resources;

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

    .line 127
    .local v2, "balanceUpdated":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method
