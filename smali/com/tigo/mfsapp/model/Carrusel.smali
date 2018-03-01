.class public Lcom/tigo/mfsapp/model/Carrusel;
.super Ljava/lang/Object;
.source "Carrusel.java"


# instance fields
.field private Banners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Banner;",
            ">;"
        }
    .end annotation
.end field

.field private FindNearestStore:Ljava/lang/Boolean;

.field private SelfRegistration:Ljava/lang/Boolean;

.field private TimeToAdvance:Ljava/lang/Integer;

.field private Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;

.field private Type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->Banners:Ljava/util/List;

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->FindNearestStore:Ljava/lang/Boolean;

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->SelfRegistration:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getBanners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Banner;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->Banners:Ljava/util/List;

    return-object v0
.end method

.method public getFindNearestStore()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->FindNearestStore:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSelfRegistration()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->SelfRegistration:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTimeToAdvance()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->TimeToAdvance:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusel;->Type:Ljava/lang/String;

    return-object v0
.end method

.method public setBanners(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tigo/mfsapp/model/Banner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "banners":Ljava/util/List;, "Ljava/util/List<Lcom/tigo/mfsapp/model/Banner;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusel;->Banners:Ljava/util/List;

    .line 44
    return-void
.end method

.method public setTimeToAdvance(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "timeToAdvance"    # Ljava/lang/Integer;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusel;->TimeToAdvance:Ljava/lang/Integer;

    .line 34
    return-void
.end method

.method public setTitle(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V
    .locals 0
    .param p1, "title"    # Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusel;->Title:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .line 54
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusel;->Type:Ljava/lang/String;

    .line 24
    return-void
.end method
