.class public Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "RegistrationDeviceEnterQuestionFragment.java"


# instance fields
.field private GUID:Ljava/lang/String;

.field private answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

.field arrSecurityQuestion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/SecurityQuestion;",
            ">;"
        }
    .end annotation
.end field

.field private commitButton:Landroid/widget/Button;

.field private isStart:Ljava/lang/Boolean;

.field private notNowButton:Landroid/widget/Button;

.field private questionSpinner:Landroid/widget/Spinner;

.field spinnerArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->isStart:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->finishForm()V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->finishForm()V

    return-void
.end method


# virtual methods
.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 203
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->hideProgressDialog()V

    .line 205
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 206
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const-string v0, "Device_Registration_Question"

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 50
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 281
    if-eqz p1, :cond_0

    .line 284
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 73
    const v2, 0x7f0300a9

    invoke-virtual {p1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    .line 75
    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 77
    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->commitButton:Landroid/widget/Button;

    .line 78
    const v2, 0x7f0d0254

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->notNowButton:Landroid/widget/Button;

    .line 80
    new-instance v0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$1;-><init>(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V

    .line 95
    .local v0, "filter":Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 97
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->notNowButton:Landroid/widget/Button;

    new-instance v3, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$2;-><init>(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->commitButton:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->setSubmitButton(Landroid/view/View;)V

    .line 129
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "REQUEST_GUID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->GUID:Ljava/lang/String;

    .line 131
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->submit()V

    .line 134
    return-object v1
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 263
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    .line 266
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 269
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 212
    instance-of v3, p2, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    if-eqz v3, :cond_2

    .line 215
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->isStart:Ljava/lang/Boolean;

    move-object v3, p2

    .line 217
    check-cast v3, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->getArrSecurityQuestion()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    .local v2, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 225
    const-string v3, "es_SV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/DisplayNames;->getEs_SV()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/DisplayNames;->getEn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0300ad

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 232
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    const v4, 0x7f0300ac

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 233
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 235
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->hideProgressDialog()V

    .line 239
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "language":Ljava/lang/String;
    :cond_2
    instance-of v3, p2, Lcom/tigo/mfsapp/service/ChangeQuestionResponse;

    if-eqz v3, :cond_3

    .line 242
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->hideProgressDialog()V

    .line 244
    const v3, 0x7f06003e

    const v4, 0x7f0601dd

    new-instance v5, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment$3;-><init>(Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 258
    :cond_3
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 274
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 56
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 62
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 170
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->isStart:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Lcom/tigo/mfsapp/service/Connection;->requestGetSecurityQuestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .end local v1    # "msisdn":Ljava/lang/String;
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "nameSelected":Ljava/lang/String;
    const/4 v3, 0x0

    .line 185
    .local v3, "questionIDSelected":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 187
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/DisplayNames;->getEn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/DisplayNames;->getEs_SV()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getQuestionID()I

    move-result v3

    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 196
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v3, v5}, Lcom/tigo/mfsapp/service/Connection;->requestChangeSecurityQuestion(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 7

    .prologue
    const v6, 0x7f0600c8

    .line 140
    const/4 v1, 0x1

    .line 142
    .local v1, "result":Z
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "answerText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 148
    const/4 v1, 0x0

    .line 149
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d8

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 164
    .end local v0    # "answerText":Ljava/lang/String;
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 153
    .end local v2    # "result":I
    .restart local v0    # "answerText":Ljava/lang/String;
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 155
    const/4 v1, 0x0

    .line 156
    const v3, 0x7f06003e

    const v4, 0x7f0600ca

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 157
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200b4

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 158
    .restart local v2    # "result":I
    goto :goto_0

    .end local v0    # "answerText":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_1
    move v2, v1

    .line 164
    .restart local v2    # "result":I
    goto :goto_0
.end method
