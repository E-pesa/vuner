.class public Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
.super Ljava/lang/Object;
.source "EnvironmentInformation.java"


# instance fields
.field private diskAvailable:[J

.field private memoryUsage:J

.field private networkStatus:Ljava/lang/String;

.field private orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;[J)V
    .locals 1
    .param p1, "memoryUsage"    # J
    .param p3, "orientation"    # I
    .param p4, "networkStatus"    # Ljava/lang/String;
    .param p5, "diskAvailable"    # [J

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->memoryUsage:J

    .line 16
    iput p3, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->orientation:I

    .line 17
    iput-object p4, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->networkStatus:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->diskAvailable:[J

    .line 19
    return-void
.end method


# virtual methods
.method public getDiskAvailable()[J
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->diskAvailable:[J

    return-object v0
.end method

.method public getMemoryUsage()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->memoryUsage:J

    return-wide v0
.end method

.method public getNetworkStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->networkStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->orientation:I

    return v0
.end method

.method public setDiskAvailable([J)V
    .locals 0
    .param p1, "diskAvailable"    # [J

    .prologue
    .line 34
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->diskAvailable:[J

    .line 35
    return-void
.end method

.method public setMemoryUsage(J)V
    .locals 1
    .param p1, "memoryUsage"    # J

    .prologue
    .line 22
    iput-wide p1, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->memoryUsage:J

    .line 23
    return-void
.end method

.method public setNetworkStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkStatus"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->networkStatus:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->orientation:I

    .line 27
    return-void
.end method
