.class Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment$10;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$10;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment$10;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/common/BaseFormFragment$10;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPinDialog()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$10;

    iget-object v0, v0, Lcom/tigo/mfsapp/common/BaseFormFragment$10;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$400(Lcom/tigo/mfsapp/common/BaseFormFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$10$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$10;

    iget-object v0, v0, Lcom/tigo/mfsapp/common/BaseFormFragment$10;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$400(Lcom/tigo/mfsapp/common/BaseFormFragment;)Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;->changedPinDialog()V

    .line 624
    :cond_0
    return-void
.end method
