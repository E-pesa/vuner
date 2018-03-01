.class Lcom/tigo/mfsapp/startup/SplashFragment$1;
.super Ljava/lang/Object;
.source "SplashFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/startup/SplashFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/startup/SplashFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/startup/SplashFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/startup/SplashFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tigo/mfsapp/startup/SplashFragment$1;->this$0:Lcom/tigo/mfsapp/startup/SplashFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/tigo/mfsapp/startup/SplashFragment$1;->this$0:Lcom/tigo/mfsapp/startup/SplashFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/startup/SplashFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 90
    return-void
.end method
