.class public Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "BankTranferStep3Fragment.java"


# instance fields
.field private accountNumber:Ljava/lang/String;

.field private amountText:Ljava/lang/String;

.field private bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

.field private favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;",
            ">;"
        }
    .end annotation
.end field

.field private favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

.field private pinCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favorites:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Lcom/tigo/mfsapp/adapters/BankInfo;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->amountText:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getAccountNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBankInfo()Lcom/tigo/mfsapp/adapters/BankInfo;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

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

    .line 182
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv.tigo.mfsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f4

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aput-object p1, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "string":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 187
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600f3

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->amount:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->fee:Ljava/lang/Float;

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormaterWithSymbol(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    aput-object v4, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "string":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getEcommerceProduct()Lcom/tigo/mfsapp/model/EcommerceProduct;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/tigo/mfsapp/model/EcommerceProduct;

    const-string v1, "Bank Transfer"

    const-string v2, "BankTransfer"

    invoke-direct {v0, v1, v2}, Lcom/tigo/mfsapp/model/EcommerceProduct;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0200a0

    const/16 v4, 0x28

    const/4 v5, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->phone:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getBaseBankLogosUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/adapters/BankInfo;->getLIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->avatar:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 85
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->textTitle:Landroid/widget/TextView;

    const v3, 0x7f0600f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 87
    new-instance v2, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;-><init>()V

    iput-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .local v0, "currentapiVersion":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const v3, 0x7f0b0085

    invoke-virtual {v2, v5, v3}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setStyle(II)V

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    const v3, 0x7f060076

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setTitle(Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {v2, p0, v5}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 98
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setOnFinishDialog(Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;)V

    .line 100
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    invoke-virtual {v2, v5}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setEnableInput(Z)V

    .line 101
    invoke-static {}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getInstance()Lcom/tigo/mfsapp/utils/FavoriteManager;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    const-string v4, "BANK_TRANSFER_FAVORITE"

    new-instance v5, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$1;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/tigo/mfsapp/utils/FavoriteManager;->getAll(Ljava/lang/Class;Ljava/lang/String;Lcom/tigo/mfsapp/utils/EncryptedStorge$TaskAllResult;)V

    .line 119
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->favoritesDialog:Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;

    new-instance v3, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment$2;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;)V

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/dialogs/FavoritesDialogFragment;->setOkListener(Landroid/view/View$OnClickListener;)V

    .line 156
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 9
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 41
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "token":Ljava/lang/String;
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

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->editPincode:Lcom/tigo/mfsapp/components/PinCustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/PinCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->pinCode:Ljava/lang/String;

    .line 46
    :cond_1
    const/4 v5, 0x0

    .line 47
    .local v5, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v5

    .line 49
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v0

    if-nez v0, :cond_2

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->transactionDescription:Ljava/lang/String;

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->pinCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->amount:Ljava/lang/Float;

    iget-object v7, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->transactionDescription:Ljava/lang/String;

    iget-object v8, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->fee:Ljava/lang/Float;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Lcom/tigo/mfsapp/service/Connection;->requestBankTransfer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Float;)V

    .line 55
    return-void
.end method

.method public setAccountNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "accountNumber"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->accountNumber:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setAmountText(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->amountText:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)V
    .locals 0
    .param p1, "bankInfo"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 166
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    return v0
.end method
