.class Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;
.super Ljava/lang/Object;
.source "ActivityLogFragment.java"

# interfaces
.implements Lcom/tigo/mfsapp/logs/ActivityLogAdapter$OnGetViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/logs/ActivityLogFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;->this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needMoreRecords()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;->this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->access$008(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)I

    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/ActivityLogFragment$1;->this$0:Lcom/tigo/mfsapp/logs/ActivityLogFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/logs/ActivityLogFragment;->access$100(Lcom/tigo/mfsapp/logs/ActivityLogFragment;)V

    .line 70
    return-void
.end method
