.class Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;
.super Landroid/webkit/WebChromeClient;
.source "OnlineBillsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineBillWebClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;->this$0:Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;-><init>(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "progress"    # I

    .prologue
    const/16 v1, 0x8

    .line 70
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;->this$0:Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->access$100(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;->this$0:Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->access$200(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;->this$0:Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    invoke-static {v0}, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->access$100(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
