.class Lcom/tigo/mfsapp/common/BaseFormFragment$9$1;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$9;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment$9;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/common/BaseFormFragment$9;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$9$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$9$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$9;

    iget-object v0, v0, Lcom/tigo/mfsapp/common/BaseFormFragment$9;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 597
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$9$1;->this$1:Lcom/tigo/mfsapp/common/BaseFormFragment$9;

    iget-object v0, v0, Lcom/tigo/mfsapp/common/BaseFormFragment$9;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 598
    return-void
.end method
