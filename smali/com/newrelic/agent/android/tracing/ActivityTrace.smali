.class public Lcom/newrelic/agent/android/tracing/ActivityTrace;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "ActivityTrace.java"


# static fields
.field private static final ACTIVITY_HISTORY_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENVIRONMENT_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_TRACES:I = 0x7d0

.field private static final SIZE_NORMAL:Ljava/lang/String; = "NORMAL"

.field public static final TRACE_VERSION:Ljava/lang/String; = "1.0"

.field private static final VITALS_TYPE:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private complete:Z

.field public lastUpdatedAt:J

.field private final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

.field private final missingChildren:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public previousActivity:Lcom/newrelic/agent/android/harvest/ActivitySighting;

.field private reportAttemptCount:J

.field public rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

.field public startedAt:J

.field private traceCount:I

.field private final traces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private vitals:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/newrelic/agent/android/tracing/ActivityTrace$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->ENVIRONMENT_TYPE:Ljava/util/HashMap;

    .line 50
    new-instance v0, Lcom/newrelic/agent/android/tracing/ActivityTrace$2;

    invoke-direct {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace$2;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->VITALS_TYPE:Ljava/util/HashMap;

    .line 54
    new-instance v0, Lcom/newrelic/agent/android/tracing/ActivityTrace$3;

    invoke-direct {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace$3;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->ACTIVITY_HISTORY_TYPE:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    iput v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceCount:I

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->reportAttemptCount:J

    .line 37
    iput-boolean v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 4
    .param p1, "rootTrace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    iput v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceCount:I

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->reportAttemptCount:J

    .line 37
    iput-boolean v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    .line 41
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 62
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    .line 64
    iget-wide v0, p1, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 65
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->startedAt:J

    .line 67
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    const-string v1, "traceVersion"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    const-string v1, "type"

    const-string v2, "ACTIVITY"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p1, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->startActivity(Ljava/lang/String;)Lcom/newrelic/agent/android/activity/MeasuredActivity;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/activity/NamedActivity;

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    iget-wide v2, p1, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/activity/NamedActivity;->setStartTime(J)V

    .line 74
    return-void
.end method

.method private getEnvironment()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 6

    .prologue
    .line 231
    new-instance v1, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 233
    .local v1, "environment":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v3, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;->ENVIRONMENT_TYPE:Ljava/util/HashMap;

    sget-object v5, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 236
    new-instance v0, Lcom/newrelic/agent/android/harvest/ConnectInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;-><init>()V

    .line 237
    .local v0, "connectInformation":Lcom/newrelic/agent/android/harvest/ConnectInformation;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/newrelic/com/google/gson/JsonArray;->addAll(Lcom/newrelic/com/google/gson/JsonArray;)V

    .line 240
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 241
    .local v2, "environmentParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "size"

    const-string v4, "NORMAL"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v3, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v2, v4}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 244
    return-object v1
.end method

.method private getPreviousActivityAsJson()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 291
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 293
    .local v0, "historyJson":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v1, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v2, Lcom/newrelic/agent/android/tracing/ActivityTrace;->ACTIVITY_HISTORY_TYPE:Ljava/util/HashMap;

    sget-object v3, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 294
    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->previousActivity:Lcom/newrelic/agent/android/harvest/ActivitySighting;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->addAll(Lcom/newrelic/com/google/gson/JsonArray;)V

    .line 296
    return-object v0
.end method

.method private getVitalsAsJson()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 12

    .prologue
    .line 252
    new-instance v5, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 254
    .local v5, "vitalsJson":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v7, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v7}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    sget-object v8, Lcom/newrelic/agent/android/tracing/ActivityTrace;->VITALS_TYPE:Ljava/util/HashMap;

    sget-object v9, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v7, v8, v9}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 256
    new-instance v6, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 271
    .local v6, "vitalsMap":Lcom/newrelic/com/google/gson/JsonObject;
    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 272
    iget-object v7, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 273
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    new-instance v4, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 275
    .local v4, "samplesJsonArray":Lcom/newrelic/com/google/gson/JsonArray;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/Sample;

    .line 277
    .local v3, "sample":Lcom/newrelic/agent/android/tracing/Sample;
    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Sample;->getTimestamp()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    cmp-long v7, v8, v10

    if-gtz v7, :cond_0

    .line 278
    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/Sample;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_1

    .line 281
    .end local v3    # "sample":Lcom/newrelic/agent/android/tracing/Sample;
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/tracing/Sample$SampleType;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/tracing/Sample$SampleType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 285
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "samplesJsonArray":Lcom/newrelic/com/google/gson/JsonArray;
    :cond_2
    invoke-virtual {v5, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 287
    return-object v5
.end method

.method private traceToTree(Lcom/newrelic/agent/android/tracing/Trace;)Lcom/newrelic/com/google/gson/JsonArray;
    .locals 10
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 193
    new-instance v3, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 195
    .local v3, "segment":Lcom/newrelic/com/google/gson/JsonArray;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/Trace;->prepareForSerialization()V

    .line 197
    new-instance v6, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v6}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v7

    sget-object v8, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v6, v7, v8}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 198
    new-instance v6, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v8, p1, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 199
    new-instance v6, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v8, p1, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v3, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 200
    new-instance v6, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v7, p1, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 202
    new-instance v4, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v4}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 203
    .local v4, "threadData":Lcom/newrelic/com/google/gson/JsonArray;
    new-instance v6, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v8, p1, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v4, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 204
    new-instance v6, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v7, p1, Lcom/newrelic/agent/android/tracing/Trace;->threadName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 206
    invoke-virtual {v3, v4}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 211
    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/Trace;->getChildren()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 212
    new-instance v6, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v6}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    invoke-virtual {v3, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 227
    :goto_0
    return-object v3

    .line 214
    :cond_0
    new-instance v1, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 216
    .local v1, "children":Lcom/newrelic/com/google/gson/JsonArray;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/tracing/Trace;->getChildren()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/UUID;

    .line 218
    .local v5, "traceUUID":Ljava/util/UUID;
    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/Trace;

    .line 219
    .local v0, "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceToTree(Lcom/newrelic/agent/android/tracing/Trace;)Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_1

    .line 224
    .end local v0    # "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    .end local v5    # "traceUUID":Ljava/util/UUID;
    :cond_2
    invoke-virtual {v3, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0
.end method


# virtual methods
.method public addCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 4
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 91
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 93
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    iget-object v1, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 95
    iget v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceCount:I

    const/16 v1, 0x7d0

    if-le v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum trace limit reached, discarding trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceCount:I

    .line 105
    iget-wide v0, p1, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v2, p1, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    iput-wide v2, v0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 109
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " missing children: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 111
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    goto :goto_0
.end method

.method public addTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 2
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    iget-object v1, p1, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 87
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 6

    .prologue
    .line 165
    new-instance v1, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v1}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 167
    .local v1, "tree":Lcom/newrelic/com/google/gson/JsonArray;
    iget-boolean v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    if-nez v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to serialize trace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v4, v4, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but it has yet to be finalized"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 169
    const/4 v1, 0x0

    .line 189
    .end local v1    # "tree":Lcom/newrelic/com/google/gson/JsonArray;
    :goto_0
    return-object v1

    .line 172
    .restart local v1    # "tree":Lcom/newrelic/com/google/gson/JsonArray;
    :cond_0
    new-instance v2, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->params:Ljava/util/HashMap;

    sget-object v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 173
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 174
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 175
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 177
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 178
    .local v0, "segments":Lcom/newrelic/com/google/gson/JsonArray;
    invoke-direct {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getEnvironment()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 179
    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-direct {p0, v2}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traceToTree(Lcom/newrelic/agent/android/tracing/Trace;)Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 180
    invoke-direct {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getVitalsAsJson()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 183
    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->previousActivity:Lcom/newrelic/agent/android/harvest/ActivitySighting;

    if-eqz v2, :cond_1

    .line 184
    invoke-direct {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getPreviousActivityAsJson()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 187
    :cond_1
    invoke-virtual {v1, v0}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0
.end method

.method public complete()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 132
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completing trace of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " traces)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v0, v0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iput-object v5, v0, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 142
    iput-boolean v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    .line 143
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->endActivityWithoutMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 157
    :goto_0
    return-void

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v2, v1, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/agent/android/activity/NamedActivity;->setEndTime(J)V

    .line 150
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->endActivity(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 153
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iput-object v5, v0, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 154
    iput-boolean v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    .line 156
    invoke-static {p0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public discard()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Discarding trace of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " traces)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    .line 128
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->measuredActivity:Lcom/newrelic/agent/android/activity/NamedActivity;

    invoke-static {v0}, Lcom/newrelic/agent/android/Measurements;->endActivityWithoutMeasurement(Lcom/newrelic/agent/android/activity/MeasuredActivity;)V

    .line 129
    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastUpdatedAt()J
    .locals 2

    .prologue
    .line 304
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    return-wide v0
.end method

.method public getReportAttemptCount()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->reportAttemptCount:J

    return-wide v0
.end method

.method public getTraces()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->traces:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public hasMissingChildren()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->missingChildren:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public incrementReportAttemptCount()V
    .locals 4

    .prologue
    .line 312
    iget-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->reportAttemptCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->reportAttemptCount:J

    .line 313
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete:Z

    return v0
.end method

.method public setLastUpdatedAt(J)V
    .locals 1
    .param p1, "lastUpdatedAt"    # J

    .prologue
    .line 300
    iput-wide p1, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 301
    return-void
.end method

.method public setVitals(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample$SampleType;",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/Sample;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "vitals":Ljava/util/Map;, "Ljava/util/Map<Lcom/newrelic/agent/android/tracing/Sample$SampleType;Ljava/util/Collection<Lcom/newrelic/agent/android/tracing/Sample;>;>;"
    iput-object p1, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->vitals:Ljava/util/Map;

    .line 249
    return-void
.end method
