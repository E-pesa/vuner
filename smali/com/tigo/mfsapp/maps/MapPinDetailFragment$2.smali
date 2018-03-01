.class Lcom/tigo/mfsapp/maps/MapPinDetailFragment$2;
.super Ljava/lang/Object;
.source "MapPinDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->buildUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/MapPinDetailFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/MapPinDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$2;->this$0:Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$2;->this$0:Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->access$000(Lcom/tigo/mfsapp/maps/MapPinDetailFragment;)V

    .line 280
    return-void
.end method
