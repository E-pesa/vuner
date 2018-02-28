.class public Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "WithDrawMoneyTransferFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field next:Landroid/widget/Button;

.field textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string v0, "WithDrawMoneyTransfer"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const v0, 0x7f060289

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const v1, 0x7f030084

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 34
    const v1, 0x7f0d01ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->next:Landroid/widget/Button;

    .line 35
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->setSubmitButton(Landroid/view/View;)V

    .line 37
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 68
    instance-of v3, p2, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 70
    check-cast v2, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;

    .line 72
    .local v2, "res":Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;
    new-instance v1, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;-><init>()V

    .line 73
    .local v1, "fragment":Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "PARAM_SENDER_NAME"

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->getSenderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v3, "PARAM_AMOUNT"

    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;->getAmount()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 76
    const-string v3, "PARAM_VOUCHER"

    iget-object v4, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 80
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferConfirmFragment;
    .end local v2    # "res":Lcom/tigo/mfsapp/service/WithDrawMoneyTransferVoucherResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 58
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "sessionToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "VoucherCode":Ljava/lang/String;
    invoke-virtual {p1, v1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawMoneyTransferVoucher(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    .line 85
    const/4 v0, 0x1

    .line 87
    .local v0, "valid":Z
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyTransferFragment;->textNumberVoucher:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f06028e

    const v3, 0x7f020038

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 90
    const/4 v0, 0x0

    .line 93
    :cond_0
    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
