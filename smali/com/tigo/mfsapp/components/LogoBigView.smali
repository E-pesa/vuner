.class public Lcom/tigo/mfsapp/components/LogoBigView;
.super Landroid/widget/ImageView;
.source "LogoBigView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/LogoBigView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/LogoBigView;->init()V

    .line 15
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/LogoBigView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "logo_big"

    const-string v3, "drawable"

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 29
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/components/LogoBigView;->setImageResource(I)V

    .line 31
    .end local v0    # "id":I
    :cond_0
    return-void
.end method
