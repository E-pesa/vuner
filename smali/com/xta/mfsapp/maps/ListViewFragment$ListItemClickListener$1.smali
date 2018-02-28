.class Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->this$1:Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    iput p2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->this$1:Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    iget-object v1, v0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->this$1:Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$500(Lcom/tigo/mfsapp/maps/ListViewFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$402(Lcom/tigo/mfsapp/maps/ListViewFragment;Lcom/tigo/mfsapp/model/maps/Pin;)Lcom/tigo/mfsapp/model/maps/Pin;

    .line 177
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener$1;->this$1:Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$600(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

    .line 179
    return-void
.end method
