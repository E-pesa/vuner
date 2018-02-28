.class Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$4;
.super Ljava/lang/Object;
.source "MiniStatementFilterFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$4;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

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
    .line 128
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/TransactionType;

    .line 129
    .local v0, "transactionType":Lcom/tigo/mfsapp/model/TransactionType;
    iget-object v1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$4;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/TransactionType;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->access$502(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 130
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
    .line 135
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
