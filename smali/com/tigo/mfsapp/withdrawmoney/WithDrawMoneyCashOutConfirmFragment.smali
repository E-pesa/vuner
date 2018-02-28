.class public Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "WithDrawMoneyCashOutConfirmFragment.java"


# static fields
.field public static final PARAM_AGENT_MSISDN:Ljava/lang/String; = "PARAM_AGENT_MSISDN"

.field public static final PARAM_AGENT_NAME:Ljava/lang/String; = "PARAM_AGENT_NAME"

.field public static final PARAM_AMOUNT:Ljava/lang/String; = "PARAM_AMOUNT"


# instance fields
.field private agentName:Ljava/lang/String;

.field private agentNameText:Landroid/widget/TextView;

.field private amountCashoutText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060286

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 33
    const-string v0, "FEE_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->fee:Ljava/lang/Float;

    .line 34
    const-string v0, "PARAM_AMOUNT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amount:Ljava/lang/Float;

    .line 35
    const-string v0, "PARAM_AGENT_MSISDN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->MSISDN:Ljava/lang/String;

    .line 36
    const-string v0, "PARAM_AGENT_NAME"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->agentName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 43
    if-eqz p1, :cond_0

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->textTitle:Landroid/widget/TextView;

    const v1, 0x7f060280

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amountCashoutText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v0, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->agentNameText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->agentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->submit()V

    .line 84
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    const v1, 0x7f030082

    iput v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->layoutId:I

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->agentNameText:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d01e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amountCashoutText:Landroid/widget/TextView;

    .line 65
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 126
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 130
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 134
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 91
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 96
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "sessionToken":Ljava/lang/String;
    const-string v2, "1"

    .line 100
    .local v2, "walletID":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->MSISDN:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->amount:Ljava/lang/Float;

    iget-object v6, p0, Lcom/tigo/mfsapp/withdrawmoney/WithDrawMoneyCashOutConfirmFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/tigo/mfsapp/service/Connection;->requestWithDrawMoneyCashOut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 106
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
