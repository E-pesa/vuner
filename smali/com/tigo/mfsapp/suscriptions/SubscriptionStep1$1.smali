.class Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1$1;
.super Ljava/lang/Object;
.source "SubscriptionStep1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1$1;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1$1;->this$0:Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/suscriptions/SubscriptionStep1;->closeAndGoHome()V

    .line 99
    return-void
.end method
