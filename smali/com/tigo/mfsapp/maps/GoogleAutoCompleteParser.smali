.class public Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;
.super Ljava/lang/Object;
.source "GoogleAutoCompleteParser.java"

# interfaces
.implements Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$ResultList;
    }
.end annotation


# static fields
.field public static final GOOGLE_GEOCODER:Ljava/lang/String; = "http://maps.googleapis.com/maps/api/geocode/json?latlng="

.field private static final OUT_JSON:Ljava/lang/String; = "/json"

.field public static final PLACES_API_BASE:Ljava/lang/String; = "https://maps.googleapis.com/maps/api/place"

.field private static final TYPE_AUTOCOMPLETE:Ljava/lang/String; = "/autocomplete"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static getGooglePlacesUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "apiKey"    # Ljava/lang/String;

    .prologue
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://maps.googleapis.com/maps/api/place/autocomplete/json"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "language"

    const-string v6, "en"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "langCode":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/app/MfsApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "country":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "?sensor=false&types=geocode&key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&components=country:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public parseAutoCompleteResponse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "jsonResults"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    .local v6, "jsonObj":Lorg/json/JSONObject;
    const-string v8, "predictions"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 56
    .local v7, "predsJsonArray":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    .local v2, "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v4, v8, :cond_0

    .line 59
    move v5, v4

    .line 60
    .local v5, "j":I
    new-instance v0, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;

    invoke-direct {v0, p0, v7, v5}, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser$1;-><init>(Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;Lorg/json/JSONArray;I)V

    .line 76
    .local v0, "ds":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "ds":Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;
    .end local v5    # "j":I
    :cond_0
    move-object v1, v2

    .line 83
    .end local v2    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    .end local v4    # "i":I
    .end local v6    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "predsJsonArray":Lorg/json/JSONArray;
    .restart local v1    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    :goto_1
    return-object v1

    .line 78
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Lorg/json/JSONException;
    :goto_2
    const-string v8, "AppUtil"

    const-string v9, "Cannot process JSON results"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 78
    .end local v1    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v2    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    .restart local v4    # "i":I
    .restart local v6    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "predsJsonArray":Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    .restart local v1    # "dsi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;>;"
    goto :goto_2
.end method
