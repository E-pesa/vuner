.class public Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "CashOutStep1Fragment.java"


# instance fields
.field MSISDN:Ljava/lang/String;

.field MSISDNContact:Ljava/lang/String;

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/Agent;",
            ">;"
        }
    .end annotation
.end field

.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field isLookup:Ljava/lang/Boolean;

.field isTopupFee:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isLookup:Ljava/lang/Boolean;

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isTopupFee:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getMSISDNContact()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->MSISDNContact:Ljava/lang/String;

    return-object v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "Cashout"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    const v0, 0x7f06003a

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 220
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 189
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 190
    new-instance v0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1090003

    invoke-static {}, Lcom/tigo/mfsapp/model/Agent;->getRecents()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment$1;-><init>(Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->adapter:Landroid/widget/ArrayAdapter;

    .line 207
    iget-object v0, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setAdapter(Landroid/widget/ArrayAdapter;)V

    .line 208
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 50
    const v1, 0x7f03002a

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    .line 54
    const v1, 0x7f0d00c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->next:Landroid/widget/Button;

    .line 55
    const v1, 0x7f0d00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 57
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textLabelDescription:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 60
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 67
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->setAutoShowProgressDialog(Z)V

    .line 69
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v2, 0x1

    .line 152
    instance-of v1, p2, Lcom/tigo/mfsapp/service/AgentLookupResponse;

    if-eqz v1, :cond_2

    .line 154
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isLookup:Ljava/lang/Boolean;

    .line 155
    check-cast p2, Lcom/tigo/mfsapp/service/AgentLookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/AgentLookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isLookup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isTopupFee:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->hideProgressDialog()V

    .line 169
    new-instance v0, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;-><init>()V

    .line 170
    .local v0, "fragment":Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setFee(Ljava/lang/Float;)V

    .line 171
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setTigoName(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setMSISDN(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setAmount(Ljava/lang/Float;)V

    .line 174
    const v1, 0x7f0602b6

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setTextTitle(I)V

    .line 175
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 184
    .end local v0    # "fragment":Lcom/tigo/mfsapp/cashout/CashOutStep2Fragment;
    :cond_1
    :goto_1
    return-void

    .line 156
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_2
    instance-of v1, p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    if-eqz v1, :cond_0

    .line 158
    check-cast p2, Lcom/tigo/mfsapp/service/CashoutFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/CashoutFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->fee:Ljava/lang/Float;

    .line 159
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isTopupFee:Ljava/lang/Boolean;

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->hideProgressDialog()V

    .line 180
    const v1, 0x7f06003e

    const v2, 0x7f0602b1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onResume()V

    .line 215
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p0}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->showProgressDialog()V

    .line 137
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->amount:Ljava/lang/Float;

    .line 138
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "token":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isLookup:Ljava/lang/Boolean;

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isTopupFee:Ljava/lang/Boolean;

    .line 141
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isAgentsLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestAgentLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->isLookup:Ljava/lang/Boolean;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestCashoutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 147
    return-void
.end method

.method protected onValidateData()Z
    .locals 11

    .prologue
    const v10, 0x7f06003e

    const/4 v3, 0x0

    const/4 v9, 0x0

    const v8, 0x7f06013c

    const v7, 0x7f0200d3

    .line 81
    const/4 v2, 0x1

    .line 82
    .local v2, "res":Z
    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->phone:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const v5, 0x7f0600c0

    const v6, 0x7f0200d8

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 85
    const/4 v2, 0x0

    .line 90
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 95
    .local v0, "amount":Ljava/lang/Float;
    :goto_0
    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_2

    .line 97
    :cond_1
    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 98
    const/4 v2, 0x0

    .line 103
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 105
    const v4, 0x7f06003e

    const v5, 0x7f060171

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 106
    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f060171

    const v6, 0x7f0200d3

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 129
    :goto_1
    return v3

    .line 91
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_0

    .line 110
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    iget-object v4, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_1

    .line 119
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 120
    iget-object v3, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_2
    move v3, v2

    .line 129
    goto :goto_1

    .line 121
    :catch_2
    move-exception v1

    .line 123
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    const/4 v3, 0x0

    invoke-virtual {p0, v10, v8, v3}, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 125
    iget-object v3, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 126
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setMSISDNContact(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSISDNContact"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/tigo/mfsapp/cashout/CashOutStep1Fragment;->MSISDNContact:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x1

    return v0
.end method
