.class Lcom/tigo/mfsapp/service/DevicesListResponse$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "DevicesListResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/service/DevicesListResponse;->processResponse(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/tigo/mfsapp/model/Device;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/service/DevicesListResponse;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/service/DevicesListResponse;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/service/DevicesListResponse;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/tigo/mfsapp/service/DevicesListResponse$1;->this$0:Lcom/tigo/mfsapp/service/DevicesListResponse;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
