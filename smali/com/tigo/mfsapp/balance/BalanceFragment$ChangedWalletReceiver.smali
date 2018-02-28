.class Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BalanceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/balance/BalanceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangedWalletReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/balance/BalanceFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/balance/BalanceFragment$1;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;-><init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "walletId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "walletId":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 92
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Wallet;

    .line 94
    .local v0, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$ChangedWalletReceiver;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$000(Lcom/tigo/mfsapp/balance/BalanceFragment;Lcom/tigo/mfsapp/model/Wallet;)V

    .line 101
    .end local v0    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_1
    return-void
.end method
