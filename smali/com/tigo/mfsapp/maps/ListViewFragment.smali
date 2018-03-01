.class public Lcom/tigo/mfsapp/maps/ListViewFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "ListViewFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;
    }
.end annotation


# static fields
.field private static final PINS_KEY:Ljava/lang/String; = "PINS_KEY"


# instance fields
.field private adapter:Lcom/tigo/mfsapp/maps/MapListAdapter;

.field private currentPage:I

.field private googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private isAgent:Z

.field private listView:Landroid/widget/ListView;

.field private pin:Lcom/tigo/mfsapp/model/maps/Pin;

.field private pincode:Ljava/lang/String;

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

.field private progressView:Landroid/view/View;

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    .line 169
    return-void
.end method

.method static synthetic access$008(Lcom/tigo/mfsapp/maps/ListViewFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 35
    iget v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->currentPage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->currentPage:I

    return v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->submit()V

    return-void
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/maps/ListViewFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tigo/mfsapp/maps/ListViewFragment;Lcom/tigo/mfsapp/model/maps/Pin;)Lcom/tigo/mfsapp/model/maps/Pin;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/maps/Pin;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pin:Lcom/tigo/mfsapp/model/maps/Pin;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/maps/ListViewFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/maps/ListViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ListViewFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->selectItem()V

    return-void
.end method

.method private afterConnectLocationApi()V
    .locals 5

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->hideProgressDialog()V

    .line 113
    new-instance v0, Lcom/tigo/mfsapp/maps/MapListAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030092

    const v3, 0x7f0d021c

    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/tigo/mfsapp/maps/MapListAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->adapter:Lcom/tigo/mfsapp/maps/MapListAdapter;

    .line 114
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->adapter:Lcom/tigo/mfsapp/maps/MapListAdapter;

    new-instance v1, Lcom/tigo/mfsapp/maps/ListViewFragment$2;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/maps/ListViewFragment$2;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/maps/MapListAdapter;->setOnGetViewListener(Lcom/tigo/mfsapp/maps/MapListAdapter$OnGetViewListener;)V

    .line 123
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/tigo/mfsapp/maps/ListViewFragment$ListItemClickListener;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment;Lcom/tigo/mfsapp/maps/ListViewFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->adapter:Lcom/tigo/mfsapp/maps/MapListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->submit()V

    .line 127
    return-void
.end method

.method private appendPins(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 240
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/maps/Pin;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    .line 242
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/maps/Pin;

    .line 243
    .local v0, "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    .end local v0    # "pin":Lcom/tigo/mfsapp/model/maps/Pin;
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->adapter:Lcom/tigo/mfsapp/maps/MapListAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/maps/MapListAdapter;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method private connectLocationApi()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/location/LocationServices;->API:Lcom/google/android/gms/common/api/Api;

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    .line 107
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->googleApiClient:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    .line 108
    return-void
.end method

.method private selectItem()V
    .locals 7

    .prologue
    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pin:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v4, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "jsonPin":Ljava/lang/String;
    const-string v4, "DETAIL_OBJECT_KEY"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pin:Lcom/tigo/mfsapp/model/maps/Pin;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/maps/Pin;->getTypePOS()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "type":Ljava/lang/String;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string v5, "AGENT_KEY"

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 192
    const-string v3, "AGENT_KEY"

    .line 195
    :goto_1
    const-string v4, "TYPE_KEY"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    new-instance v1, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;-><init>()V

    .line 197
    .local v1, "fragment":Lcom/tigo/mfsapp/maps/MapPinDetailFragment;
    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/maps/MapPinDetailFragment;->setArguments(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/ListViewFragment;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 199
    return-void

    .line 191
    .end local v1    # "fragment":Lcom/tigo/mfsapp/maps/MapPinDetailFragment;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 193
    :cond_1
    const-string v3, "MERCHANT_KEY"

    goto :goto_1
.end method

.method private sortList()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    new-instance v1, Lcom/tigo/mfsapp/maps/ListViewFragment$3;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/maps/ListViewFragment$3;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 150
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 272
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->thereWasAnError:Z

    .line 274
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 265
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 266
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->thereWasAnError:Z

    .line 268
    :cond_0
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    const v1, 0x7f060262

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "title":Ljava/lang/String;
    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 279
    iget-boolean v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->closeAndGoHome()V

    .line 281
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 215
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    const-string v4, "ARG_PINCODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 80
    const-string v4, "ARG_PINCODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pincode:Ljava/lang/String;

    .line 84
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "MAP_PINS"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, "jsonPins":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 86
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 87
    .local v2, "gson":Lcom/google/gson/Gson;
    new-instance v4, Lcom/tigo/mfsapp/maps/ListViewFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/maps/ListViewFragment$1;-><init>(Lcom/tigo/mfsapp/maps/ListViewFragment;)V

    .line 88
    invoke-virtual {v4}, Lcom/tigo/mfsapp/maps/ListViewFragment$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 89
    .local v1, "arrayPinType":Ljava/lang/reflect/Type;
    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    .line 95
    .end local v1    # "arrayPinType":Ljava/lang/reflect/Type;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d0168

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->connectLocationApi()V

    .line 99
    return-void

    .line 82
    .end local v3    # "jsonPins":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pincode:Ljava/lang/String;

    goto :goto_0

    .line 92
    .restart local v3    # "jsonPins":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    goto :goto_1
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->afterConnectLocationApi()V

    .line 155
    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->afterConnectLocationApi()V

    .line 166
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 167
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 52
    const v2, 0x7f030069

    invoke-virtual {p1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0d0167

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->listView:Landroid/widget/ListView;

    .line 54
    const v2, 0x7f0d0144

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->progressView:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "arguments":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 57
    const-string v2, "TYPE_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
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

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "TYPE_KEY"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "AGENT_KEY"

    const-string v3, "TYPE_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->isAgent:Z

    .line 71
    :cond_0
    :goto_0
    return-object v1

    .line 65
    :cond_1
    const-string v2, "MERCHANT_KEY"

    const-string v3, "TYPE_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iput-boolean v6, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->isAgent:Z

    goto :goto_0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 227
    instance-of v1, p2, Lcom/tigo/mfsapp/service/PinListResponse;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 229
    check-cast v0, Lcom/tigo/mfsapp/service/PinListResponse;

    .line 232
    .local v0, "r":Lcom/tigo/mfsapp/service/PinListResponse;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PinListResponse;->getPinList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ListViewFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0168

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/PinListResponse;->getPinList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/maps/ListViewFragment;->appendPins(Ljava/util/ArrayList;)V

    .line 237
    .end local v0    # "r":Lcom/tigo/mfsapp/service/PinListResponse;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 285
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 286
    .local v0, "gson":Lcom/google/gson/Gson;
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v2, v4, [Lcom/tigo/mfsapp/model/maps/Pin;

    .line 287
    .local v2, "src":[Lcom/tigo/mfsapp/model/maps/Pin;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 288
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ListViewFragment;->pins:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/maps/Pin;

    aput-object v4, v2, v1

    .line 287
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "value":Ljava/lang/String;
    const-string v4, "PINS_KEY"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 295
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 219
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "token":Ljava/lang/String;
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 0

    .prologue
    .line 204
    return-void
.end method
