.class Lcom/tigo/mfsapp/settings/SettingsFragment$4;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 173
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$4;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/SettingsFragment$4;->this$0:Lcom/tigo/mfsapp/settings/SettingsFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/SettingsFragment;->deregisterAllDevices()V

    .line 179
    return-void
.end method
