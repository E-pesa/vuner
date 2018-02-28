.class public Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "DeregisterDeviceFragment.java"


# static fields
.field protected static final REQUEST_CODE_PINCODE:I = 0x1


# instance fields
.field private dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

.field private pinCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->pinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->submit()V

    return-void
.end method


# virtual methods
.method protected deregisterDevice()V
    .locals 4

    .prologue
    .line 60
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 64
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeTitle(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeText(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 73
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    new-instance v2, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;-><init>(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 161
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 118
    return-void
.end method

.method public isNoneVisual()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    const v1, 0x7f03004a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->deregisterDevice()V

    .line 45
    return-object v0
.end method

.method public onReceiveUnknownError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 166
    new-instance v0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$2;-><init>(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)V

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->showOkDialog(Landroid/view/View$OnClickListener;)V

    .line 175
    return-void
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 132
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f06011f

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 134
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 135
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 136
    const-string v2, "VALIDATED_GUID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "VALIDATED_GUID"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    :cond_0
    invoke-static {v4}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deregistered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v5}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/tigo/mfsapp/common/AppPreferences;->getRegisteredDevice(Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->startActivity(Landroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 148
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 113
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 4
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 124
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getGUID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->pinCode:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tigo/mfsapp/service/Connection;->requestDeregisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 126
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
