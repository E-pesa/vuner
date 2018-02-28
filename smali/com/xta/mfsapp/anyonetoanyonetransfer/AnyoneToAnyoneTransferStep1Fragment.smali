.class public Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "AnyoneToAnyoneTransferStep1Fragment.java"


# instance fields
.field amount:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field editText:Lcom/tigo/mfsapp/components/CustomEditText;

.field nextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->bundle:Landroid/os/Bundle;

    .line 35
    return-void
.end method


# virtual methods
.method fillForm()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->amount:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "AnyoneToAnyoneTransfer"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const v0, 0x7f0600d3

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 43
    const v1, 0x7f0d0057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->nextButton:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->nextButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->fillForm()V

    .line 49
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 83
    new-instance v0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;-><init>()V

    .line 84
    .local v0, "fragment":Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_AMOUNT"

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_AMOUNT_SERVICE"

    check-cast p2, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/AnyoneToAnyoneTransferAmountResponse;->getAmount()Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 86
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep2Fragment;->initForm(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 88
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 73
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->amount:Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestAnyoneToAnyoneTransferAmount(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const v8, 0x7f06003e

    const/4 v5, 0x0

    const v7, 0x7f0600cd

    const v6, 0x7f0200d3

    const/4 v2, 0x0

    .line 97
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    .local v0, "amount":Ljava/lang/Float;
    :goto_0
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 136
    :goto_1
    return v2

    .line 98
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 112
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 113
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 117
    :catch_1
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_1

    .line 126
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 127
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 136
    :cond_3
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 128
    :catch_2
    move-exception v1

    .line 130
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const/4 v3, 0x0

    invoke-virtual {p0, v8, v7, v3}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 132
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep1Fragment;->editText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v7, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_1
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x1

    return v0
.end method
