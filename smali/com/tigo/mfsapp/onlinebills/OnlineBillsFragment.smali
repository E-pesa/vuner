.class public Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "OnlineBillsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;
    }
.end annotation


# static fields
.field public static final PARAM_URL:Ljava/lang/String; = "param_url"


# instance fields
.field private progressBar:Landroid/widget/ProgressBar;

.field private textPercentage:Landroid/widget/TextView;

.field private url:Ljava/lang/String;

.field private viewOnlineBills:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 65
    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->textPercentage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method


# virtual methods
.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 45
    const-string v0, "param_url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->url:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const v1, 0x7f030073

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 33
    const v1, 0x7f0d01b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->textPercentage:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0d01b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->viewOnlineBills:Landroid/webkit/WebView;

    .line 36
    iget-object v1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->viewOnlineBills:Landroid/webkit/WebView;

    new-instance v2, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$OnlineBillWebClient;-><init>(Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 37
    iget-object v1, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->viewOnlineBills:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/tigo/mfsapp/onlinebills/OnlineBillsFragment;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 39
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 56
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 51
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method
