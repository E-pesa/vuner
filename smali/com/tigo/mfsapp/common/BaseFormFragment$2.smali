.class Lcom/tigo/mfsapp/common/BaseFormFragment$2;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveCustomError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
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
    .line 333
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$2;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$2;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 339
    return-void
.end method
