.class Lcom/tigo/mfsapp/main/MsfMainActivity$2;
.super Ljava/lang/Object;
.source "MsfMainActivity.java"

# interfaces
.implements Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

.field final synthetic val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/main/MainFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    iput-object p2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MainFragment;->updateTitle()V

    .line 190
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MainFragment;->refreshTransactionsNotification()V

    .line 191
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MainFragment;->refreshMerchantNotification()V

    .line 192
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MainFragment;->refreshPendingVouchersNotification()V

    .line 193
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->val$mainFragment:Lcom/tigo/mfsapp/main/MainFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/main/MainFragment;->refreshPendingTransactionNotification()V

    .line 195
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$2;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-static {v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->access$000(Lcom/tigo/mfsapp/main/MsfMainActivity;)Lcom/tigo/mfsapp/balance/BalanceFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/balance/BalanceFragment;->hideTop()V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_FRAGMENT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "visible"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
