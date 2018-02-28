.class Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;
.super Ljava/lang/Object;
.source "ChangeQuestionFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->hideOkDialog()V

    .line 162
    iget-object v0, p0, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment$2;->this$0:Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/settings/ChangeQuestionFragment;->closeAndGoHome()V

    .line 163
    return-void
.end method
