.class Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;
.super Ljava/lang/Object;
.source "MiniStatementFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/logs/MiniStatementFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 81
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Wallet;

    .line 82
    .local v0, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->access$002(Lcom/tigo/mfsapp/logs/MiniStatementFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->access$100(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V

    .line 84
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
