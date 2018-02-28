.class public Lcom/tigo/mfsapp/maps/MapViewFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MapViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/location/LocationListener;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# static fields
.field public static final CAMERA_POSITION:Ljava/lang/String; = "CAMERA_POSITION"

.field private static final MIN_DISTANCE:F = 1000.0f

.field private static final MIN_TIME:J = 0x190L

.field private static final REQUEST_CODE_LOCATION:I = 0x1


# instance fields
.field private final DEFAULT_ZOOM:I

.field private clicked:Z

.field private displayHomeAsUp:Z

.field private final eventMarkerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/gms/maps/model/Marker;",
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;"
        }
    .end annotation
.end field

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private isAgent:Z

.field private isOnePoint:Z

.field private locationManager:Landroid/location/LocationManager;

.field private map:Lcom/google/android/gms/maps/GoogleMap;

.field private mapButtonAgents:Landroid/widget/ToggleButton;

.field private mapButtonMerchants:Landroid/widget/ToggleButton;

.field private mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

.field private pins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;"
        }
    .end annotation
.end field

.field private prevBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private progressView:Landroid/view/View;

.field private searchData:Z

.field private thereWasAnError:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 85
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Parameters;->getZoomInMaps()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->DEFAULT_ZOOM:I

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->eventMarkerMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/maps/MapViewFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->eventMarkerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/maps/MapViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->clicked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/maps/MapViewFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->clicked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/maps/MapViewFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    return v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/maps/MapViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getData()V

    return-void
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/maps/MapViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->hideSearchInActionBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/maps/MapViewFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    iget v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->DEFAULT_ZOOM:I

    return v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/maps/MapViewFragment;)Lcom/google/android/gms/maps/GoogleMap;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/MapViewFragment;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method private buildMarks(Lcom/tigo/mfsapp/service/MarksResponse;)V
    .locals 14
    .param p1, "res"    # Lcom/tigo/mfsapp/service/MarksResponse;

    .prologue
    .line 517
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/MarksResponse;->getClusters()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 518
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/MarksResponse;->getClusters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v5, :cond_0

    .line 519
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/MarksResponse;->getClusters()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/maps/Cluster;

    .line 520
    .local v1, "c":Lcom/tigo/mfsapp/model/maps/Cluster;
    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Cluster;->getCoord()Lcom/tigo/mfsapp/model/maps/Coord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/maps/Coord;->getLat()D

    move-result-wide v10

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Cluster;->getCoord()Lcom/tigo/mfsapp/model/maps/Coord;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/maps/Coord;->getLng()D

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Cluster;->getNumberOfPins()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v6

    .line 522
    .local v6, "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 523
    .local v4, "conf":Landroid/graphics/Bitmap$Config;
    const/16 v7, 0x64

    const/16 v8, 0x64

    invoke-static {v7, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 524
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 526
    .local v2, "canvas1":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 527
    .local v3, "color":Landroid/graphics/Paint;
    const/high16 v7, 0x420c0000    # 35.0f

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 528
    const/4 v7, -0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 529
    const-string v7, ""

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 531
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f02008f

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/maps/Cluster;->getNumberOfPins()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41900000    # 18.0f

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v2, v7, v8, v9, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 533
    invoke-static {v0}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 535
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    .line 518
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 537
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "c":Lcom/tigo/mfsapp/model/maps/Cluster;
    .end local v2    # "canvas1":Landroid/graphics/Canvas;
    .end local v3    # "color":Landroid/graphics/Paint;
    .end local v4    # "conf":Landroid/graphics/Bitmap$Config;
    .end local v6    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_0
    invoke-virtual {p1}, Lcom/tigo/mfsapp/service/MarksResponse;->getPins()Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tigo/mfsapp/maps/MapViewFragment;->loadMarkers(Ljava/util/ArrayList;)V

    .line 541
    .end local v5    # "i":I
    :cond_1
    return-void
.end method

.method private checkLocationServices()V
    .locals 4

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETAIL_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->locationManager:Landroid/location/LocationManager;

    .line 419
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->locationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->connectLocationAPI()V

    .line 449
    :cond_1
    :goto_0
    return-void

    .line 427
    :cond_2
    new-instance v1, Lcom/tigo/mfsapp/maps/MapViewFragment$7;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$7;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    .line 443
    .local v1, "dialogClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0601da

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0602b0

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0601b4

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private connectLocationAPI()V
    .locals 3

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f06011d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 132
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 133
    return-void
.end method

.method private getData()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v1

    iget-object v0, v1, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 208
    .local v0, "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->prevBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->prevBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->searchData:Z

    if-nez v1, :cond_0

    .line 210
    const-string v1, "GetData"

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 211
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->searchData:Z

    .line 212
    iput-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->prevBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 213
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->submit()V

    .line 218
    .end local v0    # "bounds":Lcom/google/android/gms/maps/model/LatLngBounds;
    :cond_0
    return-void
.end method

.method private hideSearchInActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 699
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 700
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 701
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->displayHomeAsUp:Z

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 702
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 703
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 704
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 705
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 706
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 711
    .end local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 709
    .restart local v0    # "actionBar":Landroid/support/v7/app/ActionBar;
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private loadMarkers(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/maps/Pin;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "pins":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/maps/Pin;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->pins:Ljava/util/ArrayList;

    .line 545
    if-eqz p1, :cond_3

    .line 546
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 547
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 548
    .local v4, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    if-eqz v4, :cond_1

    .line 549
    new-instance v5, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v6, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getLatitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getLongitude()Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getNamePOS()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v3

    .line 550
    .local v3, "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    const/4 v0, 0x0

    .line 551
    .local v0, "addMarker":Z
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getTypePOS()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getTypePOS()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AGENT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 552
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonAgents:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 554
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 555
    const/4 v0, 0x1

    .line 563
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 564
    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getNeighborhood()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 566
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5, v3}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v2

    .line 567
    .local v2, "m":Lcom/google/android/gms/maps/model/Marker;
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->eventMarkerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .end local v0    # "addMarker":Z
    .end local v2    # "m":Lcom/google/android/gms/maps/model/Marker;
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 558
    .restart local v0    # "addMarker":Z
    .restart local v3    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    :cond_2
    iget-object v5, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonMerchants:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 559
    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v5}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 560
    const/4 v0, 0x1

    goto :goto_1

    .line 573
    .end local v0    # "addMarker":Z
    .end local v1    # "j":I
    .end local v3    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v4    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_3
    return-void
