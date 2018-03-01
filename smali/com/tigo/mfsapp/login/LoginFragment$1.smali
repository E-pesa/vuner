.class Lcom/tigo/mfsapp/login/LoginFragment$1;
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
    .line 121
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$1;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 125
    iget-object v3, p0, Lcom/tigo/mfsapp/login/LoginFragment$1;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/login/LoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 127
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;-><init>()V

    .line 129
    .local v0, "fragment":Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 130
    .local v2, "transaction":Landroid/support/v4/app/FragmentTransaction;
    const v3, 0x7f0d0222

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 131
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 132
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 134
    return-void
.end method
