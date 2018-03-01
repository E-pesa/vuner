.class final Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$3;
.super Ljava/lang/Object;
.source "HeaderEnrichmentUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils;->checkIfHELoginIsNeeded(Landroid/support/v4/app/FragmentActivity;Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$3;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$3;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;->onHeaderEnrichmentError(I)V

    .line 175
    return-void
.end method
