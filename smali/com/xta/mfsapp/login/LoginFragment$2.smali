.class Lcom/tigo/mfsapp/login/LoginFragment$2;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/LoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/login/LoginFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/login/LoginFragment;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 145
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    const v3, 0x7f06003e

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/login/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    const v4, 0x7f060037

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/tigo/mfsapp/login/LoginFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/tigo/mfsapp/login/LoginFragment$2$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/login/LoginFragment$2$1;-><init>(Lcom/tigo/mfsapp/login/LoginFragment$2;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/tigo/mfsapp/login/LoginFragment;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    move-result-object v0

    .line 157
    .local v0, "dialog":Landroid/support/v4/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 159
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 160
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 162
    :cond_0
    return-void
.end method
