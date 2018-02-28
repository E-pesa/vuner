.class Lcom/tigo/mfsapp/common/BaseFormFragment$4;
.super Ljava/lang/Object;
.source "BaseFormFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

.field final synthetic val$fconnection:Lcom/tigo/mfsapp/service/Connection;

.field final synthetic val$frequest:Lcom/tigo/mfsapp/service/Request;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/common/BaseFormFragment;Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/common/BaseFormFragment;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iput-object p2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iput-object p3, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->val$frequest:Lcom/tigo/mfsapp/service/Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideProgressDialog()V

    .line 402
    iget-object v0, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->this$0:Lcom/tigo/mfsapp/common/BaseFormFragment;

    iget-object v1, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->val$fconnection:Lcom/tigo/mfsapp/service/Connection;

    iget-object v2, p0, Lcom/tigo/mfsapp/common/BaseFormFragment$4;->val$frequest:Lcom/tigo/mfsapp/service/Request;

    invoke-virtual {v0, v1, v2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 403
    return-void
.end method
