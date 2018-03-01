.class public Lcom/tigo/mfsapp/settings/SettingsFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "SettingsFragment.java"


# static fields
.field private static final REQUEST_CODE_DETAIL:I = 0x1

.field protected static final REQUEST_CODE_PINCODE:I = 0x1


# instance fields
.field private actionSubmit:I

.field private changeLanguageButton:Landroid/widget/Button;

.field private changePincodeButton:Landroid/widget/Button;

.field private changeQuestionButton:Landroid/widget/Button;

.field private dateSectionView:Landroid/view/View;

.field private deregisterDevicesButton:Landroid/widget/Button;

.field private deviceSectionView:Landroid/view/View;

.field private devices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Device;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

.field private diuSectionView:Landroid/view/View;

.field private msisdnText:Landroid/widget/TextView;

.field private nameSectionView:Landroid/view/View;

.field private nameText:Landroid/widget/TextView;

.field private pinCode:Ljava/lang/String;

.field private questionSectionView:Landroid/view/View;

.field private registrationDIUTYPEText:Landroid/widget/TextView;

.field private registrationDIUText:Landroid/widget/TextView;

.field private registrationDateText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->pinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/settings/SettingsFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/settings/SettingsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->actionSubmit:I

    return p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/settings/SettingsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->submit()V

    return-void
.end method

