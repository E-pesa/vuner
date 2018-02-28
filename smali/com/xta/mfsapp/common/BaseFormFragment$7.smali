.class Lcom/tigo/mfsapp/common/BaseFormFragment$7;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/login/LoginManager$OnLoginManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->doRelogin()V
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
    .line 506
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishProcess()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$202(Lcom/tigo/mfsapp/common/BaseFormFragment;Z)Z

    .line 512
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$300(Lcom/tigo/mfsapp/common/BaseFormFragment;)Lcom/tigo/mfsapp/service/Connection;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/service/Connection;->setCanceled(Z)V

    .line 514
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 517
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/common/BaseFormFragment;->retrySubmit:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->setAutoShowProgressDialog(Z)V

    .line 521
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$7;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->submit()V

    .line 524
    :cond_0
    return-void
.end method
