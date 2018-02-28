.class public Lcom/newrelic/agent/android/harvest/crash/Crash;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableObject;
.source "Crash.java"


# static fields
.field public static final PROTOCOL_VERSION:I = 0x1


# instance fields
.field private activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

.field private final appToken:Ljava/lang/String;

.field private applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

.field private final buildId:Ljava/lang/String;

.field private deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

.field private exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

.field private threads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final timestamp:J

.field private final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 42
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    .line 44
    .local v0, "agentImpl":Lcom/newrelic/agent/android/AgentImpl;
    invoke-static {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 46
    .local v1, "cause":Ljava/lang/Throwable;
    new-instance v2, Ljava/util/UUID;

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {}, Lcom/newrelic/agent/android/util/Util;->getRandom()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->uuid:Ljava/util/UUID;

    .line 47
    invoke-static {}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getBuildId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->buildId:Ljava/lang/String;

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->timestamp:J

    .line 49
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->appToken:Ljava/lang/String;

    .line 50
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v3

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;-><init>(Lcom/newrelic/agent/android/harvest/DeviceInformation;Lcom/newrelic/agent/android/harvest/EnvironmentInformation;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    .line 51
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;-><init>(Lcom/newrelic/agent/android/harvest/ApplicationInformation;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    .line 52
    new-instance v2, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-direct {v2, v1}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;-><init>(Ljava/lang/Throwable;)V

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    .line 53
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->extractThreads(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->threads:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityHistory()Lcom/newrelic/agent/android/harvest/ActivityHistory;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/lang/String;J)V
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "buildId"    # Ljava/lang/String;
    .param p3, "timestamp"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableObject;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->uuid:Ljava/util/UUID;

    .line 36
    iput-object p2, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->buildId:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->timestamp:J

    .line 38
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->getAgentConfiguration()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->appToken:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public static crashFromJsonString(Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/crash/Crash;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v7, Lcom/newrelic/com/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/newrelic/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {v7, p0}, Lcom/newrelic/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    .line 96
    .local v3, "element":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v3}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v2

    .line 98
    .local v2, "crashObject":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v7, "uuid"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "uuid":Ljava/lang/String;
    const-string v7, "buildId"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "buildIdentifier":Ljava/lang/String;
    const-string v7, "timestamp"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsLong()J

    move-result-wide v4

    .line 102
    .local v4, "timestamp":J
    new-instance v1, Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v1, v7, v0, v4, v5}, Lcom/newrelic/agent/android/harvest/crash/Crash;-><init>(Ljava/util/UUID;Ljava/lang/String;J)V

    .line 104
    .local v1, "crash":Lcom/newrelic/agent/android/harvest/crash/Crash;
    const-string v7, "deviceInfo"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    move-result-object v7

    iput-object v7, v1, Lcom/newrelic/agent/android/harvest/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    .line 105
    const-string v7, "appInfo"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    move-result-object v7

    iput-object v7, v1, Lcom/newrelic/agent/android/harvest/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    .line 106
    const-string v7, "exception"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    move-result-object v7

    iput-object v7, v1, Lcom/newrelic/agent/android/harvest/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    .line 107
    const-string v7, "threads"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->newListFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lcom/newrelic/agent/android/harvest/crash/Crash;->threads:Ljava/util/List;

    .line 108
    const-string v7, "activityHistory"

    invoke-virtual {v2, v7}, Lcom/newrelic/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/ActivityHistory;->newFromJson(Lcom/newrelic/com/google/gson/JsonArray;)Lcom/newrelic/agent/android/harvest/ActivityHistory;

    move-result-object v7

    iput-object v7, v1, Lcom/newrelic/agent/android/harvest/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    .line 110
    return-object v1
.end method

.method public static getBuildId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, ""

    return-object v0
.end method

.method private static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 116
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 119
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0
.end method

.method private getThreadsAsJson()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 126
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->threads:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;

    .line 127
    .local v2, "thread":Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    goto :goto_0

    .line 130
    .end local v2    # "thread":Lcom/newrelic/agent/android/harvest/crash/ThreadInfo;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 74
    .local v0, "data":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v2, "protocolVersion"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 75
    const-string v2, "platform"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    const-string v4, "Android"

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 76
    const-string v2, "uuid"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->uuid:Ljava/util/UUID;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 77
    const-string v2, "buildId"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->buildId:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 78
    const-string v2, "timestamp"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 79
    const-string v2, "appToken"

    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->appToken:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 80
    const-string v2, "deviceInfo"

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->deviceInfo:Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/crash/DeviceInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 81
    const-string v2, "appInfo"

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->applicationInfo:Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/crash/ApplicationInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 82
    const-string v2, "exception"

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 83
    const-string v2, "threads"

    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getThreadsAsJson()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 84
    const-string v2, "activityHistory"

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->activityHistory:Lcom/newrelic/agent/android/harvest/ActivityHistory;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ActivityHistory;->asJsonArrayWithoutDuration()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 86
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    .line 87
    .local v1, "dataToken":Lcom/newrelic/agent/android/harvest/DataToken;
    if-eqz v1, :cond_0

    .line 88
    const-string v2, "dataToken"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DataToken;->asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 91
    :cond_0
    return-object v0
.end method

.method public getExceptionInfo()Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->exceptionInfo:Lcom/newrelic/agent/android/harvest/crash/ExceptionInfo;

    return-object v0
.end method

.method public getUuid()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/crash/Crash;->uuid:Ljava/util/UUID;

    return-object v0
.end method
