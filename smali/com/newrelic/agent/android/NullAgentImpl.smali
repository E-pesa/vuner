.class public Lcom/newrelic/agent/android/NullAgentImpl;
.super Ljava/lang/Object;
.source "NullAgentImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/AgentImpl;


# static fields
.field public static final instance:Lcom/newrelic/agent/android/NullAgentImpl;


# instance fields
.field private final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private responseBodyLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/NullAgentImpl;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/NullAgentImpl;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 20
    return-void
.end method


# virtual methods
.method public addTransactionData(Lcom/newrelic/agent/android/api/common/TransactionData;)V
    .locals 0
    .param p1, "transactionData"    # Lcom/newrelic/agent/android/api/common/TransactionData;

    .prologue
    .line 24
    return-void
.end method

.method public disable()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public getAndClearTransactionData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;
    .locals 4

    .prologue
    .line 107
    new-instance v0, Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    const-string v1, "null"

    const-string v2, "0.0"

    const-string v3, "null"

    invoke-direct {v0, v1, v2, v3}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getCrossProcessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/newrelic/agent/android/harvest/DeviceInformation;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;-><init>()V

    .line 90
    .local v0, "devInfo":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsName(Ljava/lang/String;)V

    .line 91
    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsVersion(Ljava/lang/String;)V

    .line 92
    const-string v1, "a.b.c"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setOsBuild(Ljava/lang/String;)V

    .line 93
    const-string v1, "Fake"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setManufacturer(Ljava/lang/String;)V

    .line 94
    const-string v1, "NullAgent"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setModel(Ljava/lang/String;)V

    .line 95
    const-string v1, "AndroidAgent"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentName(Ljava/lang/String;)V

    .line 96
    const-string v1, "2.123"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setAgentVersion(Ljava/lang/String;)V

    .line 97
    const-string v1, "389C9738-A761-44DE-8A66-1668CFD67DA1"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setDeviceId(Ljava/lang/String;)V

    .line 98
    const-string v1, "Fake Arch"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setArchitecture(Ljava/lang/String;)V

    .line 99
    const-string v1, "1.7.0"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setRunTime(Ljava/lang/String;)V

    .line 100
    const-string v1, "Fake Size"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->setSize(Ljava/lang/String;)V

    .line 102
    return-object v0
.end method

.method public getEncoder()Lcom/newrelic/agent/android/util/Encoder;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/newrelic/agent/android/NullAgentImpl$1;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/NullAgentImpl$1;-><init>(Lcom/newrelic/agent/android/NullAgentImpl;)V

    return-object v0
.end method

.method public getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    .locals 7

    .prologue
    .line 112
    new-instance v1, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "none"

    const/4 v0, 0x2

    new-array v6, v0, [J

    fill-array-data v6, :array_0

    invoke-direct/range {v1 .. v6}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;-><init>(JILjava/lang/String;[J)V

    return-object v1

    nop

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method public getNetworkCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "unknown"

    return-object v0
.end method

.method public getResponseBodyLimit()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/newrelic/agent/android/NullAgentImpl;->responseBodyLimit:I

    return v0
.end method

.method public getStackTraceLimit()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public mergeTransactionData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/api/common/TransactionData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p1, "transactionDataList":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/api/common/TransactionData;>;"
    return-void
.end method

.method public setLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "adminRegion"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public setResponseBodyLimit(I)V
    .locals 0
    .param p1, "responseBodyLimit"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/newrelic/agent/android/NullAgentImpl;->responseBodyLimit:I

    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
