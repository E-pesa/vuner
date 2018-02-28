.class Lcom/tigo/mfsapp/login/LoginFragment$4;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/LoginFragment;->onReceiveInvalidCredentialsError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 279
    iput-object p1, p0, Lcom/tigo/mfsapp/login/LoginFragment$4;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tigo/mfsapp/login/LoginFragment$4;->this$0:Lcom/tigo/mfsapp/login/LoginFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/login/LoginFragment;->hideOkDialog()V

    .line 285
    return-void
.end method
