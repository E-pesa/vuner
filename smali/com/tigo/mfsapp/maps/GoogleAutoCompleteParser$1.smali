.class Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;
.super Ljava/lang/Object;
.source "GoogleAutoCompleteParser.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;->parseAutoCompleteResponse(Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

.field final synthetic val$j:I

.field final synthetic val$predsJsonArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;Lorg/json/JSONArray;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;->this$0:Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

    iput-object p2, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;->val$predsJsonArray:Lorg/json/JSONArray;

    iput p3, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;->val$j:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;->val$predsJsonArray:Lorg/json/JSONArray;

    iget v2, p0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;->val$j:I

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method
