.class public Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "WithDrawVoucherSubscriberWalletFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field commission:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field next:Landroid/widget/Button;

.field textCodeVoutcher:Lcom/tigo/mfsapp/components/CustomEditText;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "WithDrawVoucherSubscriberWallet"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0602a6

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->getString(I)Ljava/lang/String;

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

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    const v1, 0x7f030089

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textCodeVoutcher:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 39
    const v1, 0x7f0d0204

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 41
    const v1, 0x7f0d0205

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->next:Landroid/widget/Button;

    .line 42
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->setSubmitButton(Landroid/view/View;)V

    .line 44
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 78
    instance-of v5, p2, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;

    if-eqz v5, :cond_0

    move-object v4, p2

    .line 80
    check-cast v4, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;

    .line 81
    .local v4, "res":Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;->getFee()F

    move-result v2

    .line 82
    .local v2, "fee":F
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;->getCommission()F

    move-result v1

    .line 83
    .local v1, "commission":F
    new-instance v3, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    invoke-direct {v3}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;-><init>()V

    .line 84
    .local v3, "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "FEE_KEY"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 86
    const-string v5, "PARAM_TYPE"

    const/4 v6, 0x1

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    const-string v5, "PARAM_COMMISSION"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 88
    invoke-virtual {v3, v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v5, v3}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 91
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "commission":F
    .end local v2    # "fee":F
    .end local v3    # "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;
    .end local v4    # "res":Lcom/tigo/mfsapp/service/WithDrawVoucherDepositFeeResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 65
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "sessionToken":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "walletId":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textCodeVoutcher:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "VoucherCode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 70
    .local v6, "amount":F
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "MSISDN":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawVoucherDepositFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 73
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "valid":Z
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0601d4

    const v3, 0x7f0200d8

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 100
    const/4 v0, 0x0

    .line 105
    :cond_0
    :goto_0
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textCodeVoutcher:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textCodeVoutcher:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0602a2

    const v3, 0x7f020038

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 108
    const/4 v0, 0x0

    .line 111
    :cond_1
    return v0

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v1, v2}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x1

    return v0
.end method
