.class Lcom/tigo/mfsapp/settings/SettingsFragment$5;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 272
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$5;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/tigo/mfsapp/model/Device;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Device;

    .line 280
    .local v0, "device":Lcom/tigo/mfsapp/model/Device;
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$5;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->ShowDeviceDetails(Lcom/tigo/mfsapp/model/Device;)V

    .line 283
    .end local v0    # "device":Lcom/tigo/mfsapp/model/Device;
    :cond_0
    return-void
.end method
