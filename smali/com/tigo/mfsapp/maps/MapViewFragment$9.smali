.class Lcom/tigo/mfsapp/maps/MapViewFragment$9;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/SelectionListener;


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
    .line 662
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$9;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelection(Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;)V
    .locals 0
    .param p1, "selectedItem"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;

    .prologue
    .line 675
    return-void
.end method

.method public onReceiveLocationInformation(DD)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 666
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$9;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v2}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$500(Lcom/tigo/mfsapp/maps/MapViewFragment;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 667
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$9;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$600(Lcom/tigo/mfsapp/maps/MapViewFragment;)Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 668
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$9;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$400(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    .line 669
    return-void
.end method
