.class Lcom/tigo/mfsapp/login/MsfLoginActivity$1;
.super Ljava/lang/Object;
.source "MsfLoginActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/BaseFormFragment$OnFormFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/login/MsfLoginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/login/MsfLoginActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/login/MsfLoginActivity;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFormFinish(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outData"    # Landroid/os/Bundle;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    invoke-static {v2}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->access$000(Lcom/tigo/mfsapp/login/MsfLoginActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 45
    .local v1, "returnIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 46
    iget-object v2, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->finish()V

    .line 69
    .end local v1    # "returnIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    const-class v3, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/tigo/mfsapp/login/MsfLoginActivity$1;->this$0:Lcom/tigo/mfsapp/login/MsfLoginActivity;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/login/MsfLoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
