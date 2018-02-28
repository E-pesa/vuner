.class public Lcom/newrelic/agent/android/harvest/Harvest;
.super Ljava/lang/Object;
.source "Harvest.java"


# static fields
.field private static final DISABLE_ACTIVITY_TRACE_LIMITS_FOR_DEBUGGING:Z

.field private static final activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

.field protected static instance:Lcom/newrelic/agent/android/harvest/Harvest;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final unregisteredLifecycleListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field protected harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

.field private harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

.field private harvester:Lcom/newrelic/agent/android/harvest/Harvester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 20
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    .line 32
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-void
.end method

.method public static addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 8
    .param p0, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 133
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 173
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v4, p0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->add(Lcom/newrelic/agent/android/harvest/type/Harvestable;)V

    goto :goto_0

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    if-nez v4, :cond_2

    .line 141
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Activity trace is lacking a root trace!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v4, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 146
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total trace exclusive time is zero. Ignoring trace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v4, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v6

    .line 151
    .local v2, "traceExclusiveTime":D
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 152
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v4

    const-string v5, "Supportability/AgentHealth/IgnoredTraces"

    invoke-virtual {v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 153
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total trace exclusive time is too low ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). Ignoring trace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 157
    :cond_4
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v0

    .line 158
    .local v0, "activityTraces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v1

    .line 160
    .local v1, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 165
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v4

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 166
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity trace limit of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exceeded. Ignoring trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_5
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding activity trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->add(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto/16 :goto_0
.end method

.method public static addAgentHealthException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 1
    .param p0, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 181
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getAgentHealth()Lcom/newrelic/agent/android/harvest/AgentHealth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->addException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V

    goto :goto_0
.end method

.method public static addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 187
    if-nez p0, :cond_1

    .line 188
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to addHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method public static addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .locals 5
    .param p0, "error"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 102
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->shouldCollectNetworkErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 106
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 108
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v0

    .line 109
    .local v0, "errorLimit":I
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 110
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/ErrorsDropped"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 111
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum number of HTTP errors ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reached. HTTP Error dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    goto :goto_0
.end method

.method public static addHttpTransaction(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 5
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 118
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v1

    .line 121
    .local v1, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 123
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v0

    .line 124
    .local v0, "transactionLimit":I
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 125
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/TransactionsDropped"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 126
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum number of transactions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reached. HTTP Transaction dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->add(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0
.end method

.method public static addMetric(Lcom/newrelic/agent/android/metric/Metric;)V
    .locals 1
    .param p0, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 176
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_0
.end method

.method private static addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 257
    if-nez p0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 260
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 261
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private flushActivityTraceCache()V
    .locals 4

    .prologue
    .line 250
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->flush()Ljava/util/Collection;

    move-result-object v1

    .line 251
    .local v1, "activityTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/type/Harvestable;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .line 252
    .local v0, "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    check-cast v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .end local v0    # "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_0

    .line 254
    :cond_0
    return-void
.end method

.method private flushHarvestableCaches()V
    .locals 1

    .prologue
    .line 243
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushActivityTraceCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityTraceCacheSize()I
    .locals 1

    .prologue
    .line 222
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->getSize()I

    move-result v0

    return v0
.end method

.method public static getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 339
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method private getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    return-object v0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/harvest/Harvest;
    .locals 1

    .prologue
    .line 292
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    return-object v0
.end method

.method public static harvestNow()V
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Session/Duration"

    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceStart()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 67
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickNow()V

    goto :goto_0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 38
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 39
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->registerUnregisteredListeners()V

    .line 40
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 41
    return-void
.end method

.method public static isDisabled()Z
    .locals 1

    .prologue
    .line 346
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 348
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->isDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z
    .locals 1
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 282
    if-nez p0, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static registerUnregisteredListeners()V
    .locals 3

    .prologue
    .line 275
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 276
    .local v0, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 278
    .end local v0    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 279
    return-void
.end method

.method public static removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 202
    if-nez p0, :cond_1

    .line 203
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to removeHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method private static removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 266
    if-nez p0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 270
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 271
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 3
    .param p0, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 329
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot configure Harvester before initialization."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harvest Configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 335
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    goto :goto_0
.end method

.method public static setInstance(Lcom/newrelic/agent/android/harvest/Harvest;)V
    .locals 0
    .param p0, "harvestInstance"    # Lcom/newrelic/agent/android/harvest/Harvest;

    .prologue
    .line 71
    sput-object p0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    .line 72
    return-void
.end method

.method public static setPeriod(J)V
    .locals 2
    .param p0, "period"    # J

    .prologue
    .line 51
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 52
    return-void
.end method

.method public static shouldCollectActivityTraces()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 226
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 238
    .local v0, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_0
    :goto_0
    return v1

    .line 230
    .end local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    .line 235
    .restart local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->shutdownHarvester()V

    goto :goto_0
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->start()V

    .line 56
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->stop()V

    .line 60
    return-void
.end method


# virtual methods
.method public createHarvester()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 77
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 78
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvester;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 79
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V

    .line 80
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V

    .line 81
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestTimer;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;-><init>(Lcom/newrelic/agent/android/harvest/Harvester;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 82
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    .line 83
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 84
    return-void
.end method

.method protected getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method protected getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    return-object v0
.end method

.method public initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->createHarvester()V

    .line 45
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 47
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushHarvestableCaches()V

    .line 48
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 5
    .param p1, "newConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 322
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 323
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setServerTimestamp(J)V

    .line 324
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 325
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 326
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 313
    return-void
.end method

.method public shouldCollectNetworkErrors()Z
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v0

    return v0
.end method

.method public shutdownHarvester()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->shutdown()V

    .line 88
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 89
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 90
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 91
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 92
    return-void
.end method
