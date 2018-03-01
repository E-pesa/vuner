.class Lcom/tigo/mfsapp/main/MsfMainActivity$4$1;
.super Ljava/lang/Object;
.source "MsfMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity$4;->confirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/main/MsfMainActivity$4;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/main/MsfMainActivity$4;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$4$1;->this$1:Lcom/tigo/mfsapp/main/MsfMainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$4$1;->this$1:Lcom/tigo/mfsapp/main/MsfMainActivity$4;

    iget-object v0, v0, Lcom/tigo/mfsapp/main/MsfMainActivity$4;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-static {v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->access$400(Lcom/tigo/mfsapp/main/MsfMainActivity;)V

    .line 629
    return-void
.end method
