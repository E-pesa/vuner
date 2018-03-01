.class Lcom/tigo/mfsapp/login/LoginFragment$5;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/LoginFragment;->onReceiveUnregisteredDeviceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/login/LoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/login/LoginFragment;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 340
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/login/LoginFragment;->hideOkDialog()V

    .line 341
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 342
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->getInstance()Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager;->startListeningSMSs(Lcom/tigo/mfsapp/registration/RegistrationSMSCodeManager$RegistrationSMSCodeListener;)V

    .line 343
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/login/LoginFragment;->access$000(Lcom/tigo/mfsapp/login/LoginFragment;)Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/common/AppPreferences;->setMSISDN(Ljava/lang/String;)V

    .line 344
    const-string v2, "VALIDATED_GUID"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "VALIDATED_GUID"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/tigo/mfsapp/common/AppPreferences;->setRegisteredDevice(Z)V

    .line 348
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 349
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/login/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 350
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$5;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 351
    return-void
.end method
