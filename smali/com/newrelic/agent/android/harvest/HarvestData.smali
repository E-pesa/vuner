.class public Lcom/newrelic/agent/android/harvest/HarvestData;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "HarvestData.java"


# instance fields
.field private activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

.field private agentHealth:Lcom/newrelic/agent/android/harvest/AgentHealth;

.field private dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

.field private deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

.field private harvestTimeDelta:D

.field private httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

.field private httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

.field private machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 34
    new-instance v0, Lcom/newrelic/agent/android/harvest/DataToken;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/DataToken;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

    .line 35
    new-instance v0, Lcom/newrelic/agent/android/harvest/HttpTransactions;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HttpTransactions;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    .line 36
    new-instance v0, Lcom/newrelic/agent/android/harvest/HttpErrors;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HttpErrors;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    .line 37
    new-instance v0, Lcom/newrelic/agent/android/harvest/ActivityTraces;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    .line 38
    new-instance v0, Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    .line 39
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 40
    new-instance v0, Lcom/newrelic/agent/android/harvest/AgentHealth;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->agentHealth:Lcom/newrelic/agent/android/harvest/AgentHealth;

    .line 41
    return-void
.end method


# virtual methods
.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 6

    .prologue
    .line 49
    new-instance v2, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 50
    .local v2, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/DataToken;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 51
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 52
    new-instance v3, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-wide v4, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->harvestTimeDelta:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 53
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 54
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 55
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HttpErrors;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 57
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    .line 60
    .local v1, "activityTracesElement":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "activityTraceJson":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_max_size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 62
    invoke-virtual {v2, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->agentHealth:Lcom/newrelic/agent/android/harvest/AgentHealth;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/AgentHealth;->asJson()Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 69
    return-object v2

    .line 64
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v3

    const-string v4, "Supportability/AgentHealth/BigActivityTracesDropped"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->sample(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method public getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    return-object v0
.end method

.method public getAgentHealth()Lcom/newrelic/agent/android/harvest/AgentHealth;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->agentHealth:Lcom/newrelic/agent/android/harvest/AgentHealth;

    return-object v0
.end method

.method public getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

    return-object v0
.end method

.method public getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    return-object v0
.end method

.method public getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    return-object v0
.end method

.method public getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    return-object v0
.end method

.method public getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->clear()V

    .line 74
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->clear()V

    .line 75
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->clear()V

    .line 76
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->clear()V

    .line 77
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->agentHealth:Lcom/newrelic/agent/android/harvest/AgentHealth;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->clear()V

    .line 78
    return-void
.end method

.method public setActivityTraces(Lcom/newrelic/agent/android/harvest/ActivityTraces;)V
    .locals 0
    .param p1, "activityTraces"    # Lcom/newrelic/agent/android/harvest/ActivityTraces;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    .line 104
    return-void
.end method

.method public setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V
    .locals 0
    .param p1, "dataToken"    # Lcom/newrelic/agent/android/harvest/DataToken;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

    goto :goto_0
.end method

.method public setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V
    .locals 0
    .param p1, "deviceInformation"    # Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    .line 88
    return-void
.end method

.method public setHarvestTimeDelta(D)V
    .locals 1
    .param p1, "harvestTimeDelta"    # D

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->harvestTimeDelta:D

    .line 92
    return-void
.end method

.method public setHttpErrors(Lcom/newrelic/agent/android/harvest/HttpErrors;)V
    .locals 0
    .param p1, "httpErrors"    # Lcom/newrelic/agent/android/harvest/HttpErrors;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    .line 108
    return-void
.end method

.method public setHttpTransactions(Lcom/newrelic/agent/android/harvest/HttpTransactions;)V
    .locals 0
    .param p1, "httpTransactions"    # Lcom/newrelic/agent/android/harvest/HttpTransactions;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    .line 96
    return-void
.end method

.method public setMachineMeasurements(Lcom/newrelic/agent/android/harvest/MachineMeasurements;)V
    .locals 0
    .param p1, "machineMeasurements"    # Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HarvestData{dataToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->dataToken:Lcom/newrelic/agent/android/harvest/DataToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->deviceInformation:Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", harvestTimeDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->harvestTimeDelta:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpTransactions:Lcom/newrelic/agent/android/harvest/HttpTransactions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", machineMeasurements="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->machineMeasurements:Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpErrors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->httpErrors:Lcom/newrelic/agent/android/harvest/HttpErrors;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activityTraces="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/HarvestData;->activityTraces:Lcom/newrelic/agent/android/harvest/ActivityTraces;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
