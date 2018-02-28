.class Lcom/tigo/mfsapp/components/SelectWalletEdit$1;
.super Ljava/lang/Object;
.source "SelectWalletEdit.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/components/SelectWalletEdit;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/components/SelectWalletEdit;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/components/SelectWalletEdit;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/components/SelectWalletEdit;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit$1;->this$0:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/tigo/mfsapp/model/Wallet;

    .line 72
    .local v7, "selectedWallet":Lcom/tigo/mfsapp/model/Wallet;
    new-instance v6, Landroid/content/Intent;

    const-string v0, "ACTION_WALLET_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v6, "intent":Landroid/content/Intent;
    const-string v0, "walletId"

    invoke-virtual {v7}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {v7}, Lcom/tigo/mfsapp/common/AppPreferences;->setSelectedWallet(Lcom/tigo/mfsapp/model/Wallet;)V

    .line 78
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit$1;->this$0:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    invoke-static {v0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->access$000(Lcom/tigo/mfsapp/components/SelectWalletEdit;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit$1;->this$0:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    invoke-static {v0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->access$000(Lcom/tigo/mfsapp/components/SelectWalletEdit;)Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 82
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
