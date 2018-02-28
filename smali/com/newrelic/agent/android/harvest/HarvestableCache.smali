.class public Lcom/newrelic/agent/android/harvest/HarvestableCache;
.super Ljava/lang/Object;
.source "HarvestableCache.java"


# static fields
.field private static final DEFAULT_CACHE_LIMIT:I = 0x400


# instance fields
.field private final cache:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/type/Harvestable;",
            ">;"
        }
    .end annotation
.end field

.field private limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/16 v0, 0x400

    iput v0, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->limit:I

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public add(Lcom/newrelic/agent/android/harvest/type/Harvestable;)V
    .locals 2
    .param p1, "harvestable"    # Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .prologue
    .line 15
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget v1, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->limit:I

    if-lt v0, v1, :cond_1

    .line 18
    :cond_0
    :goto_0
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public flush()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/type/Harvestable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 26
    :goto_0
    return-object v0

    .line 23
    :cond_0
    monitor-enter p0

    .line 24
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 25
    .local v0, "oldCache":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/type/Harvestable;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 26
    monitor-exit p0

    goto :goto_0

    .line 27
    .end local v0    # "oldCache":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/type/Harvestable;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->cache:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public setLimit(I)V
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/newrelic/agent/android/harvest/HarvestableCache;->limit:I

    .line 36
    return-void
.end method
