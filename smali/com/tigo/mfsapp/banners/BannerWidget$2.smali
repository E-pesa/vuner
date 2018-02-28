.class Lcom/tigo/mfsapp/banners/BannerWidget$2;
.super Ljava/lang/Object;
.source "BannerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/BannerWidget;->advancePage(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

.field final synthetic val$vp:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banners/BannerWidget;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iput-object p2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->val$vp:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->val$vp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$202(Lcom/tigo/mfsapp/banners/BannerWidget;I)I

    .line 151
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v0}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$200(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v0

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->val$vp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$208(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$202(Lcom/tigo/mfsapp/banners/BannerWidget;I)I

    .line 160
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->val$vp:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$2;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$200(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
