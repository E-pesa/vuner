.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->onFormFinish(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

.field final synthetic val$loginManager:Lcom/tigo/mfsapp/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;Lcom/tigo/mfsapp/login/LoginManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    iput-object p2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;->val$loginManager:Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPinDialog()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$2;->val$loginManager:Lcom/tigo/mfsapp/login/LoginManager;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/login/LoginManager;->manageLogin()V

    .line 180
    return-void
.end method
