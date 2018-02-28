.class Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;
.super Ljava/util/TimerTask;
.source "CashInConfirmationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->doListRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    iget-object v0, v0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1$1;-><init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method