.end method

.method private setupMap()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 236
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/SupportMapFragment;->getMap()Lcom/google/android/gms/maps/GoogleMap;

    move-result-object v7

    iput-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    .line 238
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v11}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 240
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/tigo/mfsapp/maps/MapViewFragment$3;

    invoke-direct {v8, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$3;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setOnInfoWindowClickListener(Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;)V

    .line 268
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "TYPE_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 272
    const-string v7, "YESICA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> Parameter received TYPE_KEY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "TYPE_KEY"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v7, "AGENT_KEY"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "TYPE_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 275
    iput-boolean v11, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isAgent:Z

    .line 281
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "CAMERA_POSITION"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 282
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "CAMERA_POSITION"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "jsonCameraPosition":Ljava/lang/String;
    const-string v7, "YESICA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> Parameter received CAMERA_POSITION: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    if-eqz v3, :cond_1

    .line 289
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 290
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v7, Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-virtual {v1, v3, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/CameraPosition;

    .line 291
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-static {v0}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newCameraPosition(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 295
    .end local v0    # "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "jsonCameraPosition":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DETAIL_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 296
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 297
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "DETAIL_KEY"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "json":Ljava/lang/String;
    const-string v7, "YESICA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "DETAIL_KEY Args to map: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-class v7, Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v1, v2, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 308
    .local v6, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    new-instance v7, Lcom/google/android/gms/maps/model/MarkerOptions;

    invoke-direct {v7}, Lcom/google/android/gms/maps/model/MarkerOptions;-><init>()V

    new-instance v8, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/maps/Pin;->getLatitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/maps/Pin;->getLongitude()Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v7

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/maps/Pin;->getNamePOS()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    move-result-object v5

    .line 310
    .local v5, "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/maps/Pin;->getNeighborhood()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->snippet(Ljava/lang/String;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 312
    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/maps/Pin;->getTypePOS()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AGENT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 313
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonAgents:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 314
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    .line 324
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 326
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/maps/GoogleMap;->addMarker(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/Marker;

    move-result-object v4

    .line 327
    .local v4, "m":Lcom/google/android/gms/maps/model/Marker;
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->eventMarkerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v5}, Lcom/google/android/gms/maps/model/MarkerOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 332
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    iget v8, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->DEFAULT_ZOOM:I

    int-to-float v8, v8

    invoke-static {v8}, Lcom/google/android/gms/maps/CameraUpdateFactory;->zoomTo(F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 340
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "m":Lcom/google/android/gms/maps/model/Marker;
    .end local v5    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v6    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/tigo/mfsapp/maps/MapViewFragment$4;

    invoke-direct {v8, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$4;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setOnMarkerClickListener(Lcom/google/android/gms/maps/GoogleMap$OnMarkerClickListener;)V

    .line 348
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/tigo/mfsapp/maps/MapViewFragment$5;

    invoke-direct {v8, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$5;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setOnCameraChangeListener(Lcom/google/android/gms/maps/GoogleMap$OnCameraChangeListener;)V

    .line 372
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v8, Lcom/tigo/mfsapp/maps/MapViewFragment$6;

    invoke-direct {v8, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$6;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v7, v8}, Lcom/google/android/gms/maps/GoogleMap;->setInfoWindowAdapter(Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;)V

    .line 398
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v7}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->prevBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    .line 399
    return-void

    .line 276
    :cond_4
    const-string v7, "AGENT_KEY"

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "TYPE_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 277
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isAgent:Z

    goto/16 :goto_0

    .line 317
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v5    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    .restart local v6    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_5
    iget-object v7, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonMerchants:Landroid/widget/ToggleButton;

    invoke-virtual {v7}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 318
    const/high16 v7, 0x42f00000    # 120.0f

    invoke-static {v7}, Lcom/google/android/gms/maps/model/BitmapDescriptorFactory;->defaultMarker(F)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/maps/model/MarkerOptions;->icon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)Lcom/google/android/gms/maps/model/MarkerOptions;

    goto :goto_1

    .line 336
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "json":Ljava/lang/String;
    .end local v5    # "marker":Lcom/google/android/gms/maps/model/MarkerOptions;
    .end local v6    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_6
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->submit()V

    goto :goto_2
.end method

.method private showSearchInActionBar(Landroid/view/MenuItem;)V
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 639
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v5}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 640
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 641
    invoke-virtual {v0, v8}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 642
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 643
    invoke-virtual {v0, v7}, Landroid/support/v7/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 645
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 646
    .local v1, "inflator":Landroid/view/LayoutInflater;
    const v5, 0x7f0300b3

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 647
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 648
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 649
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 650
    const v5, 0x7f0d0270

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .line 651
    .local v3, "textView":Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    new-instance v5, Lcom/tigo/mfsapp/maps/MapViewFragment$8;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$8;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v3, v5}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 662
    new-instance v5, Lcom/tigo/mfsapp/maps/MapViewFragment$9;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$9;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v3, v5}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setSelectionListener(Lcom/tigo/mfsapp/maps/SelectionListener;)V

    .line 677
    invoke-virtual {v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->requestFocus()Z

    .line 678
    new-instance v5, Lcom/tigo/mfsapp/maps/MapViewFragment$10;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$10;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v3, v5}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 694
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 695
    .local v2, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2, v3, v8}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 696
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 607
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 608
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->thereWasAnError:Z

    .line 609
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 600
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 601
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->thereWasAnError:Z

    .line 603
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 583
    const v1, 0x7f060161

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    if-eqz v1, :cond_0

    .line 588
    const v1, 0x7f06018a

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 589
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isAgent:Z

    if-eqz v1, :cond_0

    .line 591
    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    :cond_0
    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 613
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 614
    iget-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->closeAndGoHome()V

    .line 616
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->progressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_0
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 466
    return-void
