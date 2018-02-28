.class Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$1;
.super Ljava/lang/Object;
.source "HeaderEnrichmentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$1;->this$0:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$1;->this$0:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;->onHeaderEnrichmentError(I)V

    .line 80
    return-void
.end method
