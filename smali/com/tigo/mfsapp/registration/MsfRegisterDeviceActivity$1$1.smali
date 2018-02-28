.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->onHeaderEnrichmentError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

.field final synthetic val$okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;Lcom/tigo/mfsapp/dialogs/OkDialogFragment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    iput-object p2, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->val$okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->val$okDialog:Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;->dismiss()V

    .line 68
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    const-class v2, Lcom/tigo/mfsapp/startup/MsfSplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->startActivity(Landroid/content/Intent;)V

    .line 70
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;->this$1:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;

    iget-object v1, v1, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->finish()V

    .line 71
    return-void
.end method
