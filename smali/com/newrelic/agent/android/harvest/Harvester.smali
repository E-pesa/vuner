.class public Lcom/newrelic/agent/android/harvest/Harvester;
.super Ljava/lang/Object;
.source "Harvester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/harvest/Harvester$1;,
        Lcom/newrelic/agent/android/harvest/Harvester$State;
    }
.end annotation


# instance fields
.field private agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field private harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private final harvestListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private state:Lcom/newrelic/agent/android/harvest/Harvester$State;

.field protected stateChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 44
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    return-void
.end method

.method private changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .locals 3
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harvester changing state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_0

    .line 369
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    .line 375
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 377
    return-void

    .line 371
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne p1, v0, :cond_0

    .line 372
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    goto :goto_0
.end method

.method private configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 2
    .param p1, "harvestConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 360
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 361
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 362
    return-void
.end method

.method private fireOnHarvest()V
    .locals 5

    .prologue
    .line 567
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 568
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 570
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 571
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvest"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 574
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestBefore()V
    .locals 5

    .prologue
    .line 531
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 532
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestBefore()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 534
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestBefore"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 538
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestComplete()V
    .locals 5

    .prologue
    .line 639
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 640
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestComplete()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 642
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestComplete"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 644
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestConnected()V
    .locals 5

    .prologue
    .line 651
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 652
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 654
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestConnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 656
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 658
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestDisabled()V
    .locals 5

    .prologue
    .line 591
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 592
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisabled()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 595
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestDisabled"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 598
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestDisconnected()V
    .locals 5

    .prologue
    .line 603
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 604
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestDisconnected"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 608
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 610
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestError()V
    .locals 5

    .prologue
    .line 615
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 616
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestError()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestError"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 620
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 622
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestFinalize()V
    .locals 5

    .prologue
    .line 579
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 580
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestFinalize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestFinalize"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 584
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 586
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestSendFailed()V
    .locals 5

    .prologue
    .line 627
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 628
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestSendFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestSendFailed"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestStart()V
    .locals 5

    .prologue
    .line 543
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 544
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestStart"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 550
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private fireOnHarvestStop()V
    .locals 5

    .prologue
    .line 555
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->getHarvestListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 556
    .local v1, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-interface {v1}, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;->onHarvestStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    .end local v1    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Error in fireOnHarvestStop"

    invoke-interface {v3, v4, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 560
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 562
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private getHarvestListeners()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 8
    .param p1, "response"    # Lcom/newrelic/agent/android/harvest/HarvestResponse;

    .prologue
    .line 345
    new-instance v4, Lcom/newrelic/com/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;-><init>()V

    .line 346
    .local v4, "gsonBuilder":Lcom/newrelic/com/google/gson/GsonBuilder;
    const-class v5, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    new-instance v6, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;

    invoke-direct {v6}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfigurationDeserializer;-><init>()V

    invoke-virtual {v4, v5, v6}, Lcom/newrelic/com/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/newrelic/com/google/gson/GsonBuilder;

    .line 347
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/GsonBuilder;->create()Lcom/newrelic/com/google/gson/Gson;

    move-result-object v3

    .line 348
    .local v3, "gson":Lcom/newrelic/com/google/gson/Gson;
    const/4 v1, 0x0

    .line 350
    .local v1, "config":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :try_start_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v3, v5, v6}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-object v1, v0
    :try_end_0
    .catch Lcom/newrelic/com/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    return-object v1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    .local v2, "e":Lcom/newrelic/com/google/gson/JsonSyntaxException;
    iget-object v5, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse collector configuration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/JsonSyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 353
    invoke-static {v2}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private varargs stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z
    .locals 5
    .param p1, "testState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;
    .param p2, "legalStates"    # [Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    .line 381
    move-object v0, p2

    .local v0, "arr$":[Lcom/newrelic/agent/android/harvest/Harvester$State;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 382
    .local v3, "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    if-ne p1, v3, :cond_0

    .line 383
    const/4 v4, 0x1

    .line 384
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :goto_1
    return v4

    .line 381
    .restart local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v3    # "state":Lcom/newrelic/agent/android/harvest/Harvester$State;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Can\'t add null harvest listener"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    monitor-exit v1

    goto :goto_0

    .line 416
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 415
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 416
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected connected()V
    .locals 6

    .prologue
    .line 176
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Harvester: connected"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP transactions."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 178
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " HTTP errors."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvester: Sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activity traces."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendData(Lcom/newrelic/agent/android/harvest/type/Harvestable;)Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 184
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestSendFailed()V

    .line 235
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->reset()V

    .line 191
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 193
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest data response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest data response status code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest data response body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isError()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 198
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    .line 200
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 220
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 203
    :pswitch_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 204
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 207
    :pswitch_1
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Collector has commanded Agent to disable."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 209
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 212
    :cond_2
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 213
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 217
    :pswitch_2
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_3
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 226
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_4

    .line 227
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 231
    :cond_4
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 234
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestComplete()V

    goto/16 :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected disabled()V
    .locals 0

    .prologue
    .line 243
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 244
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 245
    return-void
.end method

.method protected disconnected()V
    .locals 6

    .prologue
    .line 97
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping connect call, saved state is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Session/Start"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    .line 102
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 103
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 104
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    .line 167
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting, saved state is not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->sendConnect()Lcom/newrelic/agent/android/harvest/HarvestResponse;

    move-result-object v1

    .line 114
    .local v1, "response":Lcom/newrelic/agent/android/harvest/HarvestResponse;
    if-nez v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to connect to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isOK()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->parseHarvesterConfiguration(Lcom/newrelic/agent/android/harvest/HarvestResponse;)Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 122
    .local v0, "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    if-nez v0, :cond_2

    .line 123
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unable to configure Harvester using Collector configuration."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->configureHarvester(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 128
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/Collector/Harvest"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 129
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestConnected()V

    .line 132
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto :goto_0

    .line 136
    .end local v0    # "configuration":Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    :cond_3
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Harvest connect response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 139
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$HarvestResponse$Code:[I

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->getResponseCode()Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;

    move-result-object v3

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestResponse$Code;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 161
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "An unknown error occurred when connecting to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 164
    :goto_1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestError()V

    goto/16 :goto_0

    .line 144
    :pswitch_0
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/DataToken;->clear()V

    .line 145
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisconnected()V

    goto/16 :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestResponse;->isDisableCommand()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Collector has commanded Agent to disable."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestDisabled()V

    .line 151
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto/16 :goto_0

    .line 154
    :cond_4
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Unexpected Collector response: FORBIDDEN"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 158
    :pswitch_2
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Invalid ConnectionInformation was sent to the Collector."

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected execute()V
    .locals 4

    .prologue
    .line 253
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Harvester state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    .line 258
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHarvestData()V

    .line 260
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 281
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Exception encountered while attempting to harvest"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 287
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 262
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->uninitialized()V

    goto :goto_0

    .line 265
    :pswitch_1
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 266
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disconnected()V

    goto :goto_0

    .line 269
    :pswitch_2
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestBefore()V

    .line 270
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvest()V

    .line 271
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestFinalize()V

    .line 273
    invoke-static {}, Lcom/newrelic/agent/android/TaskQueue;->synchronousDequeue()V

    .line 275
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->connected()V

    goto :goto_0

    .line 278
    :pswitch_3
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->disabled()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public expireActivityTraces()V
    .locals 10

    .prologue
    .line 484
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v5

    .line 488
    .local v5, "traces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    monitor-enter v5

    .line 489
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_max_report_attempts()I

    move-result v6

    int-to-long v2, v6

    .line 493
    .local v2, "maxAttempts":J
    invoke-virtual {v5}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->getActivityTraces()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 494
    .local v4, "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-ltz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ActivityTrace has had "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getReportAttemptCount()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " report attempts, purging: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 497
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 505
    .end local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "maxAttempts":J
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 502
    .restart local v0    # "expiredTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/ActivityTrace;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "maxAttempts":J
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 503
    .restart local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-virtual {v5, v4}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->remove(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_1

    .line 505
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    return-void
.end method

.method public expireHarvestData()V
    .locals 0

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 429
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 430
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 431
    return-void
.end method

.method public expireHttpErrors()V
    .locals 12

    .prologue
    .line 434
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 438
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    monitor-enter v1

    .line 439
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v3, "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 441
    .local v6, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v4

    .line 444
    .local v4, "maxAge":J
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->getHttpErrors()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 445
    .local v0, "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpError;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v6, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 446
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpError too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 447
    invoke-interface {v3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    .end local v4    # "maxAge":J
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 452
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "oldErrors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpError;>;"
    .restart local v4    # "maxAge":J
    .restart local v6    # "now":J
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HttpError;

    .line 453
    .restart local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    invoke-virtual {v1, v0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->removeHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    goto :goto_1

    .line 455
    .end local v0    # "error":Lcom/newrelic/agent/android/harvest/HttpError;
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    return-void
.end method

.method public expireHttpTransactions()V
    .locals 12

    .prologue
    .line 459
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v6

    .line 463
    .local v6, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    monitor-enter v6

    .line 464
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v1, "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 466
    .local v4, "now":J
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReportMaxTransactionAgeMilliseconds()J

    move-result-wide v2

    .line 469
    .local v2, "maxAge":J
    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->getHttpTransactions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 470
    .local v7, "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getTimestamp()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v10, v4, v2

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 471
    iget-object v8, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "HttpTransaction too old, purging: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 472
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 480
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    .end local v2    # "maxAge":J
    .end local v4    # "now":J
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :catchall_0
    move-exception v8

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 477
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "oldTransactions":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/HttpTransaction;>;"
    .restart local v2    # "maxAge":J
    .restart local v4    # "now":J
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .line 478
    .restart local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->remove(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_1

    .line 480
    .end local v7    # "txn":Lcom/newrelic/agent/android/harvest/HttpTransaction;
    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    return-void
.end method

.method public getCurrentState()Lcom/newrelic/agent/android/harvest/Harvester$State;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 2

    .prologue
    .line 402
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p1, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 420
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    monitor-exit v1

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 424
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 0
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 510
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 661
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .line 662
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 513
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 514
    return-void
.end method

.method public setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V
    .locals 0
    .param p1, "harvestData"    # Lcom/newrelic/agent/android/harvest/HarvestData;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 522
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStart()V

    .line 61
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->fireOnHarvestStop()V

    .line 65
    return-void
.end method

.method protected transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V
    .locals 6
    .param p1, "newState"    # Lcom/newrelic/agent/android/harvest/Harvester$State;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 309
    iget-boolean v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->stateChanged:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring multiple transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    if-eq v0, p1, :cond_0

    .line 318
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$1;->$SwitchMap$com$newrelic$agent$android$harvest$Harvester$State:[I

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->state:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvester$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 320
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v5

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    :cond_2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->changeState(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    goto :goto_0

    .line 322
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 324
    :pswitch_1
    new-array v0, v5, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->UNINITIALIZED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->CONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 326
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 328
    :pswitch_2
    new-array v0, v4, [Lcom/newrelic/agent/android/harvest/Harvester$State;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISABLED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    aput-object v1, v0, v3

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stateIn(Lcom/newrelic/agent/android/harvest/Harvester$State;[Lcom/newrelic/agent/android/harvest/Harvester$State;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 330
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected uninitialized()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Agent configuration unavailable."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 87
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    new-instance v1, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>()V

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 80
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setApplicationToken(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCollectorHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setCollectorHost(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvester;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvester;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->useSsl(Z)V

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvester$State;->DISCONNECTED:Lcom/newrelic/agent/android/harvest/Harvester$State;

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/harvest/Harvester;->transition(Lcom/newrelic/agent/android/harvest/Harvester$State;)V

    .line 86
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V

    goto :goto_0
.end method
