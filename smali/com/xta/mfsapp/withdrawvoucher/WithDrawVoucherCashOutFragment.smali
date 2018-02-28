.class public Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "WithDrawVoucherCashOutFragment.java"


# instance fields
.field amount:Ljava/lang/Float;

.field commission:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field next:Landroid/widget/Button;

.field selectedIdType:Ljava/lang/String;

.field textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

.field textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

.field textIdType:Landroid/widget/Spinner;

.field textLasrName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

.field textVoucherCode:Lcom/tigo/mfsapp/components/CustomEditText;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "WithDrawVoucherCashOut"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f06028f

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    const v3, 0x7f030086

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 50
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d01f4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textVoucherCode:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 51
    const v3, 0x7f0d01f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    .line 52
    const v3, 0x7f0d01f6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textLasrName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    .line 53
    const v3, 0x7f0d01f7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdType:Landroid/widget/Spinner;

    .line 54
    const v3, 0x7f0d01f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 55
    const v3, 0x7f0d01f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->next:Landroid/widget/Button;

    .line 57
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getIdTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 58
    .local v1, "idTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/IdType;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090006

    const v5, 0x1020014

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 60
    .local v0, "adapterIdTypes":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/IdType;>;"
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 61
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdType:Landroid/widget/Spinner;

    new-instance v4, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment$1;-><init>(Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->setSubmitButton(Landroid/view/View;)V

    .line 78
    return-object v2
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 111
    instance-of v5, p2, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;

    if-eqz v5, :cond_0

    move-object v4, p2

    .line 113
    check-cast v4, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;

    .line 114
    .local v4, "res":Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;->getFee()F

    move-result v2

    .line 115
    .local v2, "fee":F
    invoke-virtual {v4}, Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;->getCommission()F

    move-result v1

    .line 116
    .local v1, "commission":F
    new-instance v3, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;

    invoke-direct {v3}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;-><init>()V

    .line 117
    .local v3, "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "FEE_KEY"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 119
    const-string v5, "PARAM_TYPE"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v5, "PARAM_ID_TYPE"

    iget-object v6, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->selectedIdType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v5, "PARAM_ID_NUMBER"

    iget-object v6, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "PARAM_COMMISSION"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 123
    invoke-virtual {v3, v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v5, v3}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 126
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "commission":F
    .end local v2    # "fee":F
    .end local v3    # "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;
    .end local v4    # "res":Lcom/tigo/mfsapp/service/WithDrawVoucherCashOutFeeResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 99
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "sessionToken":Ljava/lang/String;
    const/4 v3, 0x0

    .line 101
    .local v3, "walletId":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textVoucherCode:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "VoucherCode":Ljava/lang/String;
    const/high16 v1, 0x41200000    # 10.0f

    .line 103
    .local v1, "amount":F
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v0, v4}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawVoucherCashOutFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 105
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    const v3, 0x7f020038

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textFirstName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const v2, 0x7f060294

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 135
    const/4 v0, 0x0

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textIdNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f060297

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 140
    const/4 v0, 0x0

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->selectedIdType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 145
    const/4 v0, 0x0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textLasrName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textLasrName:Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;

    const v2, 0x7f06029e

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/AutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 150
    const/4 v0, 0x0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textVoucherCode:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 154
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;->textVoucherCode:Lcom/tigo/mfsapp/components/CustomEditText;

    const v2, 0x7f0602a2

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 155
    const/4 v0, 0x0

    .line 157
    :cond_4
    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    return v0
.end method
