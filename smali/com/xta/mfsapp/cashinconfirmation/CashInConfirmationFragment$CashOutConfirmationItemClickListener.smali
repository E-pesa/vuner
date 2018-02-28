.class Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;
.super Ljava/lang/Object;
.source "CashInConfirmationFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CashOutConfirmationItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;-><init>(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V

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
    .line 78
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->access$200(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationAdapter;->getItem(I)Lcom/tigo/mfsapp/model/Transaction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->access$102(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;Lcom/tigo/mfsapp/model/Transaction;)Lcom/tigo/mfsapp/model/Transaction;

    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment$CashOutConfirmationItemClickListener;->this$0:Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;->access$300(Lcom/tigo/mfsapp/cashinconfirmation/CashInConfirmationFragment;)V

    .line 81
    return-void
.end method
