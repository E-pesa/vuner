.class Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment$1;
.super Ljava/lang/Object;
.source "CashInConfirmationTransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->onTransactionDeny()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->hideOkDialog()V

    .line 182
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationTransactionFragment;->closeAndGoHome()V

    .line 183
    return-void
.end method
