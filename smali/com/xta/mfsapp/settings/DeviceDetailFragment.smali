.class public Lcom/tigo/mfsapp/settings/DeviceDetailFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "DeviceDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;
    }
.end annotation


# static fields
.field public static final PARAM_DEVICE:Ljava/lang/String; = "DEVICE"

.field protected static final REQUEST_CODE_PINCODE:I = 0x1


# instance fields
.field private deregisterButton:Landroid/widget/Button;

.field private device:Lcom/tigo/mfsapp/model/Device;

.field private dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

.field private languageText:Landroid/widget/TextView;

.field private manufacturer:Landroid/widget/TextView;

.field private model:Landroid/widget/TextView;

.field private msisdnText:Landroid/widget/TextView;

.field private onDeviceDetailListener:Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

.field private pinCode:Ljava/lang/String;

.field private registrationDateText:Landroid/widget/TextView;

.field private type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->pinCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->pinCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->submit()V

    return-void
.end method


# virtual methods
.method protected deregisterDevice()V
    .locals 4

    .prologue
    .line 118
    new-instance v1, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 122
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x0

    const v3, 0x7f0b0085

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setStyle(II)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeTitle(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06008d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setPincodeText(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 130
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->dialog:Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    new-instance v2, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;-><init>(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "Device_Details"

    return-object v0
.end method

.method public getOnDeviceDetailListener()Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->onDeviceDetailListener:Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    const v0, 0x7f06011e

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 180
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->msisdnText:Landroid/widget/TextView;

    .line 82
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0294

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->registrationDateText:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0295

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->languageText:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0296

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->manufacturer:Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0297

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->model:Landroid/widget/TextView;

    .line 86
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->type:Landroid/widget/TextView;

    .line 87
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d0290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->deregisterButton:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->deregisterButton:Landroid/widget/Button;

    new-instance v1, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$1;-><init>(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isShowDeregisterThisInSettings()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Device;->isIsCurrentlyInUse()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->deregisterButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 100
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 164
    packed-switch p1, :pswitch_data_0

    .line 173
    :pswitch_0
    return-void

    .line 164
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v5, "DEVICE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 67
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 68
    .local v1, "gson":Lcom/google/gson/Gson;
    const-string v5, "DEVICE"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "jsonString":Ljava/lang/String;
    const-class v3, Lcom/tigo/mfsapp/model/Device;

    .line 70
    .local v3, "typeOfDevice":Ljava/lang/reflect/Type;
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/model/Device;

    iput-object v5, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    .line 73
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "jsonString":Ljava/lang/String;
    .end local v3    # "typeOfDevice":Ljava/lang/reflect/Type;
    :cond_0
    const v5, 0x7f0300bc

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 74
    .local v4, "view":Landroid/view/View;
    return-object v4
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v6, 0x0

    .line 191
    instance-of v2, p2, Lcom/tigo/mfsapp/service/DevicesDeregisterResponse;

    if-eqz v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->onDeviceDetailListener:Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->onDeviceDetailListener:Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

    iget-object v3, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-interface {v2, v3}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;->deviceDeleted(Lcom/tigo/mfsapp/model/Device;)V

    .line 197
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f06011f

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 199
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "ui_action"

    const-string v4, "button_press"

    const-string v5, "Delete_Device_Button"

    invoke-static {v2, v3, v4, v5}, Lcom/tigo/mfsapp/common/AnalitycsTracker;->sendViewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v2, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Device;->isIsCurrentlyInUse()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 205
    const-string v2, "VALIDATED_GUID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "VALIDATED_GUID"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    :cond_0
    invoke-static {v6}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 211
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 213
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 224
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 218
    :cond_2
    invoke-virtual {p0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 151
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->msisdnText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getMSISDN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->registrationDateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getRegistrationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->manufacturer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->model:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->type:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 185
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->device:Lcom/tigo/mfsapp/model/Device;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Device;->getGUID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->pinCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestDeregisterDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public setOnDeviceDetailListener(Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;)V
    .locals 0
    .param p1, "onDeviceDetailListener"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->onDeviceDetailListener:Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;

    .line 246
    return-void
.end method
