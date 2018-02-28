.class public Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "TransactionConfirmFragment.java"


# static fields
.field private static final AMOUNT_KEY:Ljava/lang/String; = "AMOUNT_KEY"

.field public static final FEE_KEY:Ljava/lang/String; = "FEE_KEY"

.field protected static final PACKAGE_NAME_HN:Ljava/lang/String; = "hn.tigo.mfsapp"

.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"

.field private static final TITLE_KEY:Ljava/lang/String; = "TITLE_KEY"


# instance fields
.field protected MSISDN:Ljava/lang/String;

.field protected amount:Ljava/lang/Float;

.field protected avatar:Landroid/widget/ImageView;

.field protected confirm:Landroid/widget/Button;

.field protected dynamicParametersLayuot:Landroid/widget/LinearLayout;

.field protected editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

.field protected fee:Ljava/lang/Float;

.field protected layoutId:I

.field protected name:Landroid/widget/TextView;

.field private onFinishDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

.field protected phone:Landroid/widget/TextView;

.field private shoudHideNameIfNull:Z

.field protected textAmount:Landroid/widget/TextView;

.field protected textFee:Landroid/widget/TextView;

.field protected textTitle:Landroid/widget/TextView;

.field protected textTotal:Landroid/widget/TextView;

.field protected textTransactionDescription:Landroid/widget/TextView;

.field protected tigoName:Ljava/lang/String;

.field private title:I

.field protected total:Ljava/lang/Float;

.field protected transactionDescription:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->transactionDescription:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->shoudHideNameIfNull:Z

    .line 59
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    .line 69
    const v0, 0x7f0300cb

    iput v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->layoutId:I

    return-void
.end method

