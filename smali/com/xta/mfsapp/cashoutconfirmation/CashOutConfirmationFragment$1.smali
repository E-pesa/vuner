.class Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;
.super Ljava/util/TimerTask;
.source "CashOutConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;->doListRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1$1;-><init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
