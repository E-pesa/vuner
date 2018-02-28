.class public Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "RegisterDeviceEnterPhoneFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;
    }
.end annotation


# instance fields
.field private GUID:Ljava/lang/String;

.field private emailLabelView:Landroid/widget/TextView;

.field private emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

.field private onRegisterListener:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

.field private phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->onRegisterListener:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method

.method private removeStateWatingRegistrationCode()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WAITING_REGISTRATION_CODE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WAITING_REGISTRATION_CODE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string v0, "Device_Registration"

    return-object v0
.end method

.method public getOnRegisterListener()Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->onRegisterListener:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 43
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    .line 93
    .local v1, "parameters":Lcom/tigo/mfsapp/model/Parameters;
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "MSISDNSaved":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 48
    const v2, 0x7f0300a8

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 49
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0250

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 51
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentTestEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 56
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isShowEmailFieldInRegistration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    const v2, 0x7f0d0251

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailLabelView:Landroid/widget/TextView;

    .line 59
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailLabelView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    const v2, 0x7f0d0252

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 61
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/components/CustomEditText;->setAutoTrimFeature(Z)V

    .line 72
    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 74
    .local v0, "commitButton":Landroid/widget/Button;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->setSubmitButton(Landroid/view/View;)V

    .line 76
    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->removeStateWatingRegistrationCode()V

    .line 77
    return-object v1
.end method

.method public onReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 151
    new-instance v0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$1;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->showOkDialog(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$2;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->finishForm()V

    .line 183
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 132
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->clearSMSInputBox()V

    .line 133
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 135
    invoke-static {}, Lcom/tigo/mfsapp/utils/GUIDGen;->getNew()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    .line 137
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "REQUEST_GUID"

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestRegisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/common/AppPreferences;->setEmail(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->GUID:Ljava/lang/String;

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestRegisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->phoneTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->validateMSISDN(Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v0

    .line 126
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->emailTextView:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {p0, v0, v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->validateEmail(ZLcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v0

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnRegisterListener(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;)V
    .locals 0
    .param p1, "onRegisterListener"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->onRegisterListener:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;

    .line 188
    return-void
.end method
