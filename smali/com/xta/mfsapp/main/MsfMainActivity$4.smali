.class Lcom/tigo/mfsapp/main/MsfMainActivity$4;
.super Ljava/lang/Object;
.source "MsfMainActivity.java"

# interfaces
.implements Lcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity;->dialogBackConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$4;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public confirm(Z)V
    .locals 2
    .param p1, "yes"    # Z

    .prologue
    .line 622
    if-eqz p1, :cond_0

    .line 624
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$4;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    new-instance v1, Lcom/tigo/mfsapp/main/MsfMainActivity$4$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/main/MsfMainActivity$4$1;-><init>(Lcom/tigo/mfsapp/main/MsfMainActivity$4;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 632
    :cond_0
    return-void
.end method
