.class public Lcom/tigo/mfsapp/model/maps/Pin;
.super Ljava/lang/Object;
.source "Pin.java"


# instance fields
.field private Address:Ljava/lang/String;

.field private AgentCode:Ljava/lang/String;

.field private BusinessHours:Ljava/lang/String;

.field private City:Ljava/lang/String;

.field private ContactNumber:Ljava/lang/String;

.field private Description:Ljava/lang/String;

.field private IdPDV:Ljava/lang/String;

.field private Latitude:Ljava/lang/Double;

.field private Longitude:Ljava/lang/Double;

.field private NamePOS:Ljava/lang/String;

.field private Neighborhood:Ljava/lang/String;

.field private Owner:Ljava/lang/String;

.field private State:Ljava/lang/String;

.field private Status:Ljava/lang/String;

.field private TypePOS:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Address:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->AgentCode:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessHours()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->BusinessHours:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->City:Ljava/lang/String;

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->ContactNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Description:Ljava/lang/String;

    return-object v0
.end method

.method public getFormattedDistanceFromPoint(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
    .locals 7
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/tigo/mfsapp/model/maps/Pin;->getRealDistance(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Float;

    move-result-object v0

    .line 143
    .local v0, "distance":Ljava/lang/Float;
    if-eqz v0, :cond_1

    .line 145
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const v3, 0x461c3c00    # 9999.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 146
    const-string v2, "%.0f mts."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :goto_0
    return-object v2

    .line 148
    :cond_0
    const-string v2, "%.1f kms."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getIdPDV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->IdPDV:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Latitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Longitude:Ljava/lang/Double;

    return-object v0
.end method

.method public getNamePOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->NamePOS:Ljava/lang/String;

    return-object v0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Neighborhood:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Owner:Ljava/lang/String;

    return-object v0
.end method

.method public getRealDistance(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/Float;
    .locals 6
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    .line 124
    sget-object v3, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    invoke-interface {v3, p1}, Lcom/google/android/gms/location/FusedLocationProviderApi;->getLastLocation(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/location/Location;

    move-result-object v1

    .line 126
    .local v1, "myLocation":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 127
    new-instance v2, Landroid/location/Location;

    const-string v3, "Pin"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "pinLocation":Landroid/location/Location;
    iget-object v3, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Latitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 129
    iget-object v3, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Longitude:Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 131
    invoke-virtual {v1, v2}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 133
    .local v0, "distance":F
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 137
    .end local v0    # "distance":F
    .end local v1    # "myLocation":Landroid/location/Location;
    .end local v2    # "pinLocation":Landroid/location/Location;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->State:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Status:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePOS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tigo/mfsapp/model/maps/Pin;->TypePOS:Ljava/lang/String;

    return-object v0
.end method

.method public setAgentCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "agentCode"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->AgentCode:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setBusinessHours(Ljava/lang/String;)V
    .locals 0
    .param p1, "businessHours"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->BusinessHours:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setContactNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "contactNumber"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->ContactNumber:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Description:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setIdPDV(Ljava/lang/String;)V
    .locals 0
    .param p1, "idPDV"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->IdPDV:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setLatitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/Double;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Latitude:Ljava/lang/Double;

    .line 84
    return-void
.end method

.method public setLongitude(Ljava/lang/Double;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/Double;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Longitude:Ljava/lang/Double;

    .line 80
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "namePOS"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->NamePOS:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setNeighborhood(Ljava/lang/String;)V
    .locals 0
    .param p1, "neighborhood"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Neighborhood:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Owner:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->Status:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "typePOS"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/tigo/mfsapp/model/maps/Pin;->TypePOS:Ljava/lang/String;

    .line 88
    return-void
.end method
