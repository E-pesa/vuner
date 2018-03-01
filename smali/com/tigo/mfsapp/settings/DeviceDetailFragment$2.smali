.class Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;
.super Ljava/lang/Object;
.source "DeviceDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->deregisterDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->access$100(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->access$002(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->access$100(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 138
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$2;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->access$200(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V

    .line 139
    return-void
.end method
