.class public Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;
.super Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;
.source "SummaryMetricMeasurementConsumer.java"

# interfaces
.implements Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer$1;
    }
.end annotation


# static fields
.field private static final ACTIVITY_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Summary/Name/"

.field private static final METRIC_PREFIX:Ljava/lang/String; = "Mobile/Summary/"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final completedTraces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/tracing/ActivityTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/newrelic/agent/android/measurement/MeasurementType;->Any:Lcom/newrelic/agent/android/measurement/MeasurementType;

    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;-><init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->recordUnscopedMetrics:Z

    .line 32
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 33
    return-void
.end method

.method private consumeCustomMeasurement(Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;)V
    .locals 3
    .param p1, "customMetricMeasurement"    # Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    if-ne v1, v2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    new-instance v0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 73
    .local v0, "summary":Lcom/newrelic/agent/android/measurement/BaseMeasurement;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setName(Ljava/lang/String;)V

    .line 74
    invoke-super {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    goto :goto_0
.end method

.method private consumeMethodMeasurement(Lcom/newrelic/agent/android/measurement/MethodMeasurement;)V
    .locals 3
    .param p1, "methodMeasurement"    # Lcom/newrelic/agent/android/measurement/MethodMeasurement;

    .prologue
    .line 55
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    if-ne v1, v2, :cond_1

    .line 56
    :cond_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->categoryForMethod(Ljava/lang/String;)Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->setCategory(Lcom/newrelic/agent/android/instrumentation/MetricCategory;)V

    .line 57
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NONE:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    if-ne v1, v2, :cond_1

    .line 66
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 63
    .local v0, "summary":Lcom/newrelic/agent/android/measurement/BaseMeasurement;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/measurement/MethodMeasurement;->getCategory()Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setName(Ljava/lang/String;)V

    .line 65
    invoke-super {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    goto :goto_0
.end method

.method private consumeNetworkMeasurement(Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;)V
    .locals 2
    .param p1, "networkMeasurement"    # Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    .prologue
    .line 78
    new-instance v0, Lcom/newrelic/agent/android/measurement/BaseMeasurement;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;-><init>(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 79
    .local v0, "summary":Lcom/newrelic/agent/android/measurement/BaseMeasurement;
    sget-object v1, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->NETWORK:Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/instrumentation/MetricCategory;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/measurement/BaseMeasurement;->setName(Ljava/lang/String;)V

    .line 80
    invoke-super {p0, v0}, Lcom/newrelic/agent/android/measurement/consumer/MetricMeasurementConsumer;->consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V

    .line 81
    return-void
.end method

.method private summarizeActivityMetrics(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 24
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 111
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    .line 114
    .local v13, "trace":Lcom/newrelic/agent/android/tracing/Trace;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/newrelic/agent/android/metric/MetricStore;->removeAllWithScope(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 115
    .local v3, "activityMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    move-object/from16 v19, v0

    iget-object v0, v13, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/newrelic/agent/android/metric/MetricStore;->removeAllWithScope(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 116
    .local v5, "backgroundMetrics":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/metric/Metric;>;"
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 122
    .local v12, "summaryMetrics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/newrelic/agent/android/metric/Metric;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/metric/Metric;

    .line 123
    .local v2, "activityMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .end local v2    # "activityMetric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/metric/Metric;

    .line 129
    .local v4, "backgroundMetric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 130
    invoke-virtual {v4}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/newrelic/agent/android/metric/Metric;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/newrelic/agent/android/metric/Metric;->aggregate(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_1

    .line 132
    :cond_1
    invoke-virtual {v4}, Lcom/newrelic/agent/android/metric/Metric;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v12, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 137
    .end local v4    # "backgroundMetric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_2
    const-wide/16 v14, 0x0

    .line 138
    .local v14, "totalExclusiveTime":D
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/metric/Metric;

    .line 139
    .local v7, "metric":Lcom/newrelic/agent/android/metric/Metric;
    invoke-virtual {v7}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v20

    add-double v14, v14, v20

    goto :goto_2

    .line 142
    .end local v7    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    :cond_3
    iget-wide v0, v13, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v13, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x408f400000000000L    # 1000.0

    div-double v16, v20, v22

    .line 145
    .local v16, "traceTime":D
    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newrelic/agent/android/metric/Metric;

    .line 146
    .restart local v7    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    const-wide/16 v8, 0x0

    .line 148
    .local v8, "normalizedTime":D
    invoke-virtual {v7}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v19, v20, v22

    if-eqz v19, :cond_4

    const-wide/16 v20, 0x0

    cmpl-double v19, v14, v20

    if-eqz v19, :cond_4

    .line 149
    invoke-virtual {v7}, Lcom/newrelic/agent/android/metric/Metric;->getExclusive()D

    move-result-wide v20

    div-double v8, v20, v14

    .line 152
    :cond_4
    mul-double v10, v8, v16

    .line 154
    .local v10, "scaledTime":D
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setTotal(Ljava/lang/Double;)V

    .line 155
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setExclusive(Ljava/lang/Double;)V

    .line 156
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setMinFieldValue(Ljava/lang/Double;)V

    .line 157
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setMaxFieldValue(Ljava/lang/Double;)V

    .line 158
    const-wide/16 v20, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setSumOfSquares(Ljava/lang/Double;)V

    .line 159
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Mobile/Activity/Summary/Name/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/newrelic/agent/android/metric/Metric;->setScope(Ljava/lang/String;)V

    .line 163
    invoke-static {v7}, Lcom/newrelic/agent/android/harvest/Harvest;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 165
    new-instance v18, Lcom/newrelic/agent/android/metric/Metric;

    move-object/from16 v0, v18

    invoke-direct {v0, v7}, Lcom/newrelic/agent/android/metric/Metric;-><init>(Lcom/newrelic/agent/android/metric/Metric;)V

    .line 166
    .local v18, "unScoped":Lcom/newrelic/agent/android/metric/Metric;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/newrelic/agent/android/metric/Metric;->setScope(Ljava/lang/String;)V

    .line 167
    invoke-static/range {v18 .. v18}, Lcom/newrelic/agent/android/harvest/Harvest;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto/16 :goto_3

    .line 169
    .end local v7    # "metric":Lcom/newrelic/agent/android/metric/Metric;
    .end local v8    # "normalizedTime":D
    .end local v10    # "scaledTime":D
    .end local v18    # "unScoped":Lcom/newrelic/agent/android/metric/Metric;
    :cond_5
    return-void
.end method


# virtual methods
.method public consumeMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 2
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 37
    if-nez p1, :cond_0

    .line 51
    .end local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    :goto_0
    return-void

    .line 40
    .restart local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer$1;->$SwitchMap$com$newrelic$agent$android$measurement$MeasurementType:[I

    invoke-interface {p1}, Lcom/newrelic/agent/android/measurement/Measurement;->getType()Lcom/newrelic/agent/android/measurement/MeasurementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/measurement/MeasurementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 42
    :pswitch_0
    check-cast p1, Lcom/newrelic/agent/android/measurement/MethodMeasurement;

    .end local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->consumeMethodMeasurement(Lcom/newrelic/agent/android/measurement/MethodMeasurement;)V

    goto :goto_0

    .line 45
    .restart local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    :pswitch_1
    check-cast p1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    .end local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->consumeNetworkMeasurement(Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;)V

    goto :goto_0

    .line 48
    .restart local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    :pswitch_2
    check-cast p1, Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;

    .end local p1    # "measurement":Lcom/newrelic/agent/android/measurement/Measurement;
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->consumeCustomMeasurement(Lcom/newrelic/agent/android/measurement/CustomMetricMeasurement;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected formatMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Summary/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    const-string v2, "/"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onEnterMethod()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onExitMethod()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public onHarvest()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/MetricStore;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 100
    .local v1, "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->summarizeActivityMetrics(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_1

    .line 103
    .end local v1    # "trace":Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :cond_2
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->metrics:Lcom/newrelic/agent/android/metric/MetricStore;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/metric/MetricStore;->getAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 104
    sget-object v2, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Not all metrics were summarized!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 107
    :cond_3
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onHarvestComplete()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public onHarvestError()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 1
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/consumer/SummaryMetricMeasurementConsumer;->completedTraces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    return-void
.end method

.method public onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 0
    .param p1, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 182
    return-void
.end method
