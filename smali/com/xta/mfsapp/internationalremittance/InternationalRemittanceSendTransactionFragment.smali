.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "InternationalRemittanceSendTransactionFragment.java"


# instance fields
.field private header:Landroid/view/View;

.field private receiverAmountText:Landroid/widget/TextView;

.field private receiverCountryText:Landroid/widget/TextView;

.field private receiverIDText:Landroid/widget/TextView;

.field private receiverNameText:Landroid/widget/TextView;

.field private remittanceSend:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

.field private sentAmountText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method

.method private onTransactionError()V
    .locals 3

    .prologue
    .line 146
    const v0, 0x7f060076

    const v1, 0x7f060271

    new-instance v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;-><init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 155
    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    iget-object v4, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "balance":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getTotalLocalCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "amount":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sv.tigo.mfsapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060227

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const-string v6, ""

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "string":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 100
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060226

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    const-string v6, ""

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "International Remittance"

    const-string v2, "IntRemittance"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->remittanceSend:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const v0, 0x7f060215

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->submit()V

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    const v1, 0x7f03008e

    iput v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->layoutId:I

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverNameText:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverIDText:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f0d0214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverCountryText:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverAmountText:Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0d0215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->sentAmountText:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0d02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->header:Landroid/view/View;

    .line 44
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->header:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 46
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverNameText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getReceiverName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverIDText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getReceiverID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverCountryText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getReceiverCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->receiverAmountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getAmountForeignCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->sentAmountText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getAmountLocalCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getRemittanceSend()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/SendInternationalRemittance;->getTotalLocalCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->total:Ljava/lang/Float;

    .line 56
    :cond_0
    return-object v0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 125
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "token":Ljava/lang/String;
    const-string v0, ""

    .line 128
    .local v0, "reference":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestConfirmInternationalRemittanceSend(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public setRemittanceSend(Lcom/tigo/mfsapp/model/SendInternationalRemittance;)V
    .locals 0
    .param p1, "remittanceSend"    # Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->remittanceSend:Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    .line 165
    return-void
.end method

.method protected showBalance(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 109
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    const v4, 0x7f0d007e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 112
    .local v3, "balanceView":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .end local v3    # "balanceView":Landroid/view/View;
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "balance":Ljava/lang/String;
    const v4, 0x7f0d007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 117
    .local v1, "balanceText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->getResources()Landroid/content/res/Resources;

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

    .line 118
    .local v2, "balanceUpdated":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x1

    return v0
.end method
