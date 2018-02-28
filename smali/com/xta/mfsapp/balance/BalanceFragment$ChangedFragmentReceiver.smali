.class Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/balance/BalanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangedFragmentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/balance/BalanceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/balance/BalanceFragment$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "visible"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 118
    .local v0, "visible":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$100(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$200(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->refreshDrawableState()V

    .line 123
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedFragmentReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$100(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
