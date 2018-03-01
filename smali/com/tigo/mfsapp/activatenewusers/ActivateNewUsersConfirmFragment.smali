.class public Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;
.super Lcom/tigo/mfsapp/common/TransactionConfirmFragment;
.source "ActivateNewUsersConfirmFragment.java"


# instance fields
.field private crfNumber:Ljava/lang/String;

.field private dateOfBirth:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private idNumber:Ljava/lang/String;

.field private idType:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private nationality:Ljava/lang/String;

.field private residencialAddress:Ljava/lang/String;

.field private textCRFNumber:Landroid/widget/TextView;

.field private textDateOfBirth:Landroid/widget/TextView;

.field private textFirstName:Landroid/widget/TextView;

.field private textIdNumber:Landroid/widget/TextView;

.field private textIdType:Landroid/widget/TextView;

.field private textLastName:Landroid/widget/TextView;

.field private textMobileNumber:Landroid/widget/TextView;

.field private textNationality:Landroid/widget/TextView;

.field private textResidencialAddress:Landroid/widget/TextView;

.field private textUserStatus:Landroid/widget/TextView;

.field private userStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfirmationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600a7

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 123
    return-object v0
.end method

.method public getCrfNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idType:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getResidencialAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->userStatus:Ljava/lang/String;

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 42
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    if-eqz p1, :cond_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textFirstName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textLastName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textMobileNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textIdType:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textIdNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textDateOfBirth:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textNationality:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textResidencialAddress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textCRFNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textUserStatus:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->userStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->onValidateData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0082

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->submit()V

    .line 102
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 67
    const v1, 0x7f03005a

    iput v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->layoutId:I

    .line 69
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->fee:Ljava/lang/Float;

    .line 70
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->total:Ljava/lang/Float;

    .line 72
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textFirstName:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0d0135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textLastName:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0d0136

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textMobileNumber:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0d0137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textIdType:Landroid/widget/TextView;

    .line 78
    const v1, 0x7f0d0138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textIdNumber:Landroid/widget/TextView;

    .line 79
    const v1, 0x7f0d0139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textDateOfBirth:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0d013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textNationality:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0d013b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textResidencialAddress:Landroid/widget/TextView;

    .line 82
    const v1, 0x7f0d013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textCRFNumber:Landroid/widget/TextView;

    .line 83
    const v1, 0x7f0d013c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->textUserStatus:Landroid/widget/TextView;

    .line 85
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 135
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 138
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 142
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/tigo/mfsapp/common/TransactionConfirmFragment;->onStart()V

    .line 109
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 114
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "sessionToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->MSISDN:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestActivateNewUsers(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public setCrfNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "crfNumber"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->crfNumber:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setDateOfBirth(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateOfBirth"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->dateOfBirth:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->firstName:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setIdNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "idNumber"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idNumber:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setIdType(Ljava/lang/String;)V
    .locals 0
    .param p1, "idType"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->idType:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->lastName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setNationality(Ljava/lang/String;)V
    .locals 0
    .param p1, "nationality"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->nationality:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public setResidencialAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "residencialAddress"    # Ljava/lang/String;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->residencialAddress:Ljava/lang/String;

    .line 218
    return-void
.end method

.method public setUserStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "userStatus"    # Ljava/lang/String;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/tigo/mfsapp/activatenewusers/ActivateNewUsersConfirmFragment;->userStatus:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return v0
.end method
