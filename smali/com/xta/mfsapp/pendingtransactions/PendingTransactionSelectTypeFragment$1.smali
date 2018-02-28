.class Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;
.super Ljava/lang/Object;
.source "PendingTransactionSelectTypeFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;->this$0:Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f0d01b8

    .line 35
    packed-switch p3, :pswitch_data_0

    .line 50
    :goto_0
    return-void

    .line 38
    :pswitch_0
    new-instance v0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;-><init>()V

    .line 39
    .local v0, "cashInConfirmationFragment":Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
    iget-object v3, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;->this$0:Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 42
    .end local v0    # "cashInConfirmationFragment":Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
    :pswitch_1
    new-instance v1, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;-><init>()V

    .line 43
    .local v1, "cashOutConfirmationFragment":Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;
    iget-object v3, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;->this$0:Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 46
    .end local v1    # "cashOutConfirmationFragment":Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;
    :pswitch_2
    new-instance v2, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;-><init>()V

    .line 47
    .local v2, "merchantPaymentListFragment":Lcom/tigo/mfsapp/merchantpayment/MerchantPaymentListFragment;
    iget-object v3, p0, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment$1;->this$0:Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/pendingtransactions/PendingTransactionSelectTypeFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
