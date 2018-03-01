.class Lcom/tigo/mfsapp/maps/MapViewFragment$2;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 177
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$2;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$2;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->updatePins()V

    .line 183
    return-void
.end method
