.class Lcom/tigo/mfsapp/settings/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/settings/DeviceDetailFragment$OnDeviceDetailListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsFragment;->ShowDeviceDetails(Lcom/tigo/mfsapp/model/Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/SettingsFragment;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$6;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceDeleted(Lcom/tigo/mfsapp/model/Device;)V
    .locals 1
    .param p1, "device"    # Lcom/tigo/mfsapp/model/Device;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$6;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->refreshList()V

    .line 332
    return-void
.end method
