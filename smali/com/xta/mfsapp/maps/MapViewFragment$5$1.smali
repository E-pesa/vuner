.class Lcom/tigo/mfsapp/maps/MapViewFragment$5$1;
.super Ljava/util/TimerTask;
.source "MapViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment$5;->onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/maps/MapViewFragment$5;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/MapViewFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/maps/MapViewFragment$5;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5$1;->this$1:Lcom/tigo/mfsapp/maps/MapViewFragment$5;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5$1;->this$1:Lcom/tigo/mfsapp/maps/MapViewFragment$5;

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$102(Lcom/tigo/mfsapp/maps/MapViewFragment;Z)Z

    .line 364
    return-void
.end method
