.class public Lcom/tigo/mfsapp/model/Banner;
.super Ljava/lang/Object;
.source "Banner.java"


# instance fields
.field private ImageURL:Ljava/lang/String;

.field private LinkURL:Ljava/lang/String;

.field private Texts:Lcom/tigo/mfsapp/model/Texts;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Banner;->ImageURL:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Banner;->LinkURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTexts()Lcom/tigo/mfsapp/model/Texts;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Banner;->Texts:Lcom/tigo/mfsapp/model/Texts;

    return-object v0
.end method

.method public setImageURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageURL"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Banner;->ImageURL:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setLinkURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "linkURL"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Banner;->LinkURL:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setTexts(Lcom/tigo/mfsapp/model/Texts;)V
    .locals 0
    .param p1, "texts"    # Lcom/tigo/mfsapp/model/Texts;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Banner;->Texts:Lcom/tigo/mfsapp/model/Texts;

    .line 38
    return-void
.end method
