.class Lcom/tigo/mfsapp/balance/BalanceFragment$3;
.super Ljava/lang/Object;
.source "BalanceFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/balance/BalanceFragment;->buildHeaderMenu()V
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
    .line 502
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 507
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$600(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 508
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 509
    .local v1, "item":Ljava/lang/String;
    const/4 v0, 0x0

    .line 510
    .local v0, "fragment":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    const v3, 0x7f060047

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 512
    const-class v0, Lcom/tigo/mfsapp/logs/LogsManager;

    .line 518
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 520
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    if-eqz v2, :cond_1

    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/main/MsfMainActivity;->onChange(Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_1
    :goto_1
    return-void

    .line 514
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$3;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    const v3, 0x7f06004c

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    const-class v0, Lcom/tigo/mfsapp/logs/LogsManagerMini;

    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    goto :goto_1
.end method
