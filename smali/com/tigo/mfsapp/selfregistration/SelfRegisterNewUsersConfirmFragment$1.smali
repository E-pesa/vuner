.class Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;
.super Ljava/lang/Object;
.source "SelfRegisterNewUsersConfirmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->hideOkDialog()V

    .line 215
    iget-object v0, p0, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment$1;->this$0:Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;->access$000(Lcom/tigo/mfsapp/selfregistration/SelfRegisterNewUsersConfirmFragment;)V

    .line 216
    return-void
.end method
