.class Lcom/tigo/mfsapp/common/BaseFormFragment$8;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveMaintenanceError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$8;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 563
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$8;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 564
    return-void
.end method
