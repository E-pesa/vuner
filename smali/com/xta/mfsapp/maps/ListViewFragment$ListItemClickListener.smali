.class Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/maps/ListViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment;Lcom/tigo/mfsapp/maps/ListViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/maps/ListViewFragment$1;

    .prologue
    .line 169
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

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
    .line 172
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;

    invoke-direct {v1, p0, p3}, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method
