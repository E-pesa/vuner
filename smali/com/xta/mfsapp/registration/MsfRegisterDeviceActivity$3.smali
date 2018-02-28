.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->setContent(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormFinish(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outData"    # Landroid/os/Bundle;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$200(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v2}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$300(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)[Lcom/tigo/mfsapp/common/BaseFormFragment;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 154
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    iget-object v2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v2}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$300(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)[Lcom/tigo/mfsapp/common/BaseFormFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v3}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$200(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$400(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    .line 157
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$200(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 159
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$500(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0601e0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$600(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0601df

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    new-instance v0, Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginManager;-><init>()V

    .line 166
    .local v0, "loginManager":Lcom/tigo/mfsapp/login/LoginManager;
    new-instance v1, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$1;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnLoginManagerListener(Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;)V

    .line 174
    new-instance v1, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;

    invoke-direct {v1, p0, v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;Lcom/tigo/mfsapp/login/LoginManager;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/login/LoginManager;->setOnChangePinDialogListener(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;)V

    .line 182
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
