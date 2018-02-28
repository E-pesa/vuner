.class public Lcom/tigo/mfsapp/banners/BannerWidget;
.super Landroid/widget/FrameLayout;
.source "BannerWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/banners/BannerWidget$ViewHolder;,
        Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;,
        Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;
    }
.end annotation


# instance fields
.field private actualPage:I

.field private carrusel:Lcom/tigo/mfsapp/model/Carrusel;

.field private count:I

.field private handler:Landroid/os/Handler;

.field private pageSelectedListener:Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/banners/BannerWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 29
    iget v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->count:I

    return v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/banners/BannerWidget;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/tigo/mfsapp/banners/BannerWidget;->setBkg(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/banners/BannerWidget;)I
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 29
    iget v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->actualPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/banners/BannerWidget;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->actualPage:I

    return p1
.end method

.method static synthetic access$208(Lcom/tigo/mfsapp/banners/BannerWidget;)I
    .locals 2
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 29
    iget v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->actualPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->actualPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/banners/BannerWidget;)Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/banners/BannerWidget;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method private setBkg(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 280
    .local v0, "currentapiVersion":I
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 282
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public advancePage(Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .param p1, "vp"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Carrusel;->getTimeToAdvance()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "C"

    iget-object v1, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Carrusel;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tigo/mfsapp/banners/BannerWidget$2;

    invoke-direct {v1, p0, p1}, Lcom/tigo/mfsapp/banners/BannerWidget$2;-><init>(Lcom/tigo/mfsapp/banners/BannerWidget;Landroid/support/v4/view/ViewPager;)V

    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    .line 164
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Carrusel;->getTimeToAdvance()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_0
    return-void

    .line 141
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->handler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public getCarrusel()Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method public getImageURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlImage"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/BannerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 312
    .local v0, "density":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 315
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "filenameArray":[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v3, v5

    .line 317
    .local v2, "extension":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 319
    const-string v4, "android_"

    .line 320
    .local v4, "startUrl":Ljava/lang/String;
    const-string v1, ""

    .line 322
    .local v1, "endUrl":Ljava/lang/String;
    sparse-switch v0, :sswitch_data_0

    .line 337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xhdpi."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 347
    .end local v1    # "endUrl":Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "filenameArray":[Ljava/lang/String;
    .end local v4    # "startUrl":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 325
    .restart local v1    # "endUrl":Ljava/lang/String;
    .restart local v2    # "extension":Ljava/lang/String;
    .restart local v3    # "filenameArray":[Ljava/lang/String;
    .restart local v4    # "startUrl":Ljava/lang/String;
    :sswitch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mdpi."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    goto :goto_0

    .line 328
    :sswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hdpi."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 329
    goto :goto_0

    .line 331
    :sswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xhdpi."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 332
    goto :goto_0

    .line 334
    :sswitch_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xxhdpi."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    goto :goto_0

    .line 347
    .end local v1    # "endUrl":Ljava/lang/String;
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "filenameArray":[Ljava/lang/String;
    .end local v4    # "startUrl":Ljava/lang/String;
    :cond_0
    const-string v5, ""

    goto :goto_1

    .line 322
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_3
    .end sparse-switch
.end method

.method public getPageSelectedListener()Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->pageSelectedListener:Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;

    return-object v0
.end method

.method public initWidget()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 63
    const/4 v5, 0x1

    iput v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->actualPage:I

    .line 65
    new-instance v4, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 66
    .local v4, "vp":Landroid/support/v4/view/ViewPager;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Carrusel;->getBanners()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->count:I

    .line 72
    new-instance v5, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;-><init>(Lcom/tigo/mfsapp/banners/BannerWidget;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->addView(Landroid/view/View;)V

    .line 76
    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 77
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03008f

    invoke-virtual {v2, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 79
    .local v3, "vg":Landroid/widget/LinearLayout;
    iget v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->count:I

    new-array v0, v5, [Landroid/widget/ImageView;

    .line 80
    .local v0, "dots":[Landroid/widget/ImageView;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->count:I

    if-ge v1, v5, :cond_0

    .line 82
    const v5, 0x7f030055

    invoke-virtual {v2, v5, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    aput-object v5, v0, v1

    .line 83
    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    aget-object v5, v0, v6

    invoke-virtual {p0}, Lcom/tigo/mfsapp/banners/BannerWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/tigo/mfsapp/banners/BannerWidget;->setBkg(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/banners/BannerWidget;->addView(Landroid/view/View;)V

    .line 90
    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/banners/BannerWidget;->advancePage(Landroid/support/v4/view/ViewPager;)V

    .line 92
    new-instance v5, Lcom/tigo/mfsapp/banners/BannerWidget$1;

    invoke-direct {v5, p0, v0, v4}, Lcom/tigo/mfsapp/banners/BannerWidget$1;-><init>(Lcom/tigo/mfsapp/banners/BannerWidget;[Landroid/widget/ImageView;Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 128
    return-void
.end method

.method public setCarrusel(Lcom/tigo/mfsapp/model/Carrusel;)V
    .locals 0
    .param p1, "carrusel"    # Lcom/tigo/mfsapp/model/Carrusel;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->carrusel:Lcom/tigo/mfsapp/model/Carrusel;

    .line 298
    return-void
.end method

.method public setPageSelectedListener(Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;)V
    .locals 0
    .param p1, "pageSelectedListener"    # Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget;->pageSelectedListener:Lcom/tigo/mfsapp/banners/BannerWidget$PageSelectedListener;

    .line 52
    return-void
.end method
