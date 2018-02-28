.class Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$2;
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
    .line 96
    iput-object p1, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$2;->this$0:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1$2;->this$0:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;

    iget-object v0, v0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$1;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;->onHeaderEnrichmentSuccessValidation()V

    .line 100
    return-void
.end method
