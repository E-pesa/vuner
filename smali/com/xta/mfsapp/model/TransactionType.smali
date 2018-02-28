.class public Lcom/tigo/mfsapp/model/TransactionType;
.super Ljava/lang/Object;
.source "TransactionType.java"


# instance fields
.field private ID:Ljava/lang/String;

.field private final mapDisplayName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p2, "mapDisplayName":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/tigo/mfsapp/model/TransactionType;->ID:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/tigo/mfsapp/model/TransactionType;->mapDisplayName:Ljava/util/Map;

    .line 16
    return-void
.end method


# virtual methods
.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tigo/mfsapp/model/TransactionType;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public getMapDisplayName()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/tigo/mfsapp/model/TransactionType;->mapDisplayName:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/model/TransactionType;->mapDisplayName:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/model/TransactionType;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/tigo/mfsapp/model/TransactionType;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 42
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public setID(Ljava/lang/String;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/tigo/mfsapp/model/TransactionType;->ID:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/TransactionType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
