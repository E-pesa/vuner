.class public Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;
.super Landroid/os/AsyncTask;
.source "GetLatLngUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/maps/GetLatLngUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLatLngAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/google/android/gms/maps/model/LatLng;",
        ">;"
    }
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mResultListener:Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "resultListener"    # Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mResultListener:Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    .line 60
    return-void
.end method

.method private getFromLocation(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 10
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v2, Landroid/location/Geocoder;

    iget-object v5, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v2, "geoCoder":Landroid/location/Geocoder;
    const/4 v3, 0x0

    .line 99
    .local v3, "p":Lcom/google/android/gms/maps/model/LatLng;
    :try_start_0
    const-string v5, "UTF-8"

    invoke-static {p1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/location/Geocoder;->getFromLocationName(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 100
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 102
    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Address;

    invoke-virtual {v5}, Landroid/location/Address;->getLatitude()D

    move-result-wide v6

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Address;

    invoke-virtual {v5}, Landroid/location/Address;->getLongitude()D

    move-result-wide v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "p":Lcom/google/android/gms/maps/model/LatLng;
    .local v4, "p":Lcom/google/android/gms/maps/model/LatLng;
    move-object v3, v4

    .line 109
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v4    # "p":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v3    # "p":Lcom/google/android/gms/maps/model/LatLng;
    :cond_0
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v1

    .line 107
    .local v1, "ee":Ljava/lang/Exception;
    const-string v5, ""

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLocationFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 17
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v11, "stringBuilder":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "https://maps.google.com/maps/api/geocode/json?address="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "UTF-8"

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "&ka&sensor=false"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "query":Ljava/lang/String;
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 120
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    .line 122
    .local v13, "urlConnection":Ljava/net/HttpURLConnection;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FindAgent/Merchant geocode "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 126
    .local v10, "stream":Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v10}, Ljava/io/InputStream;->read()I

    move-result v2

    .local v2, "b":I
    const/4 v14, -0x1

    if-eq v2, v14, :cond_0

    .line 128
    int-to-char v14, v2

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 132
    .end local v2    # "b":I
    .end local v5    # "query":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v4, "jsonObject":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONObject;

    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    const-string v14, "YESICA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Geocoder response "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v14, "status"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "status"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "OK"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 178
    const-string v14, "results"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "geometry"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "location"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "lng"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 180
    .local v8, "lng":D
    const-string v14, "results"

    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "geometry"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "location"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, "lat"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 184
    .local v6, "lat":D
    new-instance v14, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v14, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v14

    .line 131
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "lat":D
    .end local v8    # "lng":D
    .restart local v2    # "b":I
    .restart local v5    # "query":Ljava/lang/String;
    .restart local v10    # "stream":Ljava/io/InputStream;
    .restart local v12    # "url":Ljava/net/URL;
    .restart local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :try_start_2
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 134
    .end local v2    # "b":I
    .end local v5    # "query":Ljava/lang/String;
    .end local v10    # "stream":Ljava/io/InputStream;
    .end local v12    # "url":Ljava/net/URL;
    .end local v13    # "urlConnection":Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v3

    .line 135
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 136
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    throw v14

    .line 188
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    new-instance v14, Lorg/json/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Fields not found  in : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v14
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 65
    const/4 v1, 0x0

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mAddress:Ljava/lang/String;

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->getLocationFromString(Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mResultListener:Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    if-eqz v0, :cond_0

    .line 86
    if-eqz p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mResultListener:Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;->onLatLngReceive(DD)V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->mResultListener:Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngAsyncTask;->onPostExecute(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void
.end method
