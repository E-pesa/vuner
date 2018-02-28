.class Lcom/tigo/mfsapp/maps/MapViewFragment$7;
.super Ljava/lang/Object;
.source "MapViewFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapViewFragment;->checkLocationServices()V
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
    .line 427
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$7;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 430
    packed-switch p2, :pswitch_data_0

    .line 440
    :goto_0
    return-void

    .line 432
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v0, "myIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment$7;->this$0:Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
