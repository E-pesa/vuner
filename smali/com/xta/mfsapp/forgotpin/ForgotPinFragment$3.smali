.class Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;
.super Ljava/lang/Object;
.source "ForgotPinFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 200
    iput-object p1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideOkDialog()V

    .line 207
    iget-object v1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$3;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 208
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 209
    return-void
.end method