.method private onInsufficientFunds(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 485
    const v0, 0x7f06013b

    const v1, 0x7f06013a

    new-instance v2, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$2;-><init>(Lcom/tigo/mfsapp/common/TransactionConfirmFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 493
    return-void
.end method

.method private onInvalidCredentials(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 509
    const v0, 0x7f060144

    const v1, 0x7f060143

    new-instance v2, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$4;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$4;-><init>(Lcom/tigo/mfsapp/common/TransactionConfirmFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 517
    return-void
.end method

.method private onInvalidTargetMSISDN(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 497
    const v0, 0x7f06014c

    const v1, 0x7f06014b

    new-instance v2, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$3;-><init>(Lcom/tigo/mfsapp/common/TransactionConfirmFragment;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 505
    return-void
.end method

.method private sendEcommerceTransaction(Ljava/lang/String;Lcom/tigo/mfsapp/model/EcommerceProduct;DDD)V
    .locals 9
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "eccomerceProduct"    # Lcom/tigo/mfsapp/model/EcommerceProduct;
    .param p3, "total"    # D
    .param p5, "price"    # D
    .param p7, "fee"    # D

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/EcommerceProduct;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/EcommerceProduct;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p1

    move-wide/from16 v6, p7

    invoke-static/range {v0 .. v7}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendTransaction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;D)V

    .line 365
    return-void
.end method

.method private showDescription(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 174
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    const v2, 0x7f0d0070

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "descriptionLineView":Landroid/view/View;
    const v2, 0x7f0d0071

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, "separator":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .end local v0    # "descriptionLineView":Landroid/view/View;
    .end local v1    # "separator":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showFee(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x8

    .line 185
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 187
    const v2, 0x7f0d006a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 188
    .local v0, "feeLineView":Landroid/view/View;
    const v2, 0x7f0d0069

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 189
    .local v1, "separator":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    .end local v0    # "feeLineView":Landroid/view/View;
    .end local v1    # "separator":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showName()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    iget-boolean v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->shoudHideNameIfNull:Z

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->name:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->phone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPincodeWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 203
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const v1, 0x7f0d0080

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 206
    .local v0, "pincodeWindow":Landroid/view/View;
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .end local v0    # "pincodeWindow":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private showTotal(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    .line 163
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowTransactionTotalAmount()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    const v2, 0x7f0d006e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 166
    .local v1, "totalLineView":Landroid/view/View;
    const v2, 0x7f0d006c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "separator":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .end local v0    # "separator":Landroid/view/View;
    .end local v1    # "totalLineView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAmount()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    return-object v0
.end method

.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 376
    const-string v0, ""

    .line 377
    .local v0, "string":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv.tigo.mfsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026f

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026e

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hn.tigo.mfsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602d4

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 396
    :cond_3
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 397
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026a

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 399
    :cond_4
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06026d

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aput-object p1, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected getConfirmationTitleString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "string":Ljava/lang/String;
    return-object v0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFee()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    return-object v0
.end method

.method public getTextAmount()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textAmount:Landroid/widget/TextView;

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 251
    return-void
.end method

.method public isShoudHideNameIfNull()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->shoudHideNameIfNull:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 213
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 214
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->name:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->phone:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->phone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 75
    iget v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->layoutId:I

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "view":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 79
    const-string v2, "TITLE_KEY"

    invoke-virtual {p3, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->title:I

    .line 80
    const-string v2, "FEE_KEY"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    .line 81
    const-string v2, "AMOUNT_KEY"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    .line 83
    :cond_0
    const v2, 0x7f0d0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTitle:Landroid/widget/TextView;

    .line 84
    iget v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->title:I

    if-lez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTitle:Landroid/widget/TextView;

    iget v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    :cond_1
    const v2, 0x7f0d0081

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/PinCustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    .line 89
    const/4 v2, 0x1

    new-array v0, v2, [Landroid/text/InputFilter;

    .line 90
    .local v0, "FilterArray":[Landroid/text/InputFilter;
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v5

    .line 92
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 94
    const v2, 0x7f0d02b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->name:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0d02ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->phone:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0d0082

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->confirm:Landroid/widget/Button;

    .line 99
    const v2, 0x7f0d0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textAmount:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0d006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textFee:Landroid/widget/TextView;

    .line 101
    const v2, 0x7f0d006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTotal:Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTransactionDescription:Landroid/widget/TextView;

    .line 104
    const v2, 0x7f0d006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->dynamicParametersLayuot:Landroid/widget/LinearLayout;

    .line 106
    const v2, 0x7f0d02b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->avatar:Landroid/widget/ImageView;

    .line 110
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textAmount:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    .line 122
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textFee:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTotal:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    invoke-static {v3}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->transactionDescription:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->transactionDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->textTransactionDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->transactionDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->confirm:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->setSubmitButton(Landroid/view/View;)V

    .line 133
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showFee(Landroid/view/View;)V

    .line 134
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showTotal(Landroid/view/View;)V

    .line 135
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showBalance(Landroid/view/View;)V

    .line 136
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showPincodeWindow(Landroid/view/View;)V

    .line 137
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showDescription(Landroid/view/View;)V

    .line 138
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showName()V

    .line 140
    return-object v1

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    goto :goto_0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 463
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 478
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 481
    :goto_0
    return-void

    .line 466
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onInvalidCredentials(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 470
    :sswitch_1
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onInvalidTargetMSISDN(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 474
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onInsufficientFunds(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0

    .line 463
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 19
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 273
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/tigo/mfsapp/service/JsonResponse;

    if-eqz v3, :cond_7

    .line 276
    check-cast p2, Lcom/tigo/mfsapp/service/JsonResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual/range {p2 .. p2}, Lcom/tigo/mfsapp/service/JsonResponse;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v15

    .line 278
    .local v15, "jsonObject":Lorg/json/JSONObject;
    const-string v4, ""

    .line 280
    .local v4, "transactionId":Ljava/lang/String;
    if-eqz v15, :cond_0

    const-string v3, "TransactionID"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 284
    :try_start_0
    const-string v3, "TransactionID"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 291
    :cond_0
    :goto_0
    if-eqz v15, :cond_1

    const-string v3, "0"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    :try_start_1
    const-string v3, "0"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    .line 302
    :cond_1
    :goto_1
    if-eqz v15, :cond_5

    const-string v3, "Balance"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 307
    :try_start_2
    const-string v3, "Balance"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 309
    .local v14, "jsWallets":Lorg/json/JSONArray;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/tigo/mfsapp/model/Wallet;

    .line 312
    .local v18, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v12, v5, :cond_2

    .line 314
    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 315
    .local v16, "jsonWallet":Lorg/json/JSONObject;
    const-string v5, "WalletID"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 317
    const-string v5, "Balance"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v5, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/tigo/mfsapp/model/Wallet;->setBalance(F)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 312
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 285
    .end local v12    # "i":I
    .end local v14    # "jsWallets":Lorg/json/JSONArray;
    .end local v16    # "jsonWallet":Lorg/json/JSONObject;
    .end local v18    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 296
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    .line 298
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 323
    .end local v2    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 325
    .restart local v2    # "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 327
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->updateTotalWallets()V

    .line 330
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getConfirmationTitleString()Ljava/lang/String;

    move-result-object v17

    .line 331
    .local v17, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getConfirmationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 333
    .local v13, "idString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v11}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->sendEcommerceTransaction(Ljava/lang/String;Lcom/tigo/mfsapp/model/EcommerceProduct;DDD)V

    .line 338
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onFinishDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    if-nez v3, :cond_8

    .line 340
    new-instance v3, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment$1;-><init>(Lcom/tigo/mfsapp/common/TransactionConfirmFragment;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13, v3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 358
    .end local v4    # "transactionId":Ljava/lang/String;
    .end local v13    # "idString":Ljava/lang/String;
    .end local v15    # "jsonObject":Lorg/json/JSONObject;
    .end local v17    # "title":Ljava/lang/String;
    :cond_7
    :goto_3
    return-void

    .line 351
    .restart local v4    # "transactionId":Ljava/lang/String;
    .restart local v13    # "idString":Ljava/lang/String;
    .restart local v15    # "jsonObject":Lorg/json/JSONObject;
    .restart local v17    # "title":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onFinishDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {v3, v13}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setText(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onFinishDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    const-string v0, "FEE_KEY"

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 262
    const-string v0, "AMOUNT_KEY"

    iget-object v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 263
    const-string v0, "TITLE_KEY"

    iget v1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->title:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 256
    return-void
.end method

.method protected onValidateData()Z
    .locals 6

    .prologue
    const v5, 0x7f0601d6

    const v4, 0x7f0200b4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isAskPinOnTransactions()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v2

    if-nez v2, :cond_1

    .line 417
    :cond_0
    const-string v2, ""

    iget-object v3, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0, v5, v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    move v0, v1

    .line 432
    :cond_1
    :goto_0
    return v0

    .line 423
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isLengthValid()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/PinCustomEditText;->isNumericDataOnly()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    :cond_3
    iget-object v0, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0, v5, v4}, Lcom/tigo/mfsapp/components/PinCustomEditText;->setErrorConfiguration(II)V

    .line 426
    const v0, 0x7f06003e

    const v2, 0x7f060143

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move v0, v1

    .line 427
    goto :goto_0
.end method

.method public setAmount(Ljava/lang/Float;)V
    .locals 0
    .param p1, "amount"    # Ljava/lang/Float;

    .prologue
    .line 457
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->amount:Ljava/lang/Float;

    .line 458
    return-void
.end method

.method public setFee(Ljava/lang/Float;)V
    .locals 0
    .param p1, "fee"    # Ljava/lang/Float;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->fee:Ljava/lang/Float;

    .line 453
    return-void
.end method

.method public setMSISDN(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSISDN"    # Ljava/lang/String;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->MSISDN:Ljava/lang/String;

    .line 443
    return-void
.end method

.method public setOnFinishDialog(Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;)V
    .locals 0
    .param p1, "onFinishDialog"    # Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onFinishDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    .line 527
    return-void
.end method

.method public setShoudHideNameIfNull(Z)V
    .locals 0
    .param p1, "shoudHideNameIfNull"    # Z

    .prologue
    .line 549
    iput-boolean p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->shoudHideNameIfNull:Z

    .line 550
    return-void
.end method

.method public setTextTitle(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 521
    iput p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->title:I

    .line 522
    return-void
.end method

.method public setTigoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tigoName"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->tigoName:Ljava/lang/String;

    .line 438
    return-void
.end method

.method public setTransactionDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "transactionDescription"    # Ljava/lang/String;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->transactionDescription:Ljava/lang/String;

    .line 448
    return-void
.end method

.method protected showBalance(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->isShowResultingBalance()Z

    move-result v6

    if-nez v6, :cond_0

    .line 227
    const v6, 0x7f0d007e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 228
    .local v3, "balanceView":Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .end local v3    # "balanceView":Landroid/view/View;
    :goto_0
    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v6

    iget-object v7, p0, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->total:Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "balance":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06007f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "balance_label":Ljava/lang/String;
    const v6, 0x7f0d007f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 234
    .local v1, "balanceText":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 236
    .local v2, "balanceUpdated":Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 237
    .local v4, "balanceWithStyle":Landroid/text/SpannableStringBuilder;
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    .line 238
    invoke-virtual {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 239
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    .line 240
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x21

    .line 237
    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 243
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
