.class public Lcom/tigo/mfsapp/model/Texts;
.super Ljava/lang/Object;
.source "Texts.java"


# instance fields
.field private Description:Lcom/tigo/mfsapp/model/LanguageDescriptions;

.field private Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Lcom/tigo/mfsapp/model/LanguageDescriptions;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Texts;->Description:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    return-object v0
.end method

.method public getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Texts;->Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    return-object v0
.end method

.method public setDescription(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V
    .locals 0
    .param p1, "description"    # Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Texts;->Description:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .line 27
    return-void
.end method

.method public setTitle(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V
    .locals 0
    .param p1, "title"    # Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Texts;->Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .line 17
    return-void
.end method
