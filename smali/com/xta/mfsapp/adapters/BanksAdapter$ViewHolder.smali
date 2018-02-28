.class public Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BanksAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public desc:Landroid/widget/TextView;

.field public image:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field public star:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;


# direct methods
.method public constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
