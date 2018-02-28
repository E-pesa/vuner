.class public Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;
.super Lcom/newrelic/agent/android/measurement/BaseMeasurement;
.source "HttpTransactionMeasurement.java"


# instance fields
.field private appData:Ljava/lang/String;

.field private bytesReceived:J

.field private bytesSent:J

.field private errorCode:I

.field private statusCode:I

.field private totalTime:D

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V
    .locals 16
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "errorCode"    # I
    .param p4, "startTime"    # J
    .param p6, "totalTime"    # D
    .param p8, "bytesSent"    # J
    .param p10, "bytesReceived"    # J
    .param p12, "appData"    # Ljava/lang/String;

    .prologue
    .line 42
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-object/from16 v14, p12

    invoke-direct/range {v3 .. v14}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IJDJJLjava/lang/String;)V

    .line 43
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJDJJLjava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTime"    # J
    .param p5, "totalTime"    # D
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "appData"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Network:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 25
    invoke-static {p1}, Lcom/newrelic/agent/android/util/Util;->sanitizeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->setName(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->setScope(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p3, p4}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->setStartTime(J)V

    .line 30
    double-to-int v0, p5

    int-to-long v0, v0

    add-long/2addr v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->setEndTime(J)V

    .line 31
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p5

    double-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->setExclusiveTime(J)V

    .line 33
    iput p2, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    .line 34
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    .line 35
    iput-wide p7, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    .line 36
    iput-wide p9, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    .line 37
    iput-wide p5, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    .line 38
    iput-object p11, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public asDouble()D
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    return-wide v0
.end method

.method public getAppData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    return-object v0
.end method

.method public getBytesReceived()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    return-wide v0
.end method

.method public getBytesSent()J
    .locals 2

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    return-wide v0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    return v0
.end method

.method public getTotalTime()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpTransactionMeasurement{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->totalTime:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesSent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesSent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bytesReceived="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->bytesReceived:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appData=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;->appData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
