.class public Lcom/tigo/mfsapp/model/TigoEntity;
.super Ljava/lang/Object;
.source "TigoEntity.java"


# instance fields
.field private msisdn:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/tigo/mfsapp/model/TigoEntity;->msisdn:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/tigo/mfsapp/model/TigoEntity;->name:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tigo/mfsapp/model/TigoEntity;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/model/TigoEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0
    .param p1, "msisdn"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tigo/mfsapp/model/TigoEntity;->msisdn:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tigo/mfsapp/model/TigoEntity;->name:Ljava/lang/String;

    .line 35
    return-void
.end method
