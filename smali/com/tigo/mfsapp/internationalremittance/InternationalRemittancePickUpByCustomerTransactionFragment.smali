.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "InternationalRemittancePickUpByCustomerTransactionFragment.java"


# instance fields
.field private foreingAmountText:Landroid/widget/TextView;

.field private header:Landroid/view/View;

.field private localAmountText:Landroid/widget/TextView;

.field private receiverIDText:Landroid/widget/TextView;

.field private receiverNameText:Landroid/widget/TextView;

.field private remittancePickUp:Lcom/tigo/mfsapp/model/RemittancePickUp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method

.method private onTransactionError()V
    .locals 3

    .prologue
    .line 141
    const v0, 0x7f060076

    const v1, 0x7f060271

    new-instance v2, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;-><init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 150
    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v2

    iget-object v3, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "balance":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sv.tigo.mfsapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06020f

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->amount:Ljava/lang/Float;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "string":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 96
    .end local v1    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06020e

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->amount:Ljava/lang/Float;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method public getRemittancePickUp()Lcom/tigo/mfsapp/model/RemittancePickUp;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->remittancePickUp:Lcom/tigo/mfsapp/model/RemittancePickUp;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f060210

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->submit()V

    .line 77
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const v1, 0x7f03008d

    iput v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->layoutId:I

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 36
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d020f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->receiverNameText:Landroid/widget/TextView;

    .line 37
    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->receiverIDText:Landroid/widget/TextView;

    .line 38
    const v1, 0x7f0d0211

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->foreingAmountText:Landroid/widget/TextView;

    .line 39
    const v1, 0x7f0d0212

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->localAmountText:Landroid/widget/TextView;

    .line 40
    const v1, 0x7f0d02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->header:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->header:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->getRemittancePickUp()Lcom/tigo/mfsapp/model/RemittancePickUp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    :cond_0
    return-object v0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 121
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "token":Ljava/lang/String;
    return-void
.end method

.method public setRemittancePickUp(Lcom/tigo/mfsapp/model/RemittancePickUp;)V
    .locals 0
    .param p1, "remittancePickUp"    # Lcom/tigo/mfsapp/model/RemittancePickUp;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->remittancePickUp:Lcom/tigo/mfsapp/model/RemittancePickUp;

    .line 160
    return-void
.end method

.method protected showBalance(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const v4, 0x7f0d007e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 108
    .local v3, "balanceView":Landroid/view/View;
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .end local v3    # "balanceView":Landroid/view/View;
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->total:Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "balance":Ljava/lang/String;
    const v4, 0x7f0d007f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "balanceText":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->getResources()Landroid/content/res/Resources;

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

    .line 114
    .local v2, "balanceUpdated":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method
