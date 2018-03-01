.class public Lcom/tigo/mfsapp/model/Wallet;
.super Ljava/lang/Object;
.source "Wallet.java"


# instance fields
.field private balance:F

.field private id:Ljava/lang/String;

.field private lastUpdated:J

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

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Wallet;->id:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    .line 28
    return-void
.end method


# virtual methods
.method public getBalance()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/tigo/mfsapp/model/Wallet;->balance:F

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Wallet;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/tigo/mfsapp/model/Wallet;->lastUpdated:J

    return-wide v0
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
    .line 160
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 47
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    :goto_0
    return-object v1

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    goto :goto_0

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setBalance(F)V
    .locals 0
    .param p1, "balance"    # F

    .prologue
    .line 89
    iput p1, p0, Lcom/tigo/mfsapp/model/Wallet;->balance:F

    .line 90
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Wallet;->id:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1
    .param p1, "lastUpdated"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/tigo/mfsapp/model/Wallet;->lastUpdated:J

    .line 100
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "language":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 116
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 119
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "%s (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tigo/mfsapp/model/Wallet;->balance:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->mapDisplayName:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    .line 140
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    const-string v1, "%s (%s)"

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tigo/mfsapp/model/Wallet;->balance:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 143
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Wallet;->name:Ljava/lang/String;

    goto :goto_0
.end method
