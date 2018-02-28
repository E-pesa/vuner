.class Lcom/tigo/mfsapp/maps/MapViewFragment$4;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;


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
    .line 340
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$4;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/google/android/gms/maps/model/Marker;)Z
    .locals 2
    .param p1, "arg0"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$4;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$102(Lcom/tigo/mfsapp/maps/MapViewFragment;Z)Z

    .line 345
    const/4 v0, 0x0

    return v0
.end method
