.class public Lcom/newrelic/agent/android/tracing/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field private static final CATEGORY_PARAMETER:Ljava/lang/String; = "category"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field public childExclusiveTime:J

.field private volatile children:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field public displayName:Ljava/lang/String;

.field public entryTimestamp:J

.field public exclusiveTime:J

.field public exitTimestamp:J

.field private isComplete:Z

.field public metricBackgroundName:Ljava/lang/String;

.field public metricName:Ljava/lang/String;

.field public final myUUID:Ljava/util/UUID;

.field private volatile params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final parentUUID:Ljava/util/UUID;

.field private rawAnnotationParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public scope:Ljava/lang/String;

.field public threadId:J

.field public threadName:Ljava/lang/String;

.field public traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

.field private type:Lcom/newrelic/agent/android/tracing/TraceType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/tracing/Trace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    .line 22
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    .line 23
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 24
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->exclusiveTime:J

    .line 25
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    .line 32
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    .line 35
    const-string v0, "main"

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->threadName:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->type:Lcom/newrelic/agent/android/tracing/TraceType;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->isComplete:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->parentUUID:Ljava/util/UUID;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Lcom/newrelic/agent/android/tracing/TraceMachine;)V
    .locals 8
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "parentUUID"    # Ljava/util/UUID;
    .param p3, "traceMachine"    # Lcom/newrelic/agent/android/tracing/TraceMachine;

    .prologue
    const-wide/16 v6, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/UUID;

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    .line 22
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    .line 23
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 24
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->exclusiveTime:J

    .line 25
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    .line 32
    iput-wide v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    .line 35
    const-string v0, "main"

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->threadName:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->type:Lcom/newrelic/agent/android/tracing/TraceType;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->isComplete:Z

    .line 52
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/newrelic/agent/android/tracing/Trace;->parentUUID:Ljava/util/UUID;

    .line 54
    iput-object p3, p0, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 55
    return-void
.end method

.method private static createParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "parameterName"    # Ljava/lang/String;
    .param p1, "parameterClass"    # Ljava/lang/String;
    .param p2, "parameterValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 175
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    .local v0, "clazz":Ljava/lang/Class;
    const-class v3, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    if-ne v3, v0, :cond_1

    .line 183
    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object p2

    .line 190
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local p2    # "parameterValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 176
    .restart local p2    # "parameterValue":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/newrelic/agent/android/tracing/Trace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to resolve parameter class in enterMethod: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p2, v2

    .line 178
    goto :goto_0

    .line 186
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "clazz":Ljava/lang/Class;
    :cond_1
    const-class v3, Ljava/lang/String;

    if-eq v3, v0, :cond_0

    move-object p2, v2

    .line 190
    goto :goto_0
.end method


# virtual methods
.method public addChild(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 2
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 60
    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    .line 63
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    iget-object v1, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    return-void

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public complete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 123
    iget-boolean v1, p0, Lcom/newrelic/agent/android/tracing/Trace;->isComplete:Z

    if-eqz v1, :cond_0

    .line 124
    sget-object v1, Lcom/newrelic/agent/android/tracing/Trace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to double complete trace "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-wide v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/Trace;->getDuration()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->exclusiveTime:J

    .line 134
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/newrelic/agent/android/tracing/Trace;->isComplete:Z

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->storeCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1
.end method

.method public getAnnotationParams()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    .local v0, "annotationParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 100
    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 102
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .local v4, "paramName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    .local v3, "paramClass":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 108
    .local v5, "paramValue":Ljava/lang/String;
    invoke-static {v4, v3, v5}, Lcom/newrelic/agent/android/tracing/Trace;->createParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    .local v2, "param":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "param":Ljava/lang/Object;
    .end local v3    # "paramClass":Ljava/lang/String;
    .end local v4    # "paramName":Ljava/lang/String;
    .end local v5    # "paramValue":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/Trace;->getAnnotationParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "category"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 168
    :goto_0
    return-object v0

    .line 163
    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/Trace;->getAnnotationParams()Ljava/util/Map;

    move-result-object v2

    const-string v3, "category"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    .local v0, "category":Ljava/lang/Object;
    instance-of v2, v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    if-nez v2, :cond_1

    .line 165
    sget-object v2, Lcom/newrelic/agent/android/tracing/Trace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Category annotation parameter is not of type MetricCategory"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 168
    :cond_1
    check-cast v0, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    goto :goto_0
.end method

.method public getChildren()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    .line 75
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->children:Ljava/util/Set;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDuration()J
    .locals 4

    .prologue
    .line 157
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    iget-wide v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->params:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 83
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->params:Ljava/util/Map;

    .line 86
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->params:Ljava/util/Map;

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getType()Lcom/newrelic/agent/android/tracing/TraceType;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->type:Lcom/newrelic/agent/android/tracing/TraceType;

    return-object v0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/newrelic/agent/android/tracing/Trace;->isComplete:Z

    return v0
.end method

.method public prepareForSerialization()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v0

    const-string v1, "type"

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->type:Lcom/newrelic/agent/android/tracing/TraceType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/tracing/TraceType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    return-void
.end method

.method public setAnnotationParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "rawAnnotationParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Trace;->rawAnnotationParams:Ljava/util/List;

    .line 94
    return-void
.end method

.method public setType(Lcom/newrelic/agent/android/tracing/TraceType;)V
    .locals 0
    .param p1, "type"    # Lcom/newrelic/agent/android/tracing/TraceType;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/Trace;->type:Lcom/newrelic/agent/android/tracing/TraceType;

    .line 154
    return-void
.end method
