.class Lcom/tigo/mfsapp/common/BaseFormFragment$3;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveUnregisteredDeviceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 365
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 366
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 367
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 368
    const-string v2, "VALIDATED_GUID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "VALIDATED_GUID"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 373
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isHeaderEnrichmentEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/startup/MsfSplashActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->startActivity(Landroid/content/Intent;)V

    .line 379
    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 380
    return-void

    .line 376
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$3;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
