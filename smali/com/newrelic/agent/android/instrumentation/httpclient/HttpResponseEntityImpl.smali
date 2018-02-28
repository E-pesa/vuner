.class public final Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;
.super Ljava/lang/Object;
.source "HttpResponseEntityImpl.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;
.implements Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;


# static fields
.field private static final ENCODING_CHUNKED:Ljava/lang/String; = "chunked"

.field private static final TRANSFER_ENCODING_HEADER:Ljava/lang/String; = "Transfer-Encoding"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final contentLengthFromHeader:J

.field private contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

.field private final impl:Lorg/apache/http/HttpEntity;

.field private final transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpEntity;Lcom/newrelic/agent/android/instrumentation/TransactionState;J)V
    .locals 1
    .param p1, "impl"    # Lorg/apache/http/HttpEntity;
    .param p2, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p3, "contentLengthFromHeader"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    .line 36
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 37
    iput-wide p3, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    .line 38
    return-void
.end method

.method private addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V
    .locals 21
    .param p1, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .prologue
    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v20

    .line 190
    .local v20, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v2, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v12

    invoke-virtual/range {v20 .. v20}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v2 .. v14}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v2}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 193
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .local v19, "responseBody":Ljava/lang/StringBuilder;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->getContent()Ljava/io/InputStream;

    move-result-object v17

    .line 196
    .local v17, "errorStream":Ljava/io/InputStream;
    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-eqz v2, :cond_0

    .line 197
    check-cast v17, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .end local v17    # "errorStream":Ljava/io/InputStream;
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->getBufferAsString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v15

    .line 206
    .local v15, "contentType":Lorg/apache/http/Header;
    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    .line 207
    .local v18, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    const-string v2, "content_type"

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :cond_1
    const-string v2, "content_length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-static {v0, v2, v1}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Lcom/newrelic/agent/android/api/common/TransactionData;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    .end local v15    # "contentType":Lorg/apache/http/Header;
    .end local v18    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "responseBody":Ljava/lang/StringBuilder;
    :cond_2
    return-void

    .line 199
    .restart local v19    # "responseBody":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v16

    .line 200
    .local v16, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public consumeContent()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    return-void

    .line 45
    :catch_0
    move-exception v13

    .line 46
    .local v13, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v0, v13}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 47
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v14

    .line 49
    .local v14, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v0, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v2

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v3

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v8

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v10

    invoke-virtual {v14}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v12

    invoke-direct/range {v0 .. v12}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v0}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 51
    .end local v14    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_0
    throw v13
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    if-eqz v2, :cond_0

    .line 59
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 81
    :goto_0
    return-object v2

    .line 63
    :cond_0
    const/16 v18, 0x1

    .line 66
    .local v18, "shouldBuffer":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    instance-of v2, v2, Lorg/apache/http/message/AbstractHttpMessage;

    if-eqz v2, :cond_2

    .line 67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    move-object/from16 v17, v0

    check-cast v17, Lorg/apache/http/message/AbstractHttpMessage;

    .line 68
    .local v17, "message":Lorg/apache/http/message/AbstractHttpMessage;
    const-string v2, "Transfer-Encoding"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/apache/http/message/AbstractHttpMessage;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v20

    .line 69
    .local v20, "transferEncodingHeader":Lorg/apache/http/Header;
    if-eqz v20, :cond_1

    const-string v2, "chunked"

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const/16 v18, 0x0

    .line 79
    .end local v17    # "message":Lorg/apache/http/message/AbstractHttpMessage;
    .end local v20    # "transferEncodingHeader":Lorg/apache/http/Header;
    :cond_1
    :goto_1
    new-instance v2, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    move/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;-><init>(Ljava/io/InputStream;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    .line 80
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;->addStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 81
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentStream:Lcom/newrelic/agent/android/instrumentation/io/CountingInputStream;

    goto :goto_0

    .line 73
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    instance-of v2, v2, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v2, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    move-object/from16 v16, v0

    check-cast v16, Lorg/apache/http/entity/HttpEntityWrapper;

    .line 75
    .local v16, "entityWrapper":Lorg/apache/http/entity/HttpEntityWrapper;
    invoke-virtual/range {v16 .. v16}, Lorg/apache/http/entity/HttpEntityWrapper;->isChunked()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    const/16 v18, 0x1

    :goto_2
    goto :goto_1

    :cond_3
    const/16 v18, 0x0

    goto :goto_2

    .line 83
    .end local v16    # "entityWrapper":Lorg/apache/http/entity/HttpEntityWrapper;
    :catch_0
    move-exception v15

    .line 84
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v2, v15}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 86
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v19

    .line 87
    .local v19, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v2, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v10

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v12

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v2 .. v14}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v2}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 89
    .end local v19    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_4
    throw v15
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public streamComplete(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 6
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 164
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 165
    .local v0, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 166
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 168
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-wide v2, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 175
    :cond_0
    return-void

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_0
.end method

.method public streamError(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;)V
    .locals 4
    .param p1, "e"    # Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;

    .line 180
    .local v0, "source":Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;
    invoke-interface {v0, p0}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListenerSource;->removeStreamCompleteListener(Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteListener;)V

    .line 181
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 182
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/instrumentation/io/StreamCompleteEvent;->getBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 185
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 18
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    new-instance v16, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 128
    .local v16, "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->contentLengthFromHeader:J

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 154
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    .line 160
    .end local v16    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 130
    .restart local v16    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :catch_0
    move-exception v15

    .line 135
    .local v15, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-static {v2, v15}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v17

    .line 140
    .local v17, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    new-instance v2, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v4

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v10

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v12

    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v2 .. v14}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v2}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 143
    .end local v17    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_1
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    throw v15

    .line 152
    .end local v15    # "e":Ljava/io/IOException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-virtual/range {v16 .. v16}, Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    goto :goto_0

    .line 158
    .end local v16    # "outputStream":Lcom/newrelic/agent/android/instrumentation/io/CountingOutputStream;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/newrelic/agent/android/instrumentation/httpclient/HttpResponseEntityImpl;->impl:Lorg/apache/http/HttpEntity;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    goto :goto_1
.end method
