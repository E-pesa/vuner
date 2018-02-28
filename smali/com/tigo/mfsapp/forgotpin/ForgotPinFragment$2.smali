.class Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$2;
.super Ljava/lang/Object;
.source "ForgotPinFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$2;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 104
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$2;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 108
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 111
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
