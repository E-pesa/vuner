.class Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;
.super Ljava/lang/Object;
.source "ActivityLogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/logs/ActivityLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityLogItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;->this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/logs/ActivityLogFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/logs/ActivityLogFragment$ActivityLogItemClickListener;-><init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V

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
    .line 82
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p2, Lcom/tigo/mfsapp/components/ActivityLogItem;

    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/components/ActivityLogItem;->openClose()V

    .line 83
    return-void
.end method
