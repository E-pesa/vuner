.class public Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "BillPaymentConfirmFragment.java"


# static fields
.field public static final PARAM_FAVORITE_REFERENCE_NUMBER:Ljava/lang/String; = "PARAM_FAVORITE_REFERENCE_NUMBER"

.field public static final PARAM_FAVORITE_TYPE_REFERENCE_NUMBER:Ljava/lang/String; = "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

.field public static final PARAM_SELECTED_AMOUNT:Ljava/lang/String; = "PARAM_SELECTED_AMOUNT"

.field public static final PARAM_SELECTED_BILL_JSON:Ljava/lang/String; = "PARAM_SELECTED_COMPANY_JSON"

.field public static final PARAM_SELECTED_COMPANY:Ljava/lang/String; = "PARAM_SELECTED_COMPANY"

.field public static final PARAM_SELECTED_COMPANY_JSON:Ljava/lang/String; = "PARAM_SELECTED_COMPANY_JSON"

.field public static final PARAM_SELECTED_REFERENCE_NUMBER:Ljava/lang/String; = "PARAM_SELECTED_REFERENCE_NUMBER"

.field public static final PARAM_SELECTED_REFERENCE_TYPE:Ljava/lang/String; = "PARAM_SELECTED_REFERENCE_TYPE"


# instance fields
.field private bill:Lcom/tigo/mfsapp/model/Bill;

.field private company:Lcom/tigo/mfsapp/model/Company;

.field private favoriteRefNumber:Ljava/lang/String;

.field private favoriteTypeRefNumber:Ljava/lang/String;

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;",
            ">;"
        }
    .end annotation
.end field

.field private favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

.field private refNumber:Ljava/lang/String;

.field private referenceType:Ljava/lang/String;

.field private txtAmount:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favorites:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Lcom/tigo/mfsapp/model/Company;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteRefNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->transactionDescription:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBill()Lcom/tigo/mfsapp/model/Bill;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    return-object v0
.end method

