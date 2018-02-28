.class Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;
.super Ljava/lang/Object;
.source "TopupStep1Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->setAutoShowProgressDialog(Z)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const-string v1, ""

    invoke-static {v1}, Lcom/tigo/mfsapp/common/AppPreferences;->getMSISDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->MSISDN:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->access$000(Lcom/tigo/mfsapp/topup/TopupStep1Fragment;)V

    .line 62
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/topup/TopupStep1Fragment$1;->this$0:Lcom/tigo/mfsapp/topup/TopupStep1Fragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/topup/TopupStep1Fragment;->setAutoShowProgressDialog(Z)V

    goto :goto_0
.end method
