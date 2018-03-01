.class public Lcom/tigo/mfsapp/balance/BalanceManager;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BalanceManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final PINCODE_DIALOG_TAG:Ljava/lang/String; = "PINCODE_DIALOG_TAG"


# instance fields
.field private fee:F

.field private pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->fee:F

    return-void
.end method

.method private createDialog()Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 4

    .prologue
    .line 65
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    .line 67
    .local v1, "dialog":Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 69
    .local v0, "currentapiVersion":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 71
    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 74
    :cond_0
    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    return-object v1
.end method

.method private showBalanceNoPINCODE()V
    .locals 3

    .prologue
    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v1, "outData":Landroid/os/Bundle;
    new-instance v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;-><init>()V

    .line 57
    .local v0, "fragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    iget v2, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->fee:F

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->setFee(F)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->initForm(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceManager;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 60
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->closeAndGoHome()V

    .line 61
    return-void
.end method


# virtual methods
.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 87
    return-void
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 28
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->showBalanceNoPINCODE()V

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "PINCODE_DIALOG_TAG"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 34
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->submit()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->dismiss()V

    .line 121
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceManager;->showBalance(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 99
    check-cast p2, Lcom/tigo/mfsapp/service/BalancefeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/BalancefeeResponse;->getFee()F

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->fee:F

    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->createDialog()Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "PINCODE_DIALOG_TAG"

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    iget v1, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->fee:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->showFee(Ljava/lang/Float;)V

    .line 103
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f06003c

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/balance/BalanceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (*)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeTitle(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->showCurrencySynbol(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->pinDialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 92
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestBalanceFee(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method protected showBalance(Ljava/lang/String;)V
    .locals 3
    .param p1, "pinCode"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v1, "outData":Landroid/os/Bundle;
    const-string v2, "PARAM_PIN"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/tigo/mfsapp/balance/BalanceFragment;
    iget v2, p0, Lcom/tigo/mfsapp/balance/BalanceManager;->fee:F

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->setFee(F)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->initForm(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/tigo/mfsapp/balance/BalanceManager;->closeAndGoHome()V

    .line 48
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/balance/BalanceManager;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 49
    return-void
.end method
