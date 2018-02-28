.class public Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;
.super Lcom/tigo/mfsapp/service/JsonResponse;
.source "InformationActivateNewUsersResponse.java"


# instance fields
.field private CrfNumber:Ljava/lang/String;

.field private DateOfBirth:Ljava/lang/String;

.field private IdNumber:Ljava/lang/String;

.field private IdType:Ljava/lang/String;

.field private Nationality:Ljava/lang/String;

.field private ResidentialAddress:Ljava/lang/String;

.field private SubscriberFirstName:Ljava/lang/String;

.field private SubscriberLastName:Ljava/lang/String;

.field private UserStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/tigo/mfsapp/service/JsonResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getCrfNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->CrfNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDateOfBirth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->DateOfBirth:Ljava/lang/String;

    return-object v0
.end method

.method public getIdNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->IdNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->IdType:Ljava/lang/String;

    return-object v0
.end method

.method public getNationality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->Nationality:Ljava/lang/String;

    return-object v0
.end method

.method public getResidentialAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->ResidentialAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->SubscriberFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->SubscriberLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->UserStatus:Ljava/lang/String;

    return-object v0
.end method

.method public processResponse(Lorg/json/JSONObject;Z)V
    .locals 2
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "isSucess"    # Z

    .prologue
    .line 23
    if-eqz p2, :cond_0

    .line 27
    :try_start_0
    const-string v1, "FirstName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->SubscriberFirstName:Ljava/lang/String;

    .line 28
    const-string v1, "LastName"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->SubscriberLastName:Ljava/lang/String;

    .line 30
    const-string v1, "IdType"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->IdType:Ljava/lang/String;

    .line 31
    const-string v1, "IdNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->IdNumber:Ljava/lang/String;

    .line 32
    const-string v1, "DateOfBirth"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->DateOfBirth:Ljava/lang/String;

    .line 33
    const-string v1, "Nationality"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->Nationality:Ljava/lang/String;

    .line 34
    const-string v1, "ResidencialAddress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->ResidentialAddress:Ljava/lang/String;

    .line 35
    const-string v1, "UserStatus"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->UserStatus:Ljava/lang/String;

    .line 36
    const-string v1, "CRFNumber"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/service/InformationActivateNewUsersResponse;->CrfNumber:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
