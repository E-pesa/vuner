.class Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog$1;
.super Landroid/webkit/WebViewClient;
.source "MfsBannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog$1;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog$1;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity$SelfRegistrationDialog;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void
.end method
