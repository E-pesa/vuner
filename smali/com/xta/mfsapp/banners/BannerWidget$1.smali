.class Lcom/tigo/mfsapp/banners/BannerWidget$1;
.super Ljava/lang/Object;
.source "BannerWidget.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/BannerWidget;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

.field final synthetic val$dots:[Landroid/widget/ImageView;

.field final synthetic val$vp:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banners/BannerWidget;[Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iput-object p2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->val$dots:[Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->val$vp:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onPageSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->val$dots:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020096

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$100(Lcom/tigo/mfsapp/banners/BannerWidget;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->val$dots:[Landroid/widget/ImageView;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$100(Lcom/tigo/mfsapp/banners/BannerWidget;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->getPageSelectedListener()Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banners/BannerWidget;->getPageSelectedListener()Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;->onPageSelectedListener(II)V

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$1;->val$vp:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->advancePage(Landroid/support/v4/view/ViewPager;)V

    .line 112
    return-void
.end method
