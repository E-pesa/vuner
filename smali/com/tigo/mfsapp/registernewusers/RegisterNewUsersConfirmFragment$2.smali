.class Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;
.super Ljava/lang/Object;
.source "RegisterNewUsersConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->hideOkDialog()V

    .line 204
    iget-object v0, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment$2;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersConfirmFragment;->closeAndGoHome()V

    .line 205
    return-void
.end method
