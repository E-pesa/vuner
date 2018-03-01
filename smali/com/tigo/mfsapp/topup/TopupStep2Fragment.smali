.class public Lcom/tigo/mfsapp/topup/TopupStep2Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "TopupStep2Fragment.java"


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"

.field public static final PARAM_ISTOPUP_CONTACT:Ljava/lang/String; = "PARAM_ISTOPUP_CONTACT"

.field public static final PARAM_MSISDN:Ljava/lang/String; = "PARAM_MSISDN"

.field public static final PARAM_MSISDN_RESPONSE:Ljava/lang/String; = "PARAM_MSISDN_RESPONSE"

.field public static final PARAM_TIGONAME:Ljava/lang/String; = "PARAM_TIGONAME"


# instance fields
.field MSISDNResponse:Ljava/lang/String;

.field amount:Ljava/lang/Float;

.field fee:Ljava/lang/Float;

.field isLookup:Ljava/lang/Boolean;

.field isTopupContact:Ljava/lang/Boolean;

.field isTopupFee:Ljava/lang/Boolean;

.field next:Landroid/widget/Button;

.field phoneText:Landroid/widget/TextView;

.field spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;

.field textViewAmount:Landroid/widget/TextView;

.field tigoName:Landroid/widget/TextView;

.field tigoNameResponse:Ljava/lang/String;

.field transactionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->isLookup:Ljava/lang/Boolean;

    .line 42
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->isTopupFee:Ljava/lang/Boolean;

    .line 51
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->isTopupContact:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 210
    const-string v0, "PARAM_TIGONAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 211
    const-string v0, "PARAM_MSISDN_RESPONSE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->MSISDNResponse:Ljava/lang/String;

    .line 213
    const-string v0, "PARAM_ISTOPUP_CONTACT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "PARAM_ISTOPUP_CONTACT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->isTopupContact:Ljava/lang/Boolean;

    .line 216
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 57
    const v1, 0x7f0300ca

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d02ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->phoneText:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f0d02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoName:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->phoneText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->MSISDNResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->MSISDNResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 68
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    :goto_0
    const v1, 0x7f0d02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->next:Landroid/widget/Button;

    .line 74
    const v1, 0x7f0d02b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 75
    const v1, 0x7f0d02af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textViewAmount:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0d02b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/SelectAmountEdit;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    .line 79
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textViewAmount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->setVisibility(I)V

    .line 85
    :cond_2
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textLabelDescription:Landroid/widget/TextView;

    .line 86
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 88
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 95
    return-object v0

    .line 70
    :cond_4
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoName:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 196
    check-cast p2, Lcom/tigo/mfsapp/service/TopupFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/TopupFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->fee:Ljava/lang/Float;

    .line 197
    new-instance v0, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;-><init>()V

    .line 198
    .local v0, "fragment":Lcom/tigo/mfsapp/topup/TopupStep3Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setFee(Ljava/lang/Float;)V

    .line 199
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setTigoName(Ljava/lang/String;)V

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->MSISDNResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setMSISDN(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setAmount(Ljava/lang/Float;)V

    .line 203
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 204
    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep3Fragment;->setTextTitle(I)V

    .line 205
    invoke-virtual {p0}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 206
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 181
    :try_start_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->amount:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "token":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->MSISDNResponse:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestTopupFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 192
    return-void

    .line 184
    .end local v1    # "token":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->amount:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->amount:Ljava/lang/Float;

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const v5, 0x7f06003e

    const v6, 0x7f06013c

    const/4 v2, 0x0

    .line 102
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getTopUpAmountValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 104
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {p0, v5, v6, v7}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 171
    :goto_0
    return v2

    .line 110
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->spinnerAmount:Lcom/tigo/mfsapp/components/SelectAmountEdit;

    .line 122
    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectAmountEdit;->getAmountView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

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

    if-lez v3, :cond_6

    .line 123
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 113
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    invoke-virtual {p0, v5, v6, v7}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    goto/16 :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 142
    .local v0, "amount":Ljava/lang/Float;
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v8

    if-gtz v3, :cond_4

    .line 143
    :cond_3
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d3

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0

    .line 138
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_2
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :try_start_3
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 149
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 158
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v8

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

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

    if-lez v3, :cond_6

    .line 159
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 160
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    .line 164
    :catch_3
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d3

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 151
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    invoke-virtual {p0, v5, v6, v7}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 153
    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d3

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto/16 :goto_0

    .line 171
    .end local v0    # "amount":Ljava/lang/Float;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x1

    return v0
.end method
