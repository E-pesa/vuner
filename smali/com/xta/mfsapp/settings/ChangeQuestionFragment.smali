.class public Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ChangeQuestionFragment.java"


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

.field private isStart:Ljava/lang/Boolean;

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
    .line 29
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->isStart:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    const-string v0, "Change_Question"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const v0, 0x7f06023d

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 84
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

    .line 42
    const v2, 0x7f03002f

    invoke-virtual {p1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d00d2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    .line 45
    const v2, 0x7f0d00d3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 47
    const v2, 0x7f0d00d4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->setSubmitButton(Landroid/view/View;)V

    .line 49
    new-instance v0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$1;-><init>(Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;)V

    .line 64
    .local v0, "filter":Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    new-array v3, v5, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 66
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "REQUEST_GUID"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->GUID:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->submit()V

    .line 71
    return-object v1
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 124
    instance-of v3, p2, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    if-eqz v3, :cond_2

    .line 127
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->isStart:Ljava/lang/Boolean;

    move-object v3, p2

    .line 129
    check-cast v3, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/GetSecurityQuestionResponse;->getArrSecurityQuestion()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "language":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 137
    const-string v3, "es_SV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/DisplayNames;->getEs_SV()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getDisplayName()Lcom/tigo/mfsapp/model/DisplayNames;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/DisplayNames;->getEn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    :cond_1
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0300ad

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 144
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    const v4, 0x7f0300ac

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 145
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->spinnerArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->hideProgressDialog()V

    .line 151
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "language":Ljava/lang/String;
    :cond_2
    instance-of v3, p2, Lcom/tigo/mfsapp/service/ChangeQuestionResponse;

    if-eqz v3, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->hideProgressDialog()V

    .line 156
    const v3, 0x7f06003e

    const v4, 0x7f0601dd

    new-instance v5, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;-><init>(Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;)V

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 168
    :cond_3
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 90
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->isStart:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "msisdn":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->GUID:Ljava/lang/String;

    invoke-virtual {p1, v4, v1}, Lcom/tigo/mfsapp/service/Connection;->requestGetSecurityQuestion(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v1    # "msisdn":Ljava/lang/String;
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->questionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "nameSelected":Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, "questionIDSelected":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 107
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

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

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->arrSecurityQuestion:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/SecurityQuestion;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/SecurityQuestion;->getQuestionID()I

    move-result v3

    .line 105
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 114
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->setAutoShowProgressDialog(Z)V

    .line 116
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

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

    .line 173
    const/4 v1, 0x1

    .line 175
    .local v1, "result":Z
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v3, :cond_1

    .line 177
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "answerText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 182
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200d8

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 196
    .end local v0    # "answerText":Ljava/lang/String;
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 186
    .end local v2    # "result":I
    .restart local v0    # "answerText":Ljava/lang/String;
    .restart local v1    # "result":Z
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 189
    const v3, 0x7f06003e

    const v4, 0x7f0600ca

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 190
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->answerTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const v4, 0x7f0200b4

    invoke-virtual {v3, v6, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    move v2, v1

    .line 191
    .restart local v2    # "result":I
    goto :goto_0

    .end local v0    # "answerText":Ljava/lang/String;
    .end local v2    # "result":I
    :cond_1
    move v2, v1

    .line 196
    .restart local v2    # "result":I
    goto :goto_0
.end method
