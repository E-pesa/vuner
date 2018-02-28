.class Lcom/tigo/mfsapp/login/LoginFragment$3;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/settings/ChangePinCodeFragment$OnChangePinDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/LoginFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 186
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$3;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedPinDialog()V
    .locals 3

    .prologue
    .line 191
    new-instance v0, Lcom/tigo/mfsapp/login/LoginManager;

    invoke-direct {v0}, Lcom/tigo/mfsapp/login/LoginManager;-><init>()V

    .line 192
    .local v0, "loginManager":Lcom/tigo/mfsapp/login/LoginManager;
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment$3;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 193
    iget-object v1, p0, Lcom/tigo/mfsapp/login/LoginFragment$3;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    .line 194
    return-void
.end method