.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 311
    const-string v1, ""

    .line 313
    .local v1, "wallet":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getName()Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sv.tigo.mfsapp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fb

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v5

    const v6, 0x7f060062

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->textAmount:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->textFee:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 324
    .end local v0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fa

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->fee:Ljava/lang/Float;

    invoke-static {v6}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    .line 325
    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v5

    const v6, 0x7f060062

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 324
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 371
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "Bill Payment"

    const-string v2, "BillPayment"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 62
    const-string v0, "PARAM_SELECTED_COMPANY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Company;

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    .line 63
    const-string v0, "PARAM_SELECTED_REFERENCE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    .line 65
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->MSISDN:Ljava/lang/String;

    .line 67
    const-string v0, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    .line 71
    :cond_0
    const-string v0, "PARAM_SELECTED_REFERENCE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "PARAM_SELECTED_REFERENCE_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->referenceType:Ljava/lang/String;

    .line 76
    :cond_1
    const-string v0, "PARAM_FAVORITE_REFERENCE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    const-string v0, "PARAM_FAVORITE_REFERENCE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteRefNumber:Ljava/lang/String;

    .line 80
    :cond_2
    const-string v0, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    const-string v0, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    .line 84
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super/range {p0 .. p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    if-eqz p1, :cond_6

    .line 92
    const-string v12, "PARAM_SELECTED_COMPANY_JSON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 94
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 95
    .local v8, "s":Lcom/google/gson/Gson;
    const-string v12, "PARAM_SELECTED_COMPANY_JSON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "json":Ljava/lang/String;
    const-class v12, Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v8, v3, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/Company;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    .line 98
    .end local v3    # "json":Ljava/lang/String;
    .end local v8    # "s":Lcom/google/gson/Gson;
    :cond_0
    const-string v12, "PARAM_SELECTED_COMPANY_JSON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 100
    new-instance v8, Lcom/google/gson/Gson;

    invoke-direct {v8}, Lcom/google/gson/Gson;-><init>()V

    .line 101
    .restart local v8    # "s":Lcom/google/gson/Gson;
    const-string v12, "PARAM_SELECTED_COMPANY_JSON"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .restart local v3    # "json":Ljava/lang/String;
    const-class v12, Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v8, v3, v12}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/tigo/mfsapp/model/Bill;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    .line 105
    .end local v3    # "json":Ljava/lang/String;
    .end local v8    # "s":Lcom/google/gson/Gson;
    :cond_1
    const-string v12, "PARAM_SELECTED_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 107
    const-string v12, "PARAM_SELECTED_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    .line 109
    :cond_2
    const-string v12, "PARAM_SELECTED_AMOUNT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 111
    const-string v12, "PARAM_SELECTED_AMOUNT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    .line 113
    :cond_3
    const-string v12, "PARAM_SELECTED_REFERENCE_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 115
    const-string v12, "PARAM_SELECTED_REFERENCE_TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->referenceType:Ljava/lang/String;

    .line 118
    :cond_4
    const-string v12, "PARAM_FAVORITE_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 120
    const-string v12, "PARAM_FAVORITE_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteRefNumber:Ljava/lang/String;

    .line 123
    :cond_5
    const-string v12, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 125
    const-string v12, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->name:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v13}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->name:Landroid/widget/TextView;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->phone:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v12, 0x28

    const/16 v13, 0x28

    invoke-direct {v6, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v6, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v14

    invoke-virtual {v14}, Lcom/tigo/mfsapp/model/Parameters;->getBasePaymentLogosUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v14}, Lcom/tigo/mfsapp/model/Company;->getLogoName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v12

    const v13, 0x7f0200a0

    invoke-virtual {v12, v13}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v12

    const v13, 0x7f0200a0

    invoke-virtual {v12, v13}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v12, v13}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v12

    array-length v12, v12

    if-lez v12, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getConfirmationParameters()[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "confirmationParameters":[Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->dynamicParametersLayuot:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    array-length v14, v1

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_9

    aget-object v4, v1, v13

    .line 161
    .local v4, "label":Ljava/lang/String;
    const/4 v9, 0x0

    .line 164
    .local v9, "value":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/Bill;->getDynamicParameters()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/Bill;->getDynamicParameters()Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 170
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    const-string v15, "layout_inflater"

    invoke-virtual {v12, v15}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 172
    .local v7, "li":Landroid/view/LayoutInflater;
    const v12, 0x7f0300cc

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v7, v12, v15, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 173
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f0d02b4

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 174
    .local v5, "labeltext":Landroid/widget/TextView;
    const v12, 0x7f0d02b5

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 176
    .local v10, "valuetext":Landroid/widget/TextView;
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-static {v12}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->dynamicParametersLayuot:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_8

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->dynamicParametersLayuot:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    :cond_8
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 183
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "labeltext":Landroid/widget/TextView;
    .end local v7    # "li":Landroid/view/LayoutInflater;
    .end local v9    # "value":F
    .end local v10    # "valuetext":Landroid/widget/TextView;
    .end local v11    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getAmount()Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getFee()Ljava/lang/Float;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->total:Ljava/lang/Float;

    .line 184
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->textTotal:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->total:Ljava/lang/Float;

    invoke-static {v13}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .end local v1    # "confirmationParameters":[Ljava/lang/String;
    :cond_a
    new-instance v12, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-direct {v12}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    .line 192
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .local v2, "currentapiVersion":I
    const/16 v12, 0x10

    if-ge v2, v12, :cond_b

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const/4 v13, 0x0

    const v14, 0x7f0b0085

    invoke-virtual {v12, v13, v14}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setStyle(II)V

    .line 199
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const v13, 0x7f060271

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v12, v0, v13}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setOnFinishDialog(Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setEnableInput(Z)V

    .line 204
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v12

    const-class v13, Lcom/tigo/mfsapp/billpayment/BillPaymentFavorite;

    const-string v14, "BILL_PAYMENT_FAVORITE"

    new-instance v15, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$1;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)V

    invoke-virtual {v12, v13, v14, v15}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getAll(Ljava/lang/Class;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    new-instance v13, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment$2;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;)V

    invoke-virtual {v12, v13}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 258
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 350
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 351
    .local v2, "s":Lcom/google/gson/Gson;
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "json":Ljava/lang/String;
    const-string v3, "PARAM_SELECTED_COMPANY_JSON"

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 356
    .local v1, "jsonbill":Ljava/lang/String;
    const-string v3, "PARAM_SELECTED_COMPANY_JSON"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v1    # "jsonbill":Ljava/lang/String;
    :cond_0
    const-string v3, "PARAM_SELECTED_AMOUNT"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->txtAmount:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v3, "PARAM_SELECTED_REFERENCE_TYPE"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->referenceType:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v3, "PARAM_SELECTED_REFERENCE_NUMBER"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v3, "PARAM_FAVORITE_REFERENCE_NUMBER"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteRefNumber:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string v3, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 366
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 14
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 263
    const/4 v5, 0x0

    .line 264
    .local v5, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v5

    .line 265
    const/4 v8, 0x0

    .line 267
    .local v8, "dynamicParams":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v13

    .line 268
    .local v13, "token":Ljava/lang/String;
    const-string v6, ""

    .line 269
    .local v6, "pinCode":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDynamicParameters()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 279
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDynParamsString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    .local v12, "p":Lorg/json/JSONObject;
    const-string v0, "amount"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    const-string v0, "amount"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->getAmount()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    :cond_1
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 298
    .end local v12    # "p":Lorg/json/JSONObject;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 300
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->transactionDescription:Ljava/lang/String;

    .line 303
    :cond_3
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->refNumber:Ljava/lang/String;

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->total:Ljava/lang/Float;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->referenceType:Ljava/lang/String;

    iget-object v9, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->transactionDescription:Ljava/lang/String;

    iget-object v10, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v10}, Lcom/tigo/mfsapp/service/Connection;->requestBillPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 304
    return-void

    .line 288
    :catch_0
    move-exception v11

    .line 289
    .local v11, "e":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    .line 291
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getDynParamsString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public setBill(Lcom/tigo/mfsapp/model/Bill;)V
    .locals 0
    .param p1, "bill"    # Lcom/tigo/mfsapp/model/Bill;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    .line 344
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method
