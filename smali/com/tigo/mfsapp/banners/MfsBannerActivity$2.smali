.class Lcom/tigo/mfsapp/banners/MfsBannerActivity$2;
.super Ljava/lang/Object;
.source "MfsBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/MfsBannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$2;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$2;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->finish()V

    .line 186
    return-void
.end method
