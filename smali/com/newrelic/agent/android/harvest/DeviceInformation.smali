.class public Lcom/newrelic/agent/android/harvest/DeviceInformation;
.super Lcom/newrelic/agent/android/harvest/type/HarvestableArray;
.source "DeviceInformation.java"


# instance fields
.field private agentName:Ljava/lang/String;

.field private agentVersion:Ljava/lang/String;

.field private architecture:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private misc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/String;

.field private osBuild:Ljava/lang/String;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private regionCode:Ljava/lang/String;

.field private runTime:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/type/HarvestableArray;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addMisc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public asJsonArray()Lcom/newrelic/com/google/gson/JsonArray;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/newrelic/com/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonArray;-><init>()V

    .line 33
    .local v0, "array":Lcom/newrelic/com/google/gson/JsonArray;
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 34
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 36
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 37
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 40
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 42
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 44
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 45
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 47
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 48
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 50
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->notEmpty(Ljava/lang/String;)V

    .line 51
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 54
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 55
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->optional(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 58
    new-instance v2, Lcom/newrelic/com/google/gson/JsonPrimitive;

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/newrelic/com/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 60
    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    .line 63
    :cond_1
    new-instance v2, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    iget-object v3, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    sget-object v4, Lcom/newrelic/agent/android/harvest/DeviceInformation;->GSON_STRING_MAP_TYPE:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lcom/newrelic/com/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/newrelic/com/google/gson/JsonElement;

    move-result-object v1

    .line 64
    .local v1, "map":Lcom/newrelic/com/google/gson/JsonElement;
    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/gson/JsonArray;->add(Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 66
    return-object v0
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getOsBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    return-object v0
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRunTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    return-object v0
.end method

.method public setAgentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentName"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setAgentVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setArchitecture(Ljava/lang/String;)V
    .locals 0
    .param p1, "architecture"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->architecture:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setMisc(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "misc":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->misc:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setOsBuild(Ljava/lang/String;)V
    .locals 0
    .param p1, "osBuild"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osBuild:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setOsName(Ljava/lang/String;)V
    .locals 0
    .param p1, "osName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setRegionCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRunTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "runTime"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->runTime:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 1
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->size:Ljava/lang/String;

    .line 119
    const-string v0, "size"

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->addMisc(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInformation{manufacturer=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->manufacturer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->osVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", model=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", agentVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->agentVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regionCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/DeviceInformation;->regionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
