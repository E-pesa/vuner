.class public Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ActivateNewUsersFragment.java"


# instance fields
.field next:Landroid/widget/Button;

.field textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "ActivateNewUsers"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0600a1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    const v1, 0x7f030059

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 32
    const v1, 0x7f0d0133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->next:Landroid/widget/Button;

    .line 34
    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->setSubmitButton(Landroid/view/View;)V

    .line 36
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 62
    new-instance v0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;-><init>()V

    .local v0, "fragment":Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;
    move-object v1, p2

    .line 64
    check-cast v1, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;

    .line 66
    .local v1, "res":Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getSubscriberFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setFirstName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getSubscriberLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setLastName(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setMSISDN(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setIdType(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getIdNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setIdNumber(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getDateOfBirth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setDateOfBirth(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getCrfNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setCrfNumber(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getNationality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setNationality(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getResidentialAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setResidencialAddress(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->getUserStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setUserStatus(Ljava/lang/String;)V

    .line 76
    const v2, 0x7f0600a8

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->setTextTitle(I)V

    .line 77
    invoke-virtual {p0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 78
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 54
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestInformationActivateNewUsers(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onValidateData()Z
    .locals 4

    .prologue
    .line 83
    const/4 v0, 0x1

    .line 85
    .local v0, "valid":Z
    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersFragment;->textMobileNumber:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v2, 0x7f0600a4

    const v3, 0x7f020038

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 88
    const/4 v0, 0x0

    .line 91
    :cond_0
    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method
