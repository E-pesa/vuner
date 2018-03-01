.class Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;
.super Ljava/lang/Object;
.source "SubscriptionListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "holder"
.end annotation


# instance fields
.field Desc:Landroid/widget/TextView;

.field name:Landroid/widget/TextView;

.field star:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter$holder;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
