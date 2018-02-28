.class Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;
.super Ljava/lang/Object;
.source "BannerWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;->this$1:Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

    iput p2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;->this$1:Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

    iget-object v2, v2, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->links:[Ljava/lang/String;

    iget v3, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;->val$position:I

    aget-object v1, v2, v3

    .line 240
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "i":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter$1;->this$1:Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;

    iget-object v2, v2, Lcom/tigo/mfsapp/banners/BannerWidget$PageAdapter;->this$0:Lcom/tigo/mfsapp/banners/BannerWidget;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banners/BannerWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method
