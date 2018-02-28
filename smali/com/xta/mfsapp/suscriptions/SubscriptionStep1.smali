.class public Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SubscriptionStep1.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private balance:Landroid/widget/TextView;

.field private insufficient_funds:Z

.field private final item:Lcom/tigo/mfsapp/model/Subscription;

.field private locale:Ljava/lang/String;

.field private terms:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

.field private wallet:Lcom/tigo/mfsapp/components/SelectWalletEdit;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/model/Subscription;)V
    .locals 0
    .param p1, "subscription"    # Lcom/tigo/mfsapp/model/Subscription;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    .line 45
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f060093

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 159
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0d007e

    .line 51
    const v5, 0x7f0300c4

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 52
    .local v4, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 53
    .local v1, "current":Ljava/util/Locale;
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getName()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/tigo/mfsapp/model/Subscription;->getMappedLocale(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->locale:Ljava/lang/String;

    .line 55
    const v5, 0x7f0d02a4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    iput-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->terms:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    .line 56
    const v5, 0x7f0d02a6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "b":Landroid/widget/Button;
    const v5, 0x7f0d02a2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/components/SelectWalletEdit;

    iput-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->wallet:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    .line 58
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->wallet:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    invoke-virtual {v5, p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 60
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v5

    if-nez v5, :cond_0

    .line 61
    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 64
    :cond_0
    const v5, 0x7f0d007f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->balance:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->updatebalanceText()V

    .line 73
    :try_start_0
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->isActive()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 75
    const v5, 0x7f0d02a0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 76
    .local v3, "info":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getStart()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getStart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getStart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    .line 77
    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getEnd()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getEnd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getEnd()Ljava/lang/String;

    move-result-object v5

    const-string v6, "null"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    const v5, 0x7f0602cd

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Subscription;->getStart()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v8}, Lcom/tigo/mfsapp/model/Subscription;->getEnd()Ljava/lang/String;

    move-result-object v8

    const-string v9, "/"

    const-string v10, "-"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :goto_0
    const/4 v5, 0x2

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    const v5, 0x7f0d02a1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 89
    const v5, 0x7f0d007e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 91
    const v5, 0x7f06005a

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 92
    new-instance v5, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1$1;-><init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    .end local v3    # "info":Landroid/widget/TextView;
    :goto_1
    return-object v4

    .line 83
    .restart local v3    # "info":Landroid/widget/TextView;
    :cond_1
    const v5, 0x7f0602ce

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v3    # "info":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 105
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_2
    const v5, 0x7f0d02a0

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 106
    .restart local v3    # "info":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getDesc()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->locale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const v5, 0x7f060058

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->setSubmitButton(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->updatebalanceText()V

    .line 240
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 8
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 179
    :try_start_0
    move-object v0, p2

    check-cast v0, Lcom/tigo/mfsapp/service/SubscriptionsFeeResponse;

    move-object v3, v0

    .line 180
    .local v3, "r":Lcom/tigo/mfsapp/service/SubscriptionsFeeResponse;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/SubscriptionsFeeResponse;->getFee()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 181
    .local v2, "fee":Ljava/lang/Float;
    new-instance v4, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;

    invoke-direct {v4}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;-><init>()V

    .line 182
    .local v4, "subs":Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setAmount(Ljava/lang/Float;)V

    .line 183
    invoke-virtual {v4, v2}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setFee(Ljava/lang/Float;)V

    .line 185
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getName()Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->locale:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setTransactionDescription(Ljava/lang/String;)V

    .line 186
    const-string v5, ""

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setMSISDN(Ljava/lang/String;)V

    .line 187
    const v5, 0x7f060093

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setTextTitle(I)V

    .line 188
    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;->setSubscription_code(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v5, v4}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v2    # "fee":Ljava/lang/Float;
    .end local v3    # "r":Lcom/tigo/mfsapp/service/SubscriptionsFeeResponse;
    .end local v4    # "subs":Lcom/tigo/mfsapp/suscriptions/SubscriptionStep2;
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fee error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Subscription;->getPrice()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->getSubsctriptionFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected onValidateData()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->terms:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Subscription;->isActive()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 212
    .local v0, "error":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 214
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->terms:Lcom/tigo/mfsapp/components/TermsAndConditionsView;

    const v4, 0x7f06006e

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/TermsAndConditionsView;->setError(Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->insufficient_funds:Z

    if-eqz v3, :cond_2

    .line 219
    const v1, 0x7f06003e

    const v3, 0x7f0602cc

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v3, v4}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 223
    :goto_1
    return v2

    .end local v0    # "error":Z
    :cond_1
    move v0, v2

    .line 211
    goto :goto_0

    .line 223
    .restart local v0    # "error":Z
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method protected updatebalanceText()V
    .locals 8

    .prologue
    .line 123
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    float-to-double v4, v3

    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Subscription;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 125
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->insufficient_funds:Z

    .line 126
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->balance:Landroid/widget/TextView;

    const v4, 0x7f0602cc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->insufficient_funds:Z

    .line 130
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "balance_label":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    iget-object v5, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->item:Lcom/tigo/mfsapp/model/Subscription;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Subscription;->getPrice()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "balanceUpdated":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v1, "balanceWithStyle":Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 136
    invoke-virtual {p0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 138
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 135
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 142
    iget-object v3, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->balance:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected validateAndGoToNextView()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method
