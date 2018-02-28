.class public Lcom/tigo/mfsapp/model/DisplayNames;
.super Ljava/lang/Object;
.source "DisplayNames.java"


# instance fields
.field private en:Ljava/lang/String;

.field private es_SV:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "es_SV"    # Ljava/lang/String;
    .param p2, "en"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tigo/mfsapp/model/DisplayNames;->es_SV:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/tigo/mfsapp/model/DisplayNames;->en:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public getEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/model/DisplayNames;->en:Ljava/lang/String;

    return-object v0
.end method

.method public getEs_SV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/tigo/mfsapp/model/DisplayNames;->es_SV:Ljava/lang/String;

    return-object v0
.end method

.method public setEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "en"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/tigo/mfsapp/model/DisplayNames;->en:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setEs_SV(Ljava/lang/String;)V
    .locals 0
    .param p1, "es_SV"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/tigo/mfsapp/model/DisplayNames;->es_SV:Ljava/lang/String;

    .line 23
    return-void
.end method
