.class Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;
.super Ljava/lang/Object;
.source "CashOutConfirmationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CashOutConfirmationItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$1;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;-><init>(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 79
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;->access$200(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;)Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationAdapter;->getItem(I)Lcom/tigo/mfsapp/model/Transaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;->access$102(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;Lcom/tigo/mfsapp/model/Transaction;)Lcom/tigo/mfsapp/model/Transaction;

    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;->access$300(Lcom/tigo/mfsapp/cashoutconfirmation/CashOutConfirmationFragment;)V

    .line 82
    return-void
.end method
