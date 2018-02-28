.class public Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "MfsBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/banners/MfsBannerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelfRegistrationDialog"
.end annotation


# static fields
.field private static final ARG_URL:Ljava/lang/String; = "URL"


# instance fields
.field private url:Ljava/lang/String;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v1, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;

    invoke-direct {v1}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;-><init>()V

    .line 51
    .local v1, "dialog":Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "URL"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->setArguments(Landroid/os/Bundle;)V

    .line 54
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->webView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->setCancelable(Z)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "URL"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->url:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->webView:Landroid/webkit/WebView;

    .line 70
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->webView:Landroid/webkit/WebView;

    new-instance v2, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog$1;-><init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 79
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    const v2, 0x7f0600f8

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(I)V

    .line 80
    return-object v0
.end method
