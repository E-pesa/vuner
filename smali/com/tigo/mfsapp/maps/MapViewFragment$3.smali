.class Lcom/tigo/mfsapp/maps/MapViewFragment$3;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


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
    .line 240
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 9
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v6, 0x1

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v7}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$000(Lcom/tigo/mfsapp/maps/MapViewFragment;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 247
    .local v4, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-static {v7, v6}, Lcom/tigo/mfsapp/maps/MapViewFragment;->access$102(Lcom/tigo/mfsapp/maps/MapViewFragment;Z)Z

    .line 248
    if-eqz v4, :cond_0

    .line 249
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getIdPDV()Ljava/lang/String;

    move-result-object v2

    .line 250
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 251
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v7, Lcom/google/gson/Gson;

    invoke-direct {v7}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v7, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "jsonPin":Ljava/lang/String;
    const-string v7, "DETAIL_OBJECT_KEY"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getTypePOS()Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "type":Ljava/lang/String;
    if-eqz v5, :cond_1

    :goto_0
    const-string v7, "AGENT_KEY"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    .line 257
    const-string v5, "AGENT_KEY"

    .line 259
    :goto_1
    const-string v6, "TYPE_KEY"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v1, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;-><init>()V

    .line 262
    .local v1, "fragment":Lcom/tigo/mfsapp/maps/MapPinDetailFragment;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 263
    iget-object v6, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$3;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {v6, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 266
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/maps/MapPinDetailFragment;
    .end local v3    # "jsonPin":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :cond_0
    return-void

    .line 256
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "jsonPin":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 258
    :cond_2
    const-string v5, "MERCHANT_KEY"

    goto :goto_1
.end method
