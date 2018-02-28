.class public Lcom/newrelic/agent/android/AgentConfiguration;
.super Ljava/lang/Object;
.source "AgentConfiguration.java"


# static fields
.field private static final DEFAULT_COLLECTOR_HOST:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final DEFAULT_CRASH_COLLECTOR_HOST:Ljava/lang/String; = "mobile-crash.newrelic.com"


# instance fields
.field private appName:Ljava/lang/String;

.field private applicationToken:Ljava/lang/String;

.field private collectorHost:Ljava/lang/String;

.field private crashCollectorHost:Ljava/lang/String;

.field private crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

.field private reportCrashes:Z

.field private useLocationService:Z

.field private useSsl:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "mobile-collector.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 13
    const-string v0, "mobile-crash.newrelic.com"

    iput-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 16
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 18
    iput-boolean v1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashCollectorHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCrashStore()Lcom/newrelic/agent/android/crashes/CrashStore;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    return-object v0
.end method

.method public getReportCrashes()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->appName:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->applicationToken:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "collectorHost"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->collectorHost:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCrashCollectorHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "crashCollectorHost"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashCollectorHost:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCrashStore(Lcom/newrelic/agent/android/crashes/CrashStore;)V
    .locals 0
    .param p1, "crashStore"    # Lcom/newrelic/agent/android/crashes/CrashStore;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->crashStore:Lcom/newrelic/agent/android/crashes/CrashStore;

    .line 81
    return-void
.end method

.method public setReportCrashes(Z)V
    .locals 0
    .param p1, "reportCrashes"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->reportCrashes:Z

    .line 74
    return-void
.end method

.method public setUseLocationService(Z)V
    .locals 0
    .param p1, "useLocationService"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    .line 66
    return-void
.end method

.method public setUseSsl(Z)V
    .locals 0
    .param p1, "useSsl"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    .line 58
    return-void
.end method

.method public useLocationService()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useLocationService:Z

    return v0
.end method

.method public useSsl()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl:Z

    return v0
.end method
