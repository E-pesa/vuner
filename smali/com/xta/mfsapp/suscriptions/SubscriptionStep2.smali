.class public Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "SubscriptionStep2.java"


# static fields
.field public static final SUBSCRIPTION_CODE:Ljava/lang/String; = "SUBSCRIPTION_CODE"

.field public static final TITLE_VALUE:Ljava/lang/String; = "TITLE_VALUE"


# instance fields
.field subscription_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->subscription_code:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setShoudHideNameIfNull(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public getSubscription_code()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->subscription_code:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 36
    const-string v4, ""

    .line 37
    .local v4, "pinCode":Ljava/lang/String;
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

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 41
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->subscription_code:Ljava/lang/String;

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/service/Connection;->requestSubscriptionCreate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 44
    return-void
.end method

.method public setSubscription_code(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscription_code"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->subscription_code:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
