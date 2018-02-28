.class public Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BannerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/banners/BannerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageAdapter"
.end annotation


# instance fields
.field dpHeight:I

.field dpWidth:I

.field links:[Ljava/lang/String;

.field text:[Ljava/lang/String;

.field final synthetic this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

.field title:[Ljava/lang/String;

.field urls:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/banners/BannerWidget;)V
    .locals 7
    .param p1, "this$0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 180
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 173
    iget-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->urls:[Ljava/lang/String;

    .line 174
    iget-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->title:[Ljava/lang/String;

    .line 175
    iget-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->links:[Ljava/lang/String;

    .line 176
    iget-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->text:[Ljava/lang/String;

    .line 181
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 182
    .local v2, "screenHeight":I
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v3, v4, Landroid/graphics/Point;->x:I

    .line 184
    .local v3, "screenWidth":I
    invoke-virtual {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 186
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    int-to-float v4, v2

    mul-float/2addr v4, v6

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->dpHeight:I

    .line 187
    int-to-float v4, v3

    mul-float/2addr v4, v6

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->dpWidth:I

    .line 189
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 191
    iget-object v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->urls:[Ljava/lang/String;

    invoke-static {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$300(Lcom/tigo/mfsapp/banners/BannerWidget;)Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Banner;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Banner;->getImageURL()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 192
    iget-object v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->title:[Ljava/lang/String;

    invoke-static {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$300(Lcom/tigo/mfsapp/banners/BannerWidget;)Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Banner;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Banner;->getTexts()Lcom/tigo/mfsapp/model/Texts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Texts;->getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 193
    iget-object v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->links:[Ljava/lang/String;

    invoke-static {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$300(Lcom/tigo/mfsapp/banners/BannerWidget;)Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Banner;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Banner;->getLinkURL()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 194
    iget-object v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->text:[Ljava/lang/String;

    invoke-static {p1}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$300(Lcom/tigo/mfsapp/banners/BannerWidget;)Lcom/tigo/mfsapp/model/Carrusel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Banner;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Banner;->getTexts()Lcom/tigo/mfsapp/model/Texts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Texts;->getDescription()Lcom/tigo/mfsapp/model/LanguageDescriptions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 271
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    check-cast p3, Landroid/widget/FrameLayout;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 272
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-static {v0}, Lcom/tigo/mfsapp/banners/BannerWidget;->access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    .line 216
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 218
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;

    invoke-direct {v1}, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;-><init>()V

    .line 219
    .local v1, "viewHolder":Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;
    const v2, 0x7f0d0033

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->image:Landroid/widget/ImageView;

    .line 220
    const v2, 0x7f0d00ac

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->title:Landroid/widget/TextView;

    .line 221
    const v2, 0x7f0d00ad

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->description:Landroid/widget/TextView;

    .line 225
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/squareup/picasso/Picasso;->setLoggingEnabled(Z)V

    .line 226
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    iget-object v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->urls:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->getImageURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->dpWidth:I

    iget v4, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->dpHeight:I

    invoke-virtual {v2, v3, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v2

    iget-object v3, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 231
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->links:[Ljava/lang/String;

    aget-object v2, v2, p2

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->title:Landroid/widget/TextView;

    new-instance v3, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;

    invoke-direct {v3, p0, p2}, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;-><init>(Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->title:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->description:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->text:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :goto_0
    const-string v3, "Views %d"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->error(Ljava/lang/String;)V

    .line 263
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "container":Landroid/view/ViewGroup;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 265
    return-object v0

    .line 253
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->title:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v2, v1, Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;->description:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 208
    check-cast p2, Landroid/widget/FrameLayout;

    .end local p2    # "object":Ljava/lang/Object;
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
