.class Lcom/tigo/mfsapp/maps/MapViewFragment$6;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;


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
    .line 372
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$6;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInfoContents(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 7
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 382
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$6;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03008a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 384
    .local v3, "v":Landroid/view/View;
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$6;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v4}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$000(Lcom/tigo/mfsapp/maps/MapViewFragment;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 386
    .local v0, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    const v4, 0x7f0d0206

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 388
    .local v2, "tvTit":Landroid/widget/TextView;
    const v4, 0x7f0d0207

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 390
    .local v1, "tvSubTit":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/maps/Pin;->getNamePOS()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/maps/Pin;->getNeighborhood()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-object v3
.end method

.method public getInfoWindow(Lcom/google/android/gms/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 376
    const/4 v0, 0x0

    return-object v0
.end method