.end method

.method public isOnePoint()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 755
    invoke-super {p0, p1, p2, p3}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 756
    packed-switch p1, :pswitch_data_0

    .line 763
    :goto_0
    return-void

    .line 758
    :pswitch_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->connectLocationAPI()V

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onAttach(Landroid/app/Activity;)V

    .line 147
    check-cast p1, Landroid/support/v7/app/ActionBarActivity;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->displayHomeAsUp:Z

    .line 148
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DETAIL_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 737
    :cond_0
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 738
    .local v1, "myLocation":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 739
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->onLocationChanged(Landroid/location/Location;)V

    .line 740
    :cond_1
    new-instance v0, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {v0}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    .line 741
    .local v0, "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 742
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    .line 743
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, v0, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 746
    .end local v0    # "locationRequest":Lcom/google/android/gms/location/LocationRequest;
    .end local v1    # "myLocation":Landroid/location/Location;
    :cond_2
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 768
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 751
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->checkLocationServices()V

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->setHasOptionsMenu(Z)V

    .line 123
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 623
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    const v1, 0x7f0e0003

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 626
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f0d013f

    const/4 v5, 0x0

    .line 153
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 155
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    .end local v1    # "parent":Landroid/view/ViewGroup;
    :cond_0
    const v2, 0x7f03006c

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    const v3, 0x7f0d018b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->progressView:Landroid/view/View;

    .line 165
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0d018a

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/maps/SupportMapFragment;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapFragment:Lcom/google/android/gms/maps/SupportMapFragment;

    .line 166
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    const v3, 0x7f0d018c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonAgents:Landroid/widget/ToggleButton;

    .line 167
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonAgents:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/tigo/mfsapp/maps/MapViewFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$1;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 176
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    const v3, 0x7f0d018d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonMerchants:Landroid/widget/ToggleButton;

    .line 177
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->mapButtonMerchants:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/tigo/mfsapp/maps/MapViewFragment$2;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/maps/MapViewFragment$2;-><init>(Lcom/tigo/mfsapp/maps/MapViewFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 185
    const-string v2, "YESICA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameters.getDefault().isHideFiltersInMaps() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isHideFiltersInMaps()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-boolean v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->isHideFiltersInMaps()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :goto_1
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    return-object v2

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/view/InflateException;
    invoke-virtual {v0}, Landroid/view/InflateException;->printStackTrace()V

    goto/16 :goto_0

    .line 190
    .end local v0    # "e":Landroid/view/InflateException;
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->view:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 403
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onDestroyView()V

    .line 405
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d018a

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/SupportMapFragment;

    .line 406
    .local v0, "f":Lcom/google/android/gms/maps/SupportMapFragment;
    if-eqz v0, :cond_0

    .line 407
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 409
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 141
    :goto_0
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onDetach()V

    .line 142
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 728
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 729
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->DEFAULT_ZOOM:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 730
    .local v0, "cameraUpdate":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 731
    sget-object v2, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v2, v3, p0}, Lcom/google/android/gms/location/FusedLocationProviderApi;->removeLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 732
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 630
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0d02bb

    if-ne v0, v1, :cond_0

    .line 632
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->showSearchInActionBar(Landroid/view/MenuItem;)V

    .line 635
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 504
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->searchData:Z

    .line 505
    instance-of v1, p2, Lcom/tigo/mfsapp/service/MarksResponse;

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 507
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->eventMarkerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    move-object v0, p2

    .line 508
    check-cast v0, Lcom/tigo/mfsapp/service/MarksResponse;

    .line 509
    .local v0, "res":Lcom/tigo/mfsapp/service/MarksResponse;
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->buildMarks(Lcom/tigo/mfsapp/service/MarksResponse;)V

    .line 510
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->hideProgressDialog()V

    .line 514
    .end local v0    # "res":Lcom/tigo/mfsapp/service/MarksResponse;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onResume()V

    .line 223
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->setupMap()V

    .line 225
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    if-eqz v1, :cond_1

    .line 226
    const v1, 0x7f06018a

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "title":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isAgent:Z

    if-eqz v1, :cond_0

    .line 229
    const v1, 0x7f0600bf

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 5

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->hideSearchInActionBar()V

    .line 716
    iget-boolean v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    if-nez v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    .line 718
    .local v0, "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 719
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, "jsonCameraPosition":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "CAMERA_POSITION"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 723
    .end local v0    # "cameraPosition":Lcom/google/android/gms/maps/model/CameraPosition;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "jsonCameraPosition":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 724
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 22
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 470
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v16

    .line 471
    .local v16, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 474
    .local v2, "latNE":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->northeast:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 475
    .local v6, "lngNE":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 476
    .local v4, "latSW":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/maps/Projection;->getVisibleRegion()Lcom/google/android/gms/maps/model/VisibleRegion;

    move-result-object v18

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/VisibleRegion;->latLngBounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/android/gms/maps/model/LatLngBounds;->southwest:Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    .line 477
    .local v8, "lngSW":D
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v18

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Point;->y:I

    .line 478
    .local v14, "screenHeight":I
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v18

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Point;->x:I

    .line 479
    .local v15, "screenWidth":I
    move/from16 v17, v15

    .line 480
    .local v17, "width":I
    if-ge v14, v15, :cond_0

    .line 481
    move/from16 v17, v14

    .line 483
    :cond_0
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/tigo/mfsapp/utils/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v13

    .line 484
    .local v13, "px":F
    const-wide v18, 0x3fb5a858793dd97fL    # 0.0846

    float-to-double v0, v13

    move-wide/from16 v20, v0

    mul-double v10, v18, v20

    .line 485
    .local v10, "mm":D
    new-instance v12, Lcom/tigo/mfsapp/model/maps/GetMarksParam;

    invoke-direct {v12}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;-><init>()V

    .line 487
    .local v12, "params":Lcom/tigo/mfsapp/model/maps/GetMarksParam;
    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->setLat(D)V

    .line 488
    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getNE()Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$NE;->setLng(D)V

    .line 489
    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;->setLat(D)V

    .line 490
    invoke-virtual {v12}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->getSW()Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Lcom/tigo/mfsapp/model/maps/GetMarksParam$SW;->setLng(D)V

    .line 491
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isAgent:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 492
    const-string v18, "agents"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->setType(Ljava/lang/String;)V

    .line 496
    :goto_0
    invoke-virtual {v12, v10, v11}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->setMinScreenSide(D)V

    .line 497
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Lcom/tigo/mfsapp/service/Connection;->requestGetMarks(Ljava/lang/String;Lcom/tigo/mfsapp/model/maps/GetMarksParam;)V

    .line 500
    .end local v2    # "latNE":D
    .end local v4    # "latSW":D
    .end local v6    # "lngNE":D
    .end local v8    # "lngSW":D
    .end local v10    # "mm":D
    .end local v12    # "params":Lcom/tigo/mfsapp/model/maps/GetMarksParam;
    .end local v13    # "px":F
    .end local v14    # "screenHeight":I
    .end local v15    # "screenWidth":I
    .end local v17    # "width":I
    :cond_1
    return-void

    .line 494
    .restart local v2    # "latNE":D
    .restart local v4    # "latSW":D
    .restart local v6    # "lngNE":D
    .restart local v8    # "lngSW":D
    .restart local v10    # "mm":D
    .restart local v12    # "params":Lcom/tigo/mfsapp/model/maps/GetMarksParam;
    .restart local v13    # "px":F
    .restart local v14    # "screenHeight":I
    .restart local v15    # "screenWidth":I
    .restart local v17    # "width":I
    :cond_2
    const-string v18, "merchants"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/tigo/mfsapp/model/maps/GetMarksParam;->setType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public setOnePoint(Z)V
    .locals 0
    .param p1, "isOnePoint"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->isOnePoint:Z

    .line 105
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 454
    return-void
.end method

.method protected updatePins()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->pins:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->clear()V

    .line 199
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/MapViewFragment;->pins:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/maps/MapViewFragment;->loadMarkers(Ljava/util/ArrayList;)V

    .line 201
    :cond_0
    return-void
.end method
