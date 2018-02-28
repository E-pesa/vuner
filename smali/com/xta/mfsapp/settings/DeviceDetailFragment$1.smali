.class Lcom/tigo/mfsapp/settings/DeviceDetailFragment$1;
.super Ljava/lang/Object;
.source "DeviceDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/DeviceDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/DeviceDetailFragment$1;->this$0:Lcom/tigo/mfsapp/settings/DeviceDetailFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/DeviceDetailFragment;->deregisterDevice()V

    .line 94
    return-void
.end method
