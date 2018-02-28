.class Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;
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
    .line 247
    iput-object p1, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 252
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 253
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 255
    const-string v3, "tel:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 257
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v3, v1}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->startActivity(Landroid/content/Intent;)V

    .line 258
    iget-object v3, p0, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment$4;->this$0:Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/forgotpin/ForgotPinFragment;->hideOkDialog()V

    .line 259
    return-void
.end method
