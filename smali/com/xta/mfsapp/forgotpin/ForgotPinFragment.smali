.class public Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ForgotPinFragment.java"


# instance fields
.field private GUID:Ljava/lang/String;

.field private answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

.field private commitButton:Landroid/widget/Button;

.field private isStart:Ljava/lang/Boolean;

.field private questionTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->isStart:Ljava/lang/Boolean;

    .line 46
    return-void
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 186
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideProgressDialog()V

    .line 188
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 189
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const-string v0, "Forgot_Pin"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    const v0, 0x7f06023d

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const-string v0, "PARAM_GUID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->GUID:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 294
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 295
    if-eqz p1, :cond_0

    .line 299
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 76
    const v3, 0x7f030058

    invoke-virtual {p1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d011d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->questionTextView:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0d011e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 79
    const v3, 0x7f0d011f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->commitButton:Landroid/widget/Button;

    .line 81
    new-instance v0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$1;-><init>(Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;)V

    .line 96
    .local v0, "filter":Landroid/text/InputFilter;
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    new-array v4, v6, [Landroid/text/InputFilter;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 98
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->commitButton:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->setSubmitButton(Landroid/view/View;)V

    .line 100
    new-instance v3, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$2;-><init>(Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 115
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "REQUEST_GUID"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "requestGUID":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->GUID:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 119
    iput-object v1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->GUID:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->setAutoShowProgressDialog(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->submit()V

    .line 126
    return-object v2
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 276
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 279
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 282
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 12
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const v9, 0x7f06003e

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 195
    instance-of v6, p2, Lcom/tigo/mfsapp/service/ValidateSecurityQuestionResponse;

    if-eqz v6, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideProgressDialog()V

    .line 200
    const v6, 0x7f0600c7

    new-instance v7, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;

    invoke-direct {v7, p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;-><init>(Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;)V

    invoke-virtual {p0, v9, v6, v7}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 214
    :cond_0
    instance-of v6, p2, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    if-eqz v6, :cond_4

    .line 217
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->isStart:Ljava/lang/Boolean;

    move-object v6, p2

    .line 219
    check-cast v6, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->getUserQuestionID()I

    move-result v3

    .line 220
    .local v3, "id":I
    check-cast p2, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->getArrSecurityQuestion()Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    .local v0, "arrSecurityQuestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/SecurityQuestion;>;"
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "language"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "language":Ljava/lang/String;
    if-ltz v3, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 226
    const-string v5, ""

    .line 227
    .local v5, "question":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getQuestionID()I

    move-result v6

    if-ne v6, v3, :cond_1

    .line 231
    const-string v6, "es_SV"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 232
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/DisplayNames;->getEs_SV()Ljava/lang/String;

    move-result-object v5

    .line 227
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/DisplayNames;->getEn()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 238
    :cond_3
    iget-object v6, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->questionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideProgressDialog()V

    .line 271
    .end local v0    # "arrSecurityQuestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/SecurityQuestion;>;"
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "question":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 245
    .restart local v0    # "arrSecurityQuestion":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/SecurityQuestion;>;"
    .restart local v3    # "id":I
    .restart local v4    # "language":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideProgressDialog()V

    .line 247
    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f060037

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {p0, v7, v8}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;

    invoke-direct {v8, p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;-><init>(Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;)V

    invoke-virtual {p0, v6, v7, v8}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v1

    .line 262
    .local v1, "dialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v1, :cond_4

    .line 264
    invoke-virtual {p0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 265
    invoke-virtual {v1}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 288
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 64
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v2, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->isStart:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v2, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/tigo/mfsapp/service/Connection;->requestGetSecurityQuestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :goto_0
    return-void

    .line 173
    .end local v1    # "msisdn":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "answer":Ljava/lang/String;
    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .restart local v1    # "msisdn":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->setAutoShowProgressDialog(Z)V

    .line 177
    iget-object v2, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v2, v1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestValidateSecurityQuestion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 7

    .prologue
    const v6, 0x7f0600c8

    .line 132
    const/4 v1, 0x1

    .line 134
    .local v1, "result":Z
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "answerText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const/4 v1, 0x0

    .line 141
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d8

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 155
    .end local v0    # "answerText":Ljava/lang/String;
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 145
    .end local v2    # "result":I
    .restart local v0    # "answerText":Ljava/lang/String;
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 147
    const/4 v1, 0x0

    .line 148
    const v3, 0x7f06003e

    const v4, 0x7f0600ca

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 149
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200b4

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 150
    .restart local v2    # "result":I
    goto :goto_0

    .end local v0    # "answerText":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_1
    move v2, v1

    .line 155
    .restart local v2    # "result":I
    goto :goto_0
.end method
