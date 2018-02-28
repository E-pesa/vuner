.class public Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "MsfRegisterDeviceActivity.java"


# static fields
.field private static final PARAM_CURRENT_FRAGEMNT:Ljava/lang/String; = "PARAM_CURRENT_FRAGEMNT"

.field public static final PARAM_GUID:Ljava/lang/String; = "PARAM_GUID"


# instance fields
.field private GUID:Ljava/lang/String;

.field private fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private progressDialog:Lcom/tigo/mfsapp/dialogs/ProgressDialogFragment;

.field private subTitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->doDeviceLoginProcess()V

    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->GUID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getCurrentFragment()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)[Lcom/tigo/mfsapp/common/BaseFormFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;
    .param p1, "x1"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->setContent(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    return-void
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->subTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private doDeviceLoginProcess()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowSecurityQuestion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tigo/mfsapp/common/BaseFormFragment;

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/registration/RegistrationDeviceEnterQuestionFragment;-><init>()V

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    .line 96
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 99
    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->watingRegistrationCode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    aget-object v1, v1, v3

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->setContent(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    .line 102
    const/4 v0, 0x1

    .line 108
    .local v0, "currentFragment":I
    :goto_1
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->setContent(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    .line 110
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    aget-object v1, v1, v3

    check-cast v1, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    new-instance v2, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$2;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;->setOnRegisterListener(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment$OnRegisterListener;)V

    .line 120
    const v1, 0x7f0d0037

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->title:Landroid/widget/TextView;

    .line 121
    const v1, 0x7f0d0221

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->subTitle:Landroid/widget/TextView;

    .line 122
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->subTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->title:Landroid/widget/TextView;

    const v2, 0x7f060064

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f060063

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 126
    return-void

    .line 93
    .end local v0    # "currentFragment":I
    :cond_0
    new-array v1, v5, [Lcom/tigo/mfsapp/common/BaseFormFragment;

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterPhoneFragment;-><init>()V

    aput-object v2, v1, v3

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;-><init>()V

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    goto :goto_0

    .line 105
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "currentFragment":I
    goto :goto_1
.end method

.method private getCurrentFragment()I
    .locals 5

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 210
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 214
    .local v2, "lastFragment":I
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    if-eqz v3, :cond_2

    :goto_0
    if-ltz v2, :cond_2

    .line 217
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    aget-object v3, v3, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 225
    .end local v1    # "i":I
    .end local v2    # "lastFragment":I
    :goto_2
    return v1

    .line 217
    .restart local v1    # "i":I
    .restart local v2    # "lastFragment":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 222
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    .end local v2    # "lastFragment":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private setContent(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 4
    .param p1, "fragment"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "inData":Landroid/os/Bundle;
    const-string v2, "PARAM_GUID"

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->GUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->initForm(Landroid/os/Bundle;)V

    .line 146
    new-instance v2, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V

    invoke-virtual {p1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->setOnFinishFormListener(Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;)V

    .line 188
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 189
    .local v1, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0d0222

    invoke-virtual {v1, v2, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 191
    iget-object v2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->fragmentList:[Lcom/tigo/mfsapp/common/BaseFormFragment;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    if-ne p1, v2, :cond_0

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 196
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 197
    return-void
.end method

.method private watingRegistrationCode()Z
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "WAITING_REGISTRATION_CODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->finish()V

    .line 205
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 50
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->requestWindowFeature(I)Z

    .line 52
    invoke-virtual {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 54
    const v0, 0x7f0300a4

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V

    invoke-static {p0, v0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->checkIfHELoginIsNeeded(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 245
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 247
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    const v1, 0x7f0602fe

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    const-string v0, "PARAM_CURRENT_FRAGEMNT"

    invoke-direct {p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getCurrentFragment()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 231
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 232
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 233
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 238
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->stopListeningSMSs()V

    .line 239
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 240
    return-void
.end method
