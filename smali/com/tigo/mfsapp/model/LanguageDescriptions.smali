.class public Lcom/tigo/mfsapp/model/LanguageDescriptions;
.super Ljava/lang/Object;
.source "LanguageDescriptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tigo/mfsapp/model/LanguageDescriptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IdType:Ljava/lang/String;

.field private final ay:Ljava/lang/String;

.field private final en:Ljava/lang/String;

.field private final en_TZ:Ljava/lang/String;

.field private final es_BO:Ljava/lang/String;

.field private final es_HN:Ljava/lang/String;

.field private final es_SV:Ljava/lang/String;

.field private final qu:Ljava/lang/String;

.field private final sw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/tigo/mfsapp/model/LanguageDescriptions$1;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/LanguageDescriptions$1;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en_TZ:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->sw:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_SV:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_HN:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_BO:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->ay:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->qu:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->IdType:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultDescription()Ljava/lang/String;
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "langCode":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 117
    const-string v0, "en"

    .line 119
    :cond_0
    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "defaultString"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "langCode":Ljava/lang/String;
    const-string v1, "en_TZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en_TZ:Ljava/lang/String;

    .line 109
    .end local p1    # "defaultString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 86
    .restart local p1    # "defaultString":Ljava/lang/String;
    :cond_1
    const-string v1, "sw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->sw:Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_2
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_3
    const-string v1, "es_SV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_SV:Ljava/lang/String;

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "es_HN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 97
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_HN:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_5
    const-string v1, "es_BO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 100
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_BO:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_6
    const-string v1, "ay"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 103
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->ay:Ljava/lang/String;

    goto :goto_0

    .line 104
    :cond_7
    const-string v1, "qu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->qu:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->IdType:Ljava/lang/String;

    return-object v0
.end method

.method public setIdType(Ljava/lang/String;)V
    .locals 0
    .param p1, "idType"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->IdType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/tigo/mfsapp/model/LanguageDescriptions;->getDefaultDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en_TZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->sw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->en:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_SV:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_HN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->es_BO:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->ay:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->qu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/tigo/mfsapp/model/LanguageDescriptions;->IdType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return-void
.end method
