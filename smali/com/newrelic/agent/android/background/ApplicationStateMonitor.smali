.class public Lcom/newrelic/agent/android/background/ApplicationStateMonitor;
.super Ljava/lang/Object;
.source "ApplicationStateMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final activitySnoozeTimeInMilliseconds:I

.field private final applicationStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newrelic/agent/android/background/ApplicationStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private count:J

.field private final foregroundLock:Ljava/lang/Object;

.field private foregrounded:Z

.field private final snoozeLock:Ljava/lang/Object;

.field private snoozeStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 33
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/16 v1, 0x1388

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;-><init>(IILjava/util/concurrent/TimeUnit;I)V

    .line 34
    return-void
.end method

.method constructor <init>(IILjava/util/concurrent/TimeUnit;I)V
    .locals 7
    .param p1, "initialDelay"    # I
    .param p2, "period"    # I
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "snoozeTimeInMilliseconds"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 21
    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 22
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    .line 27
    iput-boolean v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/newrelic/agent/android/util/NamedThreadFactory;

    const-string v2, "AppStateMon"

    invoke-direct {v1, v2}, Lcom/newrelic/agent/android/util/NamedThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 38
    .local v0, "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    iput p4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activitySnoozeTimeInMilliseconds:I

    .line 39
    int-to-long v2, p1

    int-to-long v4, p2

    move-object v1, p0

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 40
    sget-object v1, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Application state monitor has started"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    invoke-direct {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    .line 47
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->instance:Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    return-object v0
.end method

.method private getSnoozeTime()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 153
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :goto_0
    return-wide v0

    :cond_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    sub-long/2addr v0, v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 157
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private notifyApplicationInBackground()V
    .locals 6

    .prologue
    .line 123
    sget-object v4, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Application appears to have gone to the background"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 125
    iget-object v5, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 126
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/background/ApplicationStateEvent;-><init>(Ljava/lang/Object;)V

    .line 129
    .local v0, "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .line 130
    .local v2, "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/background/ApplicationStateListener;->applicationBackgrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V

    goto :goto_0

    .line 127
    .end local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 132
    .restart local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :cond_0
    return-void
.end method

.method private notifyApplicationInForeground()V
    .locals 6

    .prologue
    .line 136
    iget-object v5, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v5

    .line 137
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    new-instance v0, Lcom/newrelic/agent/android/background/ApplicationStateEvent;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/background/ApplicationStateEvent;-><init>(Ljava/lang/Object;)V

    .line 140
    .local v0, "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .line 141
    .local v2, "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/background/ApplicationStateListener;->applicationForegrounded(Lcom/newrelic/agent/android/background/ApplicationStateEvent;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/newrelic/agent/android/background/ApplicationStateListener;
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 143
    .restart local v0    # "e":Lcom/newrelic/agent/android/background/ApplicationStateEvent;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/background/ApplicationStateListener;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public activityStarted()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    .line 103
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    :try_start_1
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 106
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 110
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 112
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    iget-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    if-nez v0, :cond_1

    .line 115
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Application appears to be in the foreground"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 116
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->notifyApplicationInForeground()V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 119
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 120
    return-void

    .line 112
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 119
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public activityStopped()V
    .locals 8

    .prologue
    .line 89
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 91
    :try_start_1
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    .line 92
    iget-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->count:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->snoozeStartTime:J

    .line 95
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 96
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public addApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeApplicationStateListener(Lcom/newrelic/agent/android/background/ApplicationStateListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/newrelic/agent/android/background/ApplicationStateListener;

    .prologue
    .line 57
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->applicationStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59
    monitor-exit v1

    .line 60
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 64
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getSnoozeTime()J

    move-result-wide v2

    iget v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activitySnoozeTimeInMilliseconds:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->notifyApplicationInBackground()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 72
    :cond_0
    monitor-exit v1

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public uiHidden()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregroundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "UI has become hidden (app backgrounded)"

    invoke-interface {v0, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->notifyApplicationInBackground()V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->foregrounded:Z

    .line 82
    :cond_0
    monitor-exit v1

    .line 83
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
