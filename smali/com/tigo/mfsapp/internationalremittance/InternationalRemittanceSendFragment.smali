.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "InternationalRemittanceSendFragment.java"


# instance fields
.field private amountText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private confirm:Landroid/widget/Button;

.field private idText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private msisdnText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private nameText:Lcom/tigo/mfsapp/components/CustomEditText;

.field private subTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const v0, 0x7f060228

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 48
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    const v1, 0x7f030068

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 33
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->nameText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 34
    const v1, 0x7f0d0162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->idText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 35
    const v1, 0x7f0d0164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->msisdnText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 36
    const v1, 0x7f0d0166

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->amountText:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 37
    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->confirm:Landroid/widget/Button;

    .line 38
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->subTitle:Landroid/widget/TextView;

    .line 39
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->confirm:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->setSubmitButton(Landroid/view/View;)V

    .line 40
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f060108

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 41
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 64
    instance-of v3, p2, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 66
    check-cast v2, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;

    .line 67
    .local v2, "res":Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;->getResponse()Lcom/tigo/mfsapp/model/SendInternationalRemittance;

    move-result-object v1

    .line 68
    .local v1, "remittanceSend":Lcom/tigo/mfsapp/model/SendInternationalRemittance;
    new-instance v0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;-><init>()V

    .line 69
    .local v0, "fragment":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;
    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->setRemittanceSend(Lcom/tigo/mfsapp/model/SendInternationalRemittance;)V

    .line 70
    const-string v3, "0"

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->setFee(Ljava/lang/Float;)V

    .line 71
    const v3, 0x7f060215

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->setTextTitle(I)V

    .line 72
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v3}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->initForm(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v3, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 75
    .end local v0    # "fragment":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;
    .end local v1    # "remittanceSend":Lcom/tigo/mfsapp/model/SendInternationalRemittance;
    .end local v2    # "res":Lcom/tigo/mfsapp/service/InternationalRemittanceSendResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 53
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "token":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->nameText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->idText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->msisdnText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "msisdn":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->amountText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "amount":Ljava/lang/String;
    move-object v0, p1

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/service/Connection;->requestInternationalRemittanceSend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected onValidateData()Z
    .locals 8

    .prologue
    const v7, 0x7f02011f

    .line 80
    const/4 v4, 0x1

    .line 81
    .local v4, "result":Z
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->nameText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->idText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->msisdnText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "msisdn":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->amountText:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "amount":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 87
    :cond_0
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->nameText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v6, 0x7f060221

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 88
    const/4 v4, 0x0

    .line 90
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 92
    :cond_2
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->idText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v6, 0x7f06021b

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 93
    const/4 v4, 0x0

    .line 95
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 97
    :cond_4
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->msisdnText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v6, 0x7f06021e

    const v7, 0x7f0200d0

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 98
    const/4 v4, 0x0

    .line 100
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 102
    :cond_6
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendFragment;->amountText:Lcom/tigo/mfsapp/components/CustomEditText;

    const v6, 0x7f060217

    const v7, 0x7f020038

    invoke-virtual {v5, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 103
    const/4 v4, 0x0

    .line 106
    :cond_7
    return v4
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
