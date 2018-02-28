.class public Lcom/newrelic/agent/android/harvest/HarvestTimer;
.super Ljava/lang/Object;
.source "HarvestTimer.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_HARVEST_PERIOD:J = 0xea60L

.field private static final HARVEST_PERIOD_LEEWAY:J = 0x3e8L

.field private static final NEVER_TICKED:J = -0x1L


# instance fields
.field protected final harvester:Lcom/newrelic/agent/android/harvest/Harvester;

.field protected lastTickTime:J

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private period:J

.field private final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private startTimeMs:J

.field private tickFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/harvest/Harvester;)V
    .locals 2
    .param p1, "harvester"    # Lcom/newrelic/agent/android/harvest/Harvester;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v1, "Harvester"

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 21
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    .line 27
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 28
    return-void
.end method

.method private now()J
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private tickIfReady()V
    .locals 10

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceLastTick()J

    move-result-wide v2

    .line 47
    .local v2, "lastTickDelta":J
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    iget-wide v8, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_0

    const-wide/16 v6, -0x1

    cmp-long v1, v2, v6

    if-eqz v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HarvestTimer: Tick is too soon ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " delta) Last tick time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " . Skipping."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HarvestTimer: time since last tick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v4

    .line 57
    .local v4, "tickStart":J
    :try_start_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tick()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_1
    iput-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    .line 65
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set last tick time to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HarvestTimer: Exception in timer tick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_1
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 31
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickIfReady()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 40
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HarvestTimer: Exception in timer tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPeriod(J)V
    .locals 1
    .param p1, "period"    # J

    .prologue
    .line 151
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    .line 152
    return-void
.end method

.method public shutdown()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 126
    return-void
.end method

.method public start()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 94
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Attempting to start while already running"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 110
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Refusing to start with a period of 0 ms"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HarvestTimer: Starting with a period of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->period:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 109
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->start()V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Attempting to stop when not running"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "HarvestTimer: Stopped."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 118
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    .line 119
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->stop()V

    .line 120
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method protected tick()V
    .locals 7

    .prologue
    .line 69
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Harvest: tick"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v1}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 71
    .local v1, "t":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 74
    :try_start_0
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvester;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Harvest: executed"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 84
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvester;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->stop()V

    .line 88
    :cond_0
    invoke-virtual {v1}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v2

    .line 90
    .local v2, "tickDelta":J
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HarvestTimer tick took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 91
    return-void

    .line 75
    .end local v2    # "tickDelta":J
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HarvestTimer: Exception in harvest execute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public tickNow()V
    .locals 8

    .prologue
    .line 130
    move-object v2, p0

    .line 131
    .local v2, "timer":Lcom/newrelic/agent/android/harvest/HarvestTimer;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/newrelic/agent/android/harvest/HarvestTimer$1;

    invoke-direct {v4, p0, v2}, Lcom/newrelic/agent/android/harvest/HarvestTimer$1;-><init>(Lcom/newrelic/agent/android/harvest/HarvestTimer;Lcom/newrelic/agent/android/harvest/HarvestTimer;)V

    const-wide/16 v6, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v6, v7, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 138
    .local v1, "future":Ljava/util/concurrent/ScheduledFuture;
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception waiting for tickNow to finish: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public timeSinceLastTick()J
    .locals 4

    .prologue
    .line 155
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 156
    const-wide/16 v0, -0x1

    .line 157
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->lastTickTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public timeSinceStart()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 161
    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 163
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestTimer;->startTimeMs:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method
