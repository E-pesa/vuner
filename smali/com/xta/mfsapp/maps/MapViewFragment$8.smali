.class Lcom/tigo/mfsapp/maps/MapViewFragment$8;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment;->showSearchInActionBar(Landroid/view/MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 651
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$8;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 655
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$8;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$400(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    .line 657
    const/4 v0, 0x1

    .line 659
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
