.class Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;
.super Ljava/lang/Object;
.source "InternationalRemittancePickUpByCustomerTransactionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->onTransactionError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->hideOkDialog()V

    .line 147
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment$1;->this$0:Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->closeAndGoHome()V

    .line 148
    return-void
.end method
