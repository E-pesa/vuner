.class final Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$2;
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
    .line 144
    iput-object p1, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$2;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$2;->val$listener:Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;

    invoke-interface {v0}, Lcom/tigo/mfsapp/headerenrichment/HeaderEnrichmentUtils$headerEnrichmentListener;->onHeaderEnrichmentSuccessValidation()V

    .line 148
    return-void
.end method
