.class public Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "WithDrawVoucherSelectFragment.java"


# instance fields
.field private btnCashOut:Landroid/widget/Button;

.field private btnwallet:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "WithDrawVoucherSelect"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0602a4

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 55
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnCashOut:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 39
    new-instance v0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;-><init>()V

    .line 40
    .local v0, "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 41
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 48
    .end local v0    # "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherCashOutFragment;
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnwallet:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 44
    new-instance v0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;-><init>()V

    .line 45
    .local v0, "fragment":Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSubscriberWalletFragment;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 46
    invoke-virtual {p0}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    const v1, 0x7f030088

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 25
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnCashOut:Landroid/widget/Button;

    .line 26
    const v1, 0x7f0d0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnwallet:Landroid/widget/Button;

    .line 28
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnCashOut:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->setSubmitButton(Landroid/view/View;)V

    .line 29
    iget-object v1, p0, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->btnwallet:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/withdrawvoucher/WithDrawVoucherSelectFragment;->setSubmitButton(Landroid/view/View;)V

    .line 31
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 69
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 62
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method
