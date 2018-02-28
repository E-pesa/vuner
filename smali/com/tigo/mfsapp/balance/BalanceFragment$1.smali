.class Lcom/tigo/mfsapp/balance/BalanceFragment$1;
.super Ljava/lang/Object;
.source "BalanceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/balance/BalanceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 151
    iput-object p1, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$1;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tigo/mfsapp/balance/BalanceFragment$1;->this$0:Lcom/tigo/mfsapp/balance/BalanceFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/balance/BalanceFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    .line 157
    return-void
.end method
