.class Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;
.super Ljava/lang/Object;
.source "CashOutConfirmationTransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->onTransactionDeny()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->hideOkDialog()V

    .line 174
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationTransactionFragment;->closeAndGoHome()V

    .line 175
    return-void
.end method
