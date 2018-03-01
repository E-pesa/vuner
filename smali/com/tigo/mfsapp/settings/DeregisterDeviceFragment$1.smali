.class Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;
.super Ljava/lang/Object;
.source "DeregisterDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->deregisterDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0d0125

    if-ne v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->access$100(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->access$002(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->access$100(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->access$200(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)V

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->access$100(Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->dismiss()V

    .line 85
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/DeregisterDeviceFragment;->closeAndGoHome()V

    goto :goto_0
.end method
