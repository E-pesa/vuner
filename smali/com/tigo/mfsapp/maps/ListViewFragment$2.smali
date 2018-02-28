.class Lcom/tigo/mfsapp/maps/ListViewFragment$2;
.super Ljava/lang/Object;
.source "ListViewFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/ListViewFragment;->afterConnectLocationApi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$2;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needMoreRecords()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$2;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$008(Lcom/tigo/mfsapp/maps/ListViewFragment;)I

    .line 119
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment$2;->this$0:Lcom/tigo/mfsapp/maps/ListViewFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->access$100(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

    .line 120
    return-void
.end method
