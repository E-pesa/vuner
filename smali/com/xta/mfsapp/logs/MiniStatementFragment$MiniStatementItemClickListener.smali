.class Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;
.super Ljava/lang/Object;
.source "MiniStatementFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/logs/MiniStatementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiniStatementItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;->this$0:Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/logs/MiniStatementFragment$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/logs/MiniStatementFragment$MiniStatementItemClickListener;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 159
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/tigo/mfsapp/components/MiniStatementItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/MiniStatementItem;->openClose()V

    .line 160
    return-void
.end method
