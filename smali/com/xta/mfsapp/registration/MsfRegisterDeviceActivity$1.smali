.class Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;
.super Ljava/lang/Object;
.source "MsfRegisterDeviceActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 56
    iput-object p1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderEnrichmentError(I)V
    .locals 3
    .param p1, "ErrorCode"    # I

    .prologue
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HE error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/dialogs/OkDialogFragment;-><init>()V

    .line 64
    .local v0, "okDialog":Lcom/tigo/mfsapp/dialogs/OkDialogFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    new-instance v2, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1$1;-><init>(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;Lcom/tigo/mfsapp/dialogs/OkDialogFragment;)V

    invoke-static {v1, v0, v2}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->onHeaderEnrichmentError(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/dialogs/OkDialogFragment;Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public onHeaderEnrichmentSuccessValidation()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "HE SUCESS VALIDATION, app will continue to register process"

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity$1;->this$0:Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;

    invoke-static {v0}, Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;->access$000(Lcom/tigo/mfsapp/registration/MsfRegisterDeviceActivity;)V

    .line 82
    return-void
.end method
