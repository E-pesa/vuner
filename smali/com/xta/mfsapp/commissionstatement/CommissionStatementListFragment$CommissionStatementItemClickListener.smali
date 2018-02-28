.class Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;
.super Ljava/lang/Object;
.source "CommissionStatementListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommissionStatementItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;->this$0:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$1;

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;-><init>(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 142
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/tigo/mfsapp/components/CommissionStatementItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/CommissionStatementItem;->openClose()V

    .line 143
    iget-object v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;->this$0:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->access$300(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V

    .line 144
    return-void
.end method
