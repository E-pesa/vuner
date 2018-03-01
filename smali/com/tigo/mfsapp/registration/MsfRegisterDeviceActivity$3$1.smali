.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$1;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;


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


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishProcess()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;

    iget-object v0, v0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$3;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->finish()V

    .line 172
    return-void
.end method
