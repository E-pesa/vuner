.class Lcom/tigo/mfsapp/balance/BalanceFragment$2;
.super Ljava/lang/Object;
.source "BalanceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/balance/BalanceFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/balance/BalanceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/balance/BalanceFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$2;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 279
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Wallet;

    .line 280
    .local v1, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->setSelectedWallet(Lcom/tigo/mfsapp/model/Wallet;)V

    .line 281
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$2;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2, p3}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$502(Lcom/tigo/mfsapp/balance/BalanceFragment;I)I

    .line 282
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 283
    .local v0, "count":I
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$2;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v2, v1, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateHeader(Lcom/tigo/mfsapp/model/Wallet;I)V

    .line 284
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$2;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v2, v1, v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->updateTop(Lcom/tigo/mfsapp/model/Wallet;I)V

    .line 285
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
    .line 291
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
