.class Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;
.super Ljava/lang/Object;
.source "BankToWalletFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 68
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bank;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->access$002(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;Lcom/tigo/mfsapp/model/Bank;)Lcom/tigo/mfsapp/model/Bank;

    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;

    iget-object v5, p0, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$1;->this$0:Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;

    invoke-direct {v4, v5}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment$BankToWalletOnYesNoListener;-><init>(Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/banktowallet/BankToWalletFragment;->showYesNoDialog(Ljava/lang/String;Ljava/lang/String;ZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 70
    return-void
.end method
