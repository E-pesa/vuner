.class public Lcom/tigo/mfsapp/maps/MapPinDetailFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MapPinDetailFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final DETAIL_KEY:Ljava/lang/String; = "DETAIL_KEY"

.field public static final KEY:Ljava/lang/String; = "DETAIL_OBJECT_KEY"


# instance fields
.field private baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

.field private button_desc_call:Landroid/widget/Button;

.field private button_desc_view_map:Landroid/widget/Button;

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private id:I

.field private isAgent:Z

.field private isGoingToMap:Z

.field private text_desc_address:Landroid/widget/TextView;

.field private text_desc_city:Landroid/widget/TextView;

.field private text_desc_contact_name:Landroid/widget/TextView;

.field private text_desc_description:Landroid/widget/TextView;

.field private text_desc_dist:Landroid/widget/TextView;

.field private text_desc_email:Landroid/widget/TextView;

.field private text_desc_n_acount:Landroid/widget/TextView;

.field private text_desc_name:Landroid/widget/TextView;

.field private text_desc_state:Landroid/widget/TextView;

.field private text_desc_status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isGoingToMap:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/maps/MapPinDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->viewDetailOnMap()V

    return-void
.end method

.method private buildUI()V
    .locals 7

    .prologue
    const v6, 0x7f0d016b

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 228
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getNamePOS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_dist:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2, v3}, Lcom/tigo/mfsapp/model/maps/Pin;->getFormattedDistanceFromPoint(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getFormattedDistanceFromPoint(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_dist:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 236
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 248
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_address:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_contact_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_n_acount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getContactNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_status:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_city:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getCity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_state:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/maps/Pin;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Pin;->getContactNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_call:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 260
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_call:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0600fc

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/maps/Pin;->getContactNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_call:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$1;-><init>(Lcom/tigo/mfsapp/maps/MapPinDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    :goto_1
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_view_map:Landroid/widget/Button;

    new-instance v2, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment$2;-><init>(Lcom/tigo/mfsapp/maps/MapPinDetailFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    :cond_1
    return-void

    .line 241
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_dist:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 244
    .restart local v0    # "v":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 272
    .end local v0    # "v":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_call:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method private connectLocationApi()V
    .locals 2

    .prologue
    .line 187
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 188
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 192
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 193
    return-void
.end method

.method private setFieldsVisibility(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 133
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "MAP_PINS"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "jsonPins":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 136
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "jPins":Lorg/json/JSONArray;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    .line 140
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 142
    .local v1, "jPin":Lorg/json/JSONObject;
    const-string v4, "NamePOS"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_name:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    const-string v4, "ContactPOS"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_contact_name:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :cond_1
    const-string v4, "Address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 149
    const v4, 0x7f0d0172

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 151
    :cond_2
    const-string v4, "notavailable"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 152
    const v4, 0x7f0d0175

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :cond_3
    const-string v4, "notavailable"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 155
    const v4, 0x7f0d0178

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 157
    :cond_4
    const-string v4, "notavailable"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 158
    const v4, 0x7f0d017e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_5
    const-string v4, "notavailable"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 161
    const v4, 0x7f0d017b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_6
    const-string v4, "City"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 164
    const v4, 0x7f0d0181

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_7
    const-string v4, "State"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 167
    const v4, 0x7f0d0184

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v1    # "jPin":Lorg/json/JSONObject;
    .end local v2    # "jPins":Lorg/json/JSONArray;
    :cond_8
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private viewDetailOnMap()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 296
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    if-eqz v4, :cond_0

    .line 298
    new-instance v1, Lcom/tigo/mfsapp/maps/MapViewFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;-><init>()V

    .line 299
    .local v1, "fragment":Lcom/tigo/mfsapp/maps/MapViewFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 302
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, "value":Ljava/lang/String;
    const-string v4, "DETAIL_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v4, "YESICA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Args to map: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v4, "TYPE_KEY"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "TYPE_KEY"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 309
    invoke-virtual {v1, v7}, Lcom/tigo/mfsapp/maps/MapViewFragment;->setOnePoint(Z)V

    .line 310
    iput-boolean v7, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isGoingToMap:Z

    .line 311
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 314
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "fragment":Lcom/tigo/mfsapp/maps/MapViewFragment;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected call()V
    .locals 4

    .prologue
    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/maps/Pin;->getContactNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 291
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 337
    const v1, 0x7f06018a

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isAgent:Z

    if-eqz v1, :cond_0

    .line 340
    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_0
    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 210
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->connectLocationApi()V

    .line 184
    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->buildUI()V

    .line 368
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->buildUI()V

    .line 378
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 379
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 373
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->setHasOptionsMenu(Z)V

    .line 69
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 384
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 386
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 86
    const v2, 0x7f03006b

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d016a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_name:Landroid/widget/TextView;

    .line 90
    const v2, 0x7f0d016c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_dist:Landroid/widget/TextView;

    .line 91
    const v2, 0x7f0d0174

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_address:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f0d0171

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_contact_name:Landroid/widget/TextView;

    .line 93
    const v2, 0x7f0d0177

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_email:Landroid/widget/TextView;

    .line 94
    const v2, 0x7f0d017a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_n_acount:Landroid/widget/TextView;

    .line 95
    const v2, 0x7f0d0180

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_description:Landroid/widget/TextView;

    .line 96
    const v2, 0x7f0d017d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_status:Landroid/widget/TextView;

    .line 97
    const v2, 0x7f0d0183

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_city:Landroid/widget/TextView;

    .line 98
    const v2, 0x7f0d0186

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->text_desc_state:Landroid/widget/TextView;

    .line 100
    const v2, 0x7f0d0187

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_call:Landroid/widget/Button;

    .line 101
    const v2, 0x7f0d0188

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->button_desc_view_map:Landroid/widget/Button;

    .line 103
    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->setFieldsVisibility(Landroid/view/View;)V

    .line 105
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TYPE_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "YESICA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> Parameter received TYPE_KEY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "TYPE_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v2, "AGENT_KEY"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TYPE_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isAgent:Z

    .line 122
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETAIL_OBJECT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETAIL_OBJECT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "jsonPin":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/maps/Pin;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    .line 129
    .end local v0    # "jsonPin":Ljava/lang/String;
    :cond_1
    return-object v1

    .line 117
    :cond_2
    const-string v2, "MERCHANT_KEY"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TYPE_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iput-boolean v6, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isAgent:Z

    goto :goto_0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 363
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 199
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->baseDetail:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "value":Ljava/lang/String;
    const-string v2, "DETAIL_KEY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 203
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isGoingToMap:Z

    if-nez v1, :cond_0

    .line 76
    const v1, 0x7f060262

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 80
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 81
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 215
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "sessionToken":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->isAgent:Z

    if-eqz v1, :cond_0

    .line 218
    iget v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestGetAgentDetail(Ljava/lang/String;I)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    iget v1, p0, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->id:I

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestGetMerchantDetail(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public replaceFragment(Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/tigo/mfsapp/main/MsfMainActivity;

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 325
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 323
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public updateBalance()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    return v0
.end method
