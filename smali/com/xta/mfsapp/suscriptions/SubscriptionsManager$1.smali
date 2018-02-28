.class Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;
.super Ljava/lang/Object;
.source "SubscriptionsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 95
    new-instance v0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;-><init>()V

    .line 106
    .local v0, "list":Lcom/tigo/mfsapp/suscriptions/SubscriptionsListFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->closeAndGoHome()V

    .line 107
    iget-object v1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager$1;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/suscriptions/SubscriptionsManager;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 108
    return-void
.end method
