.class Lcom/tigo/mfsapp/main/MsfMainActivity$3;
.super Ljava/lang/Object;
.source "MsfMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/main/MsfMainActivity;->selectItem(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

.field final synthetic val$buttonInfo:Lcom/tigo/mfsapp/adapters/MainButtonInfo;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/main/MsfMainActivity;Lcom/tigo/mfsapp/adapters/MainButtonInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/main/MsfMainActivity;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$3;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    iput-object p2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$3;->val$buttonInfo:Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 309
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$3;->val$buttonInfo:Lcom/tigo/mfsapp/adapters/MainButtonInfo;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 310
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$3;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->onChange(Landroid/support/v4/app/Fragment;)V

    .line 311
    iget-object v2, p0, Lcom/tigo/mfsapp/main/MsfMainActivity$3;->this$0:Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-static {v2, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->access$300(Lcom/tigo/mfsapp/main/MsfMainActivity;Landroid/support/v4/app/Fragment;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 321
    .end local v1    # "fragment":Landroid/support/v4/app/Fragment;
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 316
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
