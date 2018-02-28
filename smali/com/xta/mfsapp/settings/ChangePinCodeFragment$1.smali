.class Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;
.super Ljava/lang/Object;
.source "ChangePinCodeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;->this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;->this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->hideOkDialog()V

    .line 91
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;->this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->closeAndGoHome()V

    .line 92
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;->this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->access$000(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$1;->this$0:Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;->access$000(Lcom/tigo/mfsapp/settings/ChangePinCodeFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;->changedPinDialog()V

    .line 96
    :cond_0
    return-void
.end method
