.class public Lcom/tigo/mfsapp/topup/TopupStep1Fragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "TopupStep1Fragment.java"


# static fields
.field protected static final PACKAGE_NAME_SV:Ljava/lang/String; = "sv.tigo.mfsapp"


# instance fields
.field MSISDN:Ljava/lang/String;

.field bundle:Landroid/os/Bundle;

.field editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field myPhoneButton:Landroid/widget/Button;

.field nextButton:Landroid/widget/Button;

.field tigoNameResponse:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->bundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->submit()V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->isPhoneValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->submit()V

    return-void
.end method

.method private isPhoneValid()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 102
    const-string v1, ""

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0601d4

    const v3, 0x7f0200d8

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[0-9]*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setPhoneSelected(Landroid/text/Editable;)V

    .line 109
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setText(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setContactName(Ljava/lang/String;)V

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v1, v2}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "Topup"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f060072

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    const v1, 0x7f0300c9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d02aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->myPhoneButton:Landroid/widget/Button;

    .line 44
    const v1, 0x7f0d02ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->nextButton:Landroid/widget/Button;

    .line 45
    const v1, 0x7f0d02ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 47
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->myPhoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;-><init>(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->nextButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$2;-><init>(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 154
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v1, :cond_0

    .line 156
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sv.tigo.mfsapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->MSISDN:Ljava/lang/String;

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 165
    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_0
    :goto_0
    new-instance v0, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;-><init>()V

    .line 166
    .local v0, "fragment":Lcom/tigo/mfsapp/topup/TopupStep2Fragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_MSISDN_RESPONSE"

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->bundle:Landroid/os/Bundle;

    const-string v2, "PARAM_TIGONAME"

    iget-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep2Fragment;->initForm(Landroid/os/Bundle;)V

    .line 169
    invoke-virtual {p0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 170
    return-void

    .line 161
    .end local v0    # "fragment":Lcom/tigo/mfsapp/topup/TopupStep2Fragment;
    .restart local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    :cond_1
    check-cast p2, Lcom/tigo/mfsapp/service/LookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "token":Ljava/lang/String;
    iput-object v3, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 135
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tz.tigo.mfsap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 142
    iget-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->editText:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getContactName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->tigoNameResponse:Ljava/lang/String;

    .line 145
    :cond_2
    invoke-virtual {p0, v3, v3}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x1

    return v0
.end method
