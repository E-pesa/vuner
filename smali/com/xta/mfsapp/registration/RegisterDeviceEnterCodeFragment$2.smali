.class Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;
.super Ljava/lang/Object;
.source "RegisterDeviceEnterCodeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

.field final synthetic val$response:Lcom/tigo/mfsapp/service/Response;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    iput-object p2, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->val$response:Lcom/tigo/mfsapp/service/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 210
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowSecurityQuestion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->setAutoShowProgressDialog(Z)V

    .line 213
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->showProgressDialog()V

    .line 216
    :cond_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, "preferencesEditor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "WAITING_REGISTRATION_CODE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    const-string v1, "WAITING_REGISTRATION_CODE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$000(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setGUID(Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 222
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->access$100(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;)V

    .line 223
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->val$response:Lcom/tigo/mfsapp/service/Response;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;->this$0:Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2$1;-><init>(Lcom/tigo/mfsapp/registration/RegisterDeviceEnterCodeFragment$2;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_2
    return-void
.end method
