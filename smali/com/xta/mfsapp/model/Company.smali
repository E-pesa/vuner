.class public Lcom/tigo/mfsapp/model/Company;
.super Ljava/lang/Object;
.source "Company.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tigo/mfsapp/model/Company;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private AM_DEC:I

.field private AM_EDITABLE:Z

.field private AM_INT:I

.field private AM_POS:I

.field private AM_SRP:Ljava/lang/String;

.field private AR:Z

.field private BC_ENABLED:Z

.field private BC_LEN:I

.field private BC_POS:I

.field private BC_SRP:Ljava/lang/String;

.field private CD:Ljava/lang/String;

.field private CN:Ljava/lang/String;

.field private CatID:Ljava/lang/String;

.field private CoID:Ljava/lang/String;

.field private LN:Ljava/lang/String;

.field private RNHIN:Ljava/lang/String;

.field private RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

.field private VB_ENABLED:Z

.field private favoriteReference:Ljava/lang/String;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/tigo/mfsapp/model/Company$1;

    invoke-direct {v0}, Lcom/tigo/mfsapp/model/Company$1;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/model/Company;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CoID:Ljava/lang/String;

    .line 161
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    check-cast v0, [Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CatID:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->LN:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->RNHIN:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->AR:Z

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CN:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CD:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_ENABLED:Z

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_POS:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_LEN:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_SRP:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_POS:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_INT:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_DEC:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_SRP:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->VB_ENABLED:Z

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/tigo/mfsapp/model/Company;->AM_EDITABLE:Z

    .line 179
    return-void

    :cond_0
    move v0, v2

    .line 165
    goto :goto_0

    :cond_1
    move v0, v2

    .line 168
    goto :goto_1

    :cond_2
    move v0, v2

    .line 176
    goto :goto_2

    :cond_3
    move v1, v2

    .line 177
    goto :goto_3
.end method


# virtual methods
.method public addReferneceNumberKey(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    .locals 1
    .param p1, "referneceNumberKey"    # Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 153
    .local v0, "builder":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "json":Ljava/lang/String;
    const-class v2, Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public getAM_DEC()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_DEC:I

    return v0
.end method

.method public getAM_INT()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_INT:I

    return v0
.end method

.method public getAM_POS()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_POS:I

    return v0
.end method

.method public getAM_SRP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_SRP:Ljava/lang/String;

    return-object v0
.end method

.method public getAmountRequired()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->AR:Z

    return v0
.end method

.method public getBC_ENABLED()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_ENABLED:Z

    return v0
.end method

.method public getBC_LEN()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_LEN:I

    return v0
.end method

.method public getBC_POS()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_POS:I

    return v0
.end method

.method public getBC_SRP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_SRP:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CatID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CD:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CN:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->favoriteReference:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CoID:Ljava/lang/String;

    return-object v0
.end method

.method public getLogoName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->LN:Ljava/lang/String;

    return-object v0
.end method

.method public getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 3

    .prologue
    .line 45
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    iput-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v2, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    aput-object v1, v2, v0

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    return-object v1
.end method

.method public getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    iput-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    aput-object v1, v2, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 74
    iget-object v1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 76
    :goto_1
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getReferneceNumberHelpImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->RNHIN:Ljava/lang/String;

    return-object v0
.end method

.method public isAM_EDITABLE()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_EDITABLE:Z

    return v0
.end method

.method public isVB_ENABLED()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->VB_ENABLED:Z

    return v0
.end method

.method public setAM_DEC(I)V
    .locals 0
    .param p1, "aM_DEC"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/tigo/mfsapp/model/Company;->AM_DEC:I

    .line 299
    return-void
.end method

.method public setAM_EDITABLE(Z)V
    .locals 0
    .param p1, "AM_EDITABLE"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Company;->AM_EDITABLE:Z

    .line 325
    return-void
.end method

.method public setAM_INT(I)V
    .locals 0
    .param p1, "aM_INT"    # I

    .prologue
    .line 293
    iput p1, p0, Lcom/tigo/mfsapp/model/Company;->AM_INT:I

    .line 294
    return-void
.end method

.method public setAM_POS(I)V
    .locals 0
    .param p1, "aM_POS"    # I

    .prologue
    .line 288
    iput p1, p0, Lcom/tigo/mfsapp/model/Company;->AM_POS:I

    .line 289
    return-void
.end method

.method public setAM_SRP(Ljava/lang/String;)V
    .locals 0
    .param p1, "aM_SRP"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->AM_SRP:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setAmountRequired(Z)V
    .locals 0
    .param p1, "amountRequired"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Company;->AR:Z

    .line 127
    return-void
.end method

.method public setBC_ENABLED(Z)V
    .locals 0
    .param p1, "bC_ENABLED"    # Z

    .prologue
    .line 308
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Company;->BC_ENABLED:Z

    .line 309
    return-void
.end method

.method public setBC_LEN(I)V
    .locals 0
    .param p1, "bC_LEN"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/tigo/mfsapp/model/Company;->BC_LEN:I

    .line 279
    return-void
.end method

.method public setBC_POS(I)V
    .locals 0
    .param p1, "bC_POS"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/tigo/mfsapp/model/Company;->BC_POS:I

    .line 274
    return-void
.end method

.method public setBC_SRP(Ljava/lang/String;)V
    .locals 0
    .param p1, "bC_SRP"    # Ljava/lang/String;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->BC_SRP:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setCategoryId(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryId"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->CatID:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setCompanyDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "cD"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->CD:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setCompanyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "companyName"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->CN:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setFavoriteReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteReference"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->favoriteReference:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->CoID:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setLogoName(Ljava/lang/String;)V
    .locals 0
    .param p1, "logoName"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->LN:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setReferneceNumberHelpImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "referneceNumberHelpImageName"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->RNHIN:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setReferneceNumberKey([Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    .locals 0
    .param p1, "referneceNumberKey"    # [Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 82
    return-void
.end method

.method public setVB_ENABLED(Z)V
    .locals 0
    .param p1, "VB_ENABLED"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/tigo/mfsapp/model/Company;->VB_ENABLED:Z

    .line 317
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CoID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->RNK:[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 191
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CatID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->LN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->RNHIN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 194
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->AR:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->CD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_ENABLED:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 198
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_POS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_LEN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->BC_SRP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_POS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_INT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_DEC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_SRP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->VB_ENABLED:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 206
    iget-boolean v0, p0, Lcom/tigo/mfsapp/model/Company;->AM_EDITABLE:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 208
    return-void

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    :cond_1
    move v0, v2

    .line 197
    goto :goto_1

    :cond_2
    move v0, v2

    .line 205
    goto :goto_2

    :cond_3
    move v1, v2

    .line 206
    goto :goto_3
.end method
