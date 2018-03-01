.class Lcom/tigo/mfsapp/settings/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsFragment;->deregisterAllDevices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/settings/SettingsFragment;->access$100(Lcom/tigo/mfsapp/settings/SettingsFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getPincode()Lcom/tigo/mfsapp/components/CustomEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/settings/SettingsFragment;->access$002(Lcom/tigo/mfsapp/settings/SettingsFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->access$100(Lcom/tigo/mfsapp/settings/SettingsFragment;)Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/dialogs/PincodeDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 392
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/settings/SettingsFragment;->access$202(Lcom/tigo/mfsapp/settings/SettingsFragment;I)I

    .line 393
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$7;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->access$300(Lcom/tigo/mfsapp/settings/SettingsFragment;)V

    .line 394
    return-void
.end method