.method private updateData()V
    .locals 7

    .prologue
    .line 194
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "language"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Language;->getAll()[Lcom/tigo/mfsapp/model/Language;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    .line 198
    .local v1, "language":Lcom/tigo/mfsapp/model/Language;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Language;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 200
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeLanguageButton:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Language;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 205
    .end local v1    # "language":Lcom/tigo/mfsapp/model/Language;
    :cond_0
    const-string v3, ""

    invoke-static {v3}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "msisdn":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->msisdnText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v3, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDateText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    return-void

    .line 196
    .end local v2    # "msisdn":Ljava/lang/String;
    .restart local v1    # "language":Lcom/tigo/mfsapp/model/Language;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected ShowDeviceDetails(Lcom/tigo/mfsapp/model/Device;)V
    .locals 4
    .param p1, "device"    # Lcom/tigo/mfsapp/model/Device;

    .prologue
    .line 320
    new-instance v2, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;-><init>()V

    .line 321
    .local v2, "fragment":Lcom/tigo/mfsapp/settings/DeviceDetailFragment;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "deviceString":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "DEVICE"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 325
    new-instance v3, Lcom/tigo/mfsapp/settings/SettingsFragment$6;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$6;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->setOnDeviceDetailListener(Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;)V

    .line 334
    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/SettingsFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 335
    return-void
.end method

.method protected changeLanguage()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 227
    return-void
.end method

.method protected changePincode()V
    .locals 4

    .prologue
    .line 212
    new-instance v1, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;-><init>()V

    .line 213
    .local v1, "fragment":Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "key"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->setArguments(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/settings/SettingsFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 217
    return-void
.end method

.method protected changeQuestion()V
    .locals 1

    .prologue
    .line 221
    new-instance v0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 222
    return-void
.end method

.method protected deregisterAllDevices()V
    .locals 4

    .prologue
    .line 373
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 375
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 377
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 382
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 383
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const v2, 0x7f06008b

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeText(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    new-instance v2, Lcom/tigo/mfsapp/settings/SettingsFragment$7;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$7;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->retrySubmit:Ljava/lang/Boolean;

    .line 360
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 361
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "Settings_Menu"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const v0, 0x7f06002e

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 232
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 74
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0280

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeLanguageButton:Landroid/widget/Button;

    .line 76
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0282

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changePincodeButton:Landroid/widget/Button;

    .line 77
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d028e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deviceSectionView:Landroid/view/View;

    .line 78
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0288

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dateSectionView:Landroid/view/View;

    .line 79
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d028b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->diuSectionView:Landroid/view/View;

    .line 80
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dateSectionView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0286

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->nameSectionView:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0283

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->questionSectionView:Landroid/view/View;

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0284

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeQuestionButton:Landroid/widget/Button;

    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0290

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deregisterDevicesButton:Landroid/widget/Button;

    .line 86
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isRegisterDeviceEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deviceSectionView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->dateSectionView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 96
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowSecurityQuestion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeQuestionButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->questionSectionView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeLanguageButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/settings/SettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$1;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changePincodeButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/settings/SettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$2;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->changeQuestionButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/settings/SettingsFragment$3;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$3;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->msisdnText:Landroid/widget/TextView;

    .line 132
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0287

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->nameText:Landroid/widget/TextView;

    .line 133
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d028a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDateText:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d028d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDIUText:Landroid/widget/TextView;

    .line 135
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d028c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDIUTYPEText:Landroid/widget/TextView;

    .line 136
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "ACCOUNT_NAME"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->nameSectionView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->diuSectionView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 149
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowUserProfileInSettings()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->getROLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 151
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->diuSectionView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 152
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDIUTYPEText:Landroid/widget/TextView;

    const v2, 0x7f0601db

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDIUText:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->getROLE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowDeregisterAllDevicesButton()Z

    move-result v1

    if-nez v1, :cond_3

    .line 169
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deregisterDevicesButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deregisterDevicesButton:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/settings/SettingsFragment$4;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$4;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-direct {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->updateData()V

    .line 183
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->submit()V

    .line 184
    return-void

    .line 92
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->deviceSectionView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 142
    .restart local v0    # "name":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->nameText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    const v0, 0x7f0300bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 13
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 251
    instance-of v9, p2, Lcom/tigo/mfsapp/service/DevicesListResponse;

    if-eqz v9, :cond_1

    move-object v3, p2

    .line 253
    check-cast v3, Lcom/tigo/mfsapp/service/DevicesListResponse;

    .line 254
    .local v3, "devicesListResponse":Lcom/tigo/mfsapp/service/DevicesListResponse;
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/DevicesListResponse;->getDevices()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->devices:Ljava/util/List;

    .line 255
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getView()Landroid/view/View;

    move-result-object v9

    const v10, 0x7f0d0291

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->devices:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/Device;

    .line 258
    .local v2, "device":Lcom/tigo/mfsapp/model/Device;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0300bd

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 259
    .local v8, "view":Landroid/view/View;
    const v10, 0x7f0d0297

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 260
    .local v6, "name":Landroid/widget/TextView;
    const v10, 0x7f0d0292

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 261
    .local v5, "msisdn":Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->getModel()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f060201

    invoke-virtual {p0, v11}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->getRegistrationDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v8, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 264
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->isIsCurrentlyInUse()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const v11, 0x7f060260

    invoke-virtual {p0, v11}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v10, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->registrationDateText:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->getRegistrationDate()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/tigo/mfsapp/utils/Utils;->dateformater(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/view/View;->setClickable(Z)V

    .line 272
    new-instance v10, Lcom/tigo/mfsapp/settings/SettingsFragment$5;

    invoke-direct {v10, p0}, Lcom/tigo/mfsapp/settings/SettingsFragment$5;-><init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 290
    .end local v0    # "container":Landroid/view/ViewGroup;
    .end local v2    # "device":Lcom/tigo/mfsapp/model/Device;
    .end local v3    # "devicesListResponse":Lcom/tigo/mfsapp/service/DevicesListResponse;
    .end local v5    # "msisdn":Landroid/widget/TextView;
    .end local v6    # "name":Landroid/widget/TextView;
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    instance-of v9, p2, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;

    if-eqz v9, :cond_3

    move-object v1, p2

    .line 293
    check-cast v1, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;

    .line 295
    .local v1, "deregisterAllResponse":Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;->isStatusOK()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 298
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const v10, 0x7f06011f

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 300
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v7

    .line 301
    .local v7, "preference":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 302
    const-string v9, "VALIDATED_GUID"

    invoke-interface {v7, v9}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 303
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "VALIDATED_GUID"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 306
    :cond_2
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 308
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 309
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 310
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 316
    .end local v1    # "deregisterAllResponse":Lcom/tigo/mfsapp/service/DevicesDeregisterAllResponse;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "preference":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 238
    iget v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->actionSubmit:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->actionSubmit:I

    .line 241
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/SettingsFragment;->pinCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestDeregisterAllDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/service/Connection;->requestDevicesList(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method protected refreshList()V
    .locals 0

    .prologue
    .line 341
    return-void
.end method
