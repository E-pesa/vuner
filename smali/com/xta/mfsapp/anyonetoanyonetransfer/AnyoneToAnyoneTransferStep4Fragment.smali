.class public Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "AnyoneToAnyoneTransferStep4Fragment.java"


# static fields
.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"

.field public static final PARAM_RECEIVER_MSISDN:Ljava/lang/String; = "PARAM_RECEIVER_MSISDN"

.field public static final PARAM_RECEIVER_NAME:Ljava/lang/String; = "PARAM_RECEIVER_NAME"

.field public static final PARAM_REFERENCE:Ljava/lang/String; = "PARAM_REFERENCE"

.field public static final PARAM_SENDER_ID_NUMBER:Ljava/lang/String; = "PARAM_SENDER_ID_NUMBER"

.field public static final PARAM_SENDER_ID_TYPE:Ljava/lang/String; = "PARAM_SENDER_ID_TYPE"

.field public static final PARAM_SENDER_MSISDN:Ljava/lang/String; = "PARAM_SENDER_MSISDN"

.field public static final PARAM_SENDER_NAME:Ljava/lang/String; = "PARAM_SENDER_NAME"


# instance fields
.field protected commission:Ljava/lang/Float;

.field protected commissionTax:Ljava/lang/Float;

.field protected commissionTotal:Ljava/lang/Float;

.field private pinCode:Ljava/lang/String;

.field receiverMSISDN:Ljava/lang/String;

.field receiverName:Ljava/lang/String;

.field reference:Ljava/lang/String;

.field senderIdNumber:Ljava/lang/String;

.field senderIdType:Ljava/lang/String;

.field senderMSISDN:Ljava/lang/String;

.field senderName:Ljava/lang/String;

.field textCommission:Landroid/widget/TextView;

.field textCommissionTax:Landroid/widget/TextView;

.field textCommissionTotal:Landroid/widget/TextView;

.field textReceiverMSISDN:Landroid/widget/TextView;

.field textReceiverName:Landroid/widget/TextView;

.field textSenderIdNumber:Landroid/widget/TextView;

.field voucherNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method private showCommission(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 104
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_0

    .line 106
    const v3, 0x7f0d0076

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 107
    .local v0, "commissionLineView":Landroid/view/View;
    const v3, 0x7f0d0074

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 108
    .local v2, "separator":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 109
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .end local v0    # "commissionLineView":Landroid/view/View;
    .end local v2    # "separator":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTax:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 114
    const v3, 0x7f0d0079

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, "commissionTaxLineView":Landroid/view/View;
    const v3, 0x7f0d0078

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 116
    .restart local v2    # "separator":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .end local v1    # "commissionTaxLineView":Landroid/view/View;
    .end local v2    # "separator":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCommission()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    return-object v0
.end method

.method public getCommissionTax()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTax:Ljava/lang/Float;

    return-object v0
.end method

.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string v0, ""

    .line 156
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ea

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->voucherNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->MSISDN:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->amount:Ljava/lang/Float;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 158
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 60
    const-string v0, "PARAM_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->amount:Ljava/lang/Float;

    .line 61
    const-string v0, "PARAM_SENDER_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->senderMSISDN:Ljava/lang/String;

    .line 62
    const-string v0, "PARAM_SENDER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->senderName:Ljava/lang/String;

    .line 63
    const-string v0, "PARAM_SENDER_ID_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->senderIdType:Ljava/lang/String;

    .line 64
    const-string v0, "PARAM_SENDER_ID_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->senderIdNumber:Ljava/lang/String;

    .line 65
    const-string v0, "PARAM_RECEIVER_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverMSISDN:Ljava/lang/String;

    .line 66
    const-string v0, "PARAM_RECEIVER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverName:Ljava/lang/String;

    .line 67
    const-string v0, "PARAM_REFERENCE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->reference:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverMSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const v1, 0x7f03001b

    iput v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->layoutId:I

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textReceiverName:Landroid/widget/TextView;

    .line 79
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textReceiverName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    const v1, 0x7f0d0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textReceiverMSISDN:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textReceiverMSISDN:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->receiverMSISDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v1, 0x7f0d0067

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textSenderIdNumber:Landroid/widget/TextView;

    .line 85
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textSenderIdNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->senderIdNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v1, 0x7f0d0077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommission:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommission:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v1, 0x7f0d007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommissionTax:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommissionTax:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTax:Ljava/lang/Float;

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v1, 0x7f0d007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommissionTotal:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTax:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTotal:Ljava/lang/Float;

    .line 95
    iget-object v1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->textCommissionTotal:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTotal:Ljava/lang/Float;

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->showCommission(Landroid/view/View;)V

    .line 99
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 185
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 187
    instance-of v2, p2, Lcom/tigo/mfsapp/service/JsonResponse;

    if-eqz v2, :cond_0

    .line 189
    check-cast p2, Lcom/tigo/mfsapp/service/JsonResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/JsonResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v1

    .line 191
    .local v1, "jsonObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v2, "VoucherNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    :try_start_0
    const-string v2, "VoucherNumber"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->voucherNumber:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 124
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->pinCode:Ljava/lang/String;

    .line 129
    :cond_1
    const/4 v4, 0x0

    .line 130
    .local v4, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->pinCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->MSISDN:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->amount:Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Connection;->requestAnyoneToAnyoneTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 132
    return-void
.end method

.method public setCommission(Ljava/lang/Float;)V
    .locals 0
    .param p1, "commission"    # Ljava/lang/Float;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commission:Ljava/lang/Float;

    .line 170
    return-void
.end method

.method public setCommissionTax(Ljava/lang/Float;)V
    .locals 0
    .param p1, "commissionTax"    # Ljava/lang/Float;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/tigo/mfsapp/anyonetoanyonetransfer/AnyoneToAnyoneTransferStep4Fragment;->commissionTax:Ljava/lang/Float;

    .line 180
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    return v0
.end method
