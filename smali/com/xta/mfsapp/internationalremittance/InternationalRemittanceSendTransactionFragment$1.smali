.class Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;
.super Ljava/lang/Object;
.source "InternationalRemittanceSendTransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->onTransactionError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->hideOkDialog()V

    .line 152
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittanceSendTransactionFragment;->closeAndGoHome()V

    .line 153
    return-void
.end method
