.class Lcom/tigo/mfsapp/banners/MfsBannerActivity$6;
.super Ljava/lang/Object;
.source "MfsBannerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/MfsBannerActivity;->activateExtraButtons()V
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
    .line 332
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$6;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/MfsBannerActivity$6;->this$0:Lcom/tigo/mfsapp/banners/MfsBannerActivity;

    invoke-static {v0}, Lcom/tigo/mfsapp/banners/MfsBannerActivity;->access$200(Lcom/tigo/mfsapp/banners/MfsBannerActivity;)V

    .line 337
    return-void
.end method
