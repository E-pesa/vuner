.class Lcom/tigo/mfsapp/common/BaseFormFragment$6;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveInvalidSessionTokenError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 486
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$6;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$6;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 492
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$6;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->access$100(Lcom/tigo/mfsapp/common/BaseFormFragment;)V

    .line 493
    return-void
.end method
