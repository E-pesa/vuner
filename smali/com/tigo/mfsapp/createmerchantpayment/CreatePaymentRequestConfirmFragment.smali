.class public Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "CreatePaymentRequestConfirmFragment.java"


# instance fields
.field description:Ljava/lang/String;

.field ivPic:Landroid/widget/ImageView;

.field textAmount:Landroid/widget/TextView;

.field textDescription:Landroid/widget/TextView;

.field textTitle:Landroid/widget/TextView;

.field uriImage:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "mBalance":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "mAmount":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060237

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    return-object v2
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const v0, 0x7f060235

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriImage()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->uriImage:Landroid/net/Uri;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v6, 0x8

    .line 33
    const v4, 0x7f030063

    iput v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->layoutId:I

    .line 35
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 37
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0d0107

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->ivPic:Landroid/widget/ImageView;

    .line 38
    const v4, 0x7f0d0158

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->textDescription:Landroid/widget/TextView;

    .line 39
    const v4, 0x7f0d0064

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->textTitle:Landroid/widget/TextView;

    .line 41
    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->description:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 43
    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->textDescription:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->uriImage:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 48
    iget-object v4, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->ivPic:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->uriImage:Landroid/net/Uri;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->getUriFromIntent(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    :cond_1
    const v4, 0x7f0d006e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, "totalLineView":Landroid/view/View;
    const v4, 0x7f0d006c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "separator":Landroid/view/View;
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 56
    const v4, 0x7f0d007e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "balanceView":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 59
    return-object v3
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 87
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "token":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestCreateMerchantPayment(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->description:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setUriImage(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uriImage"    # Landroid/net/Uri;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->uriImage:Landroid/net/Uri;

    .line 110
    return-void
.end method
