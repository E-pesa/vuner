.class Lcom/tigo/mfsapp/login/LoginFragment$2$1;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/LoginFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/login/LoginFragment$2;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/login/LoginFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/login/LoginFragment$2;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$2$1;->this$1:Lcom/tigo/mfsapp/login/LoginFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    const-string v2, "tel:%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getPhoneCustomerRepresentative()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$2$1;->this$1:Lcom/tigo/mfsapp/login/LoginFragment$2;

    iget-object v2, v2, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/login/LoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 153
    iget-object v2, p0, Lcom/tigo/mfsapp/login/LoginFragment$2$1;->this$1:Lcom/tigo/mfsapp/login/LoginFragment$2;

    iget-object v2, v2, Lcom/tigo/mfsapp/login/LoginFragment$2;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/login/LoginFragment;->hideOkDialog()V

    .line 154
    return-void
.end method
