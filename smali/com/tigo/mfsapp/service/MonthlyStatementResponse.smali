.class public Lcom/tigo/mfsapp/service/MonthlyStatementResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "MonthlyStatementResponse.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 0
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 11
    return-void
.end method
