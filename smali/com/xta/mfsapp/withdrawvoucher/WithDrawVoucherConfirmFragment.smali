.class public Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "WithDrawVoucherConfirmFragment.java"


# static fields
.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"

.field public static final PARAM_COMMISSION:Ljava/lang/String; = "PARAM_COMMISSION"

.field public static final PARAM_ID_NUMBER:Ljava/lang/String; = "PARAM_ID_NUMBER"

.field public static final PARAM_ID_TYPE:Ljava/lang/String; = "PARAM_ID_TYPE"

.field public static final PARAM_RECEIVER_MSISDN:Ljava/lang/String; = "PARAM_RECEIVER_MSISDN"

.field public static final PARAM_RECEIVER_NAME:Ljava/lang/String; = "PARAM_RECEIVER_NAME"

.field public static final PARAM_SELECTED_OBJECT:Ljava/lang/String; = "PARAM_SELECTED_OBJECT"

.field public static final PARAM_TYPE:Ljava/lang/String; = "PARAM_TYPE"


# instance fields
.field private MSISDNText:Landroid/widget/TextView;

.field private amountCashoutText:Landroid/widget/TextView;

.field private amountDepositText:Landroid/widget/TextView;

.field private cashoutLayout:Landroid/widget/LinearLayout;

.field private commission:F

.field private commissionText:Landroid/widget/TextView;

.field private idNumber:Ljava/lang/String;

.field private idNumberText:Landroid/widget/TextView;

.field private idType:Ljava/lang/String;

.field private idTypeText:Landroid/widget/TextView;

.field private receiverName:Ljava/lang/String;

.field private receiverNameText:Landroid/widget/TextView;

.field private type:I

.field private walletLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method

.method private onTransactionDeny()V
    .locals 3

    .prologue
    .line 197
    const v0, 0x7f060104

    const v1, 0x7f060103

    new-instance v2, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment$1;-><init>(Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 206
    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    const-string v2, "Juan Perez"

    .line 155
    .local v2, "name":Ljava/lang/String;
    const-string v4, "10"

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "amount":Ljava/lang/String;
    const-string v4, "2"

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "commission":Ljava/lang/String;
    const/4 v3, 0x0

    .line 158
    .local v3, "string":Ljava/lang/String;
    iget v4, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->type:I

    packed-switch v4, :pswitch_data_0

    .line 170
    :goto_0
    return-object v3

    .line 161
    :pswitch_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0602ae

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 162
    goto :goto_0

    .line 165
    :pswitch_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0602af

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    aput-object v1, v6, v10

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 166
    goto :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 49
    const-string v0, "FEE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->fee:Ljava/lang/Float;

    .line 50
    const-string v0, "PARAM_TYPE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->type:I

    .line 51
    const-string v0, "PARAM_COMMISSION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->commission:F

    .line 52
    const-string v0, "PARAM_AMOUNT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amount:Ljava/lang/Float;

    .line 53
    const-string v0, "PARAM_ID_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idType:Ljava/lang/String;

    .line 54
    const-string v0, "PARAM_ID_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idNumber:Ljava/lang/String;

    .line 55
    const-string v0, "PARAM_RECEIVER_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->MSISDN:Ljava/lang/String;

    .line 56
    const-string v0, "PARAM_RECEIVER_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->receiverName:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 63
    if-eqz p1, :cond_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->cashoutLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->walletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    iget v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->type:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->receiverNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->receiverName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->commissionText:Landroid/widget/TextView;

    iget v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->commission:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f06029f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->cashoutLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amountCashoutText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idTypeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idNumberText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f0602ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->walletLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amountDepositText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->MSISDNText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->submit()V

    .line 133
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const v1, 0x7f030087

    iput v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->layoutId:I

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->cashoutLayout:Landroid/widget/LinearLayout;

    .line 102
    const v1, 0x7f0d01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->walletLayout:Landroid/widget/LinearLayout;

    .line 104
    const v1, 0x7f0d013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->commissionText:Landroid/widget/TextView;

    .line 106
    const v1, 0x7f0d01fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->receiverNameText:Landroid/widget/TextView;

    .line 107
    const v1, 0x7f0d01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idTypeText:Landroid/widget/TextView;

    .line 108
    const v1, 0x7f0d01fd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->idNumberText:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0d0200

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->MSISDNText:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0d0201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amountDepositText:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0d01fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amountCashoutText:Landroid/widget/TextView;

    .line 114
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 182
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 189
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 193
    :goto_0
    return-void

    .line 185
    :pswitch_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->onTransactionDeny()V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 214
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 138
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 140
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 145
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "sessionToken":Ljava/lang/String;
    const-string v4, "10"

    .line 148
    .local v4, "VoucherCode":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->MSISDN:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->amount:Ljava/lang/Float;

    iget-object v6, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherConfirmFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawVoucherDeposit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 149
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method
