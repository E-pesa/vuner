.class public Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BankTranferStep2Fragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;


# instance fields
.field accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

.field amount:Ljava/lang/Float;

.field amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

.field autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

.field bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

.field private banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

.field close:Landroid/widget/ImageView;

.field fee:Ljava/lang/Float;

.field next:Landroid/widget/Button;

.field over:Landroid/view/View;

.field selected:Landroid/widget/TextView;

.field selectedImage:Landroid/widget/ImageView;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    return-void
.end method


# virtual methods
.method public getBankInfo()Lcom/tigo/mfsapp/adapters/BankInfo;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    return-object v0
.end method

.method public getBanksAdapter()Lcom/tigo/mfsapp/adapters/BanksAdapter;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 104
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    .line 53
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 55
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 57
    const v1, 0x7f0d00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->textLabelDescription:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f0d0062

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 60
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 66
    :cond_0
    const v1, 0x7f0d00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/AmountEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    .line 68
    const v1, 0x7f0d009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    .line 69
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v1, p0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setListener(Lcom/tigo/mfsapp/components/BanksAutocompleteEditText$BanksAutocompleteListener;)V

    .line 70
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setAdapter(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    .line 71
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setAutocompleteBanks()V

    .line 72
    const v1, 0x7f0d00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->next:Landroid/widget/Button;

    .line 74
    const v1, 0x7f0d010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->close:Landroid/widget/ImageView;

    .line 75
    const v1, 0x7f0d010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->selectedImage:Landroid/widget/ImageView;

    .line 76
    const v1, 0x7f0d010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->selected:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0d010a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->over:Landroid/view/View;

    .line 79
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->setSubmitButton(Landroid/view/View;)V

    .line 80
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->close:Landroid/widget/ImageView;

    new-instance v2, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment$1;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->onSelected()V

    .line 91
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAccountNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAmount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 93
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAccountNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getAmount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/AmountEditText;->setText(Ljava/lang/String;)V

    .line 96
    :cond_1
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 120
    instance-of v1, p2, Lcom/tigo/mfsapp/service/BankTransferFeeResponse;

    if-eqz v1, :cond_0

    .line 122
    check-cast p2, Lcom/tigo/mfsapp/service/BankTransferFeeResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/BankTransferFeeResponse;->getFee()Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->fee:Ljava/lang/Float;

    .line 124
    new-instance v0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;-><init>()V

    .line 125
    .local v0, "fragment":Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->fee:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setFee(Ljava/lang/Float;)V

    .line 126
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setAmount(Ljava/lang/Float;)V

    .line 127
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)V

    .line 128
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setAccountNumber(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setAmountText(Ljava/lang/String;)V

    .line 130
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 133
    .end local v0    # "fragment":Lcom/tigo/mfsapp/banktranfer/BankTranferStep3Fragment;
    :cond_0
    return-void
.end method

.method public onSelected()V
    .locals 4

    .prologue
    const v3, 0x7f0200a0

    .line 209
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->over:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getSelected()Lcom/tigo/mfsapp/adapters/BankInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->getSelected()Lcom/tigo/mfsapp/adapters/BankInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->selected:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getBaseBankLogosUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getLIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->selectedImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 233
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->onValidateData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amount:Ljava/lang/Float;

    .line 111
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amount:Ljava/lang/Float;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestBankTransferFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 115
    .end local v0    # "token":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onUnselected()V
    .locals 2

    .prologue
    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 239
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->closeSelection()V

    .line 240
    iget-object v0, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->over:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    return-void
.end method

.method protected onValidateData()Z
    .locals 8

    .prologue
    const v7, 0x7f0200d0

    const v6, 0x7f0200d3

    const/4 v5, 0x0

    .line 138
    const/4 v2, 0x1

    .line 139
    .local v2, "valid":Z
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->accountNumberEdit:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f060127

    invoke-virtual {v3, v4, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 142
    const/4 v2, 0x0

    .line 147
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    .local v0, "amount":Ljava/lang/Float;
    :goto_0
    const-string v3, ""

    iget-object v4, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    const v4, 0x7f060031

    invoke-virtual {v3, v4, v6}, Lcom/tigo/mfsapp/components/AmountEditText;->setErrorConfiguration(II)V

    .line 155
    const/4 v2, 0x0

    .line 160
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 162
    const v3, 0x7f06003e

    const v4, 0x7f060171

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 163
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    const v4, 0x7f060171

    const v5, 0x7f0200d3

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/components/AmountEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    const/4 v2, 0x0

    .line 174
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    if-nez v3, :cond_4

    .line 176
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->autocompleteBanks:Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;

    const v4, 0x7f0600ef

    invoke-virtual {v3, v4, v7}, Lcom/tigo/mfsapp/components/BanksAutocompleteEditText;->setErrorConfiguration(II)V

    .line 177
    const/4 v2, 0x0

    .line 180
    :cond_4
    return v2

    .line 148
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto/16 :goto_0

    .line 167
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 169
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    iget-object v3, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->amountEdit:Lcom/tigo/mfsapp/components/AmountEditText;

    const v4, 0x7f06013c

    invoke-virtual {v3, v4, v6}, Lcom/tigo/mfsapp/components/AmountEditText;->setErrorConfiguration(II)V

    .line 171
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setBankInfo(Lcom/tigo/mfsapp/adapters/BankInfo;)V
    .locals 0
    .param p1, "bankInfo"    # Lcom/tigo/mfsapp/adapters/BankInfo;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->bankInfo:Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 203
    return-void
.end method

.method public setBanksAdapter(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V
    .locals 2
    .param p1, "banksAdapter"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Banks adapter for step 2 with:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 192
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferStep2Fragment;->banksAdapter:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .line 193
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x1

    return v0
.end method
