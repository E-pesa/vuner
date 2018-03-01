.class Lcom/tigo/mfsapp/balance/BalanceFragment$4;
.super Ljava/lang/Object;
.source "BalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 538
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$4;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$4;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 545
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 546
    .local v1, "width":I
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$4;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$600(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ListPopupWindow;->setContentWidth(I)V

    .line 547
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$4;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$700(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 549
    iget-object v2, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$4;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/balance/BalanceFragment;->access$600(Lcom/tigo/mfsapp/balance/BalanceFragment;)Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 551
    return-void
.end method
