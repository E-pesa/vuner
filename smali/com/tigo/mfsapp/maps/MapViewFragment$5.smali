.class Lcom/tigo/mfsapp/maps/MapViewFragment$5;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment;->setupMap()V
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
    .line 348
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 4
    .param p1, "cameraPosition"    # Lcom/google/android/gms/maps/model/CameraPosition;

    .prologue
    .line 353
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$200(Lcom/tigo/mfsapp/maps/MapViewFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$100(Lcom/tigo/mfsapp/maps/MapViewFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$300(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$5;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$100(Lcom/tigo/mfsapp/maps/MapViewFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 358
    .local v0, "t":Ljava/util/Timer;
    new-instance v1, Lcom/tigo/mfsapp/maps/MapViewFragment$5$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$5$1;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment$5;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 368
    .end local v0    # "t":Ljava/util/Timer;
    :cond_1
    return-void
.end method
