.class public Lcom/tigo/mfsapp/adapters/ContactsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactsAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;,
        Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;
    }
.end annotation


# static fields
.field private static final PHOTO_CACHE_SIZE:I = 0x14

.field private static final PICTURE_DECODE_SIZE_DP:I = 0x23

.field private static filteredContactData:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private static final layout:I = 0x7f03001e

.field private static unfilteredContactData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Contact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final cacheBitmap:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final filter:Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;

.field private final imageSize:I

.field private final tigoEntities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;-><init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filter:Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;

    .line 50
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->cacheBitmap:Landroid/support/v4/util/LruCache;

    .line 56
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->context:Landroid/content/Context;

    .line 57
    const/high16 v0, 0x420c0000    # 35.0f

    invoke-static {v0, p1}, Lcom/tigo/mfsapp/utils/Utils;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->imageSize:I

    .line 58
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getTigoMSISDNs()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->tigoEntities:Ljava/util/HashSet;

    .line 59
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->unfilteredContactData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    sput-object p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->unfilteredContactData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 39
    sput-object p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filteredContactData:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static getUnfilteredContactData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->unfilteredContactData:Ljava/util/ArrayList;

    return-object v0
.end method

.method private openPhoto(Landroid/content/Context;J)Ljava/io/InputStream;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactId"    # J

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 63
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 64
    .local v6, "contactUri":Landroid/net/Uri;
    const-string v0, "photo"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, "photoUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "data15"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 66
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 84
    :goto_0
    return-object v3

    .line 72
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 75
    .local v8, "data":[B
    if-eqz v8, :cond_1

    .line 77
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8    # "data":[B
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filteredContactData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filteredContactData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filter:Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 182
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filteredContactData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->filteredContactData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 194
    int-to-long v0, p1

    return-wide v0
.end method

.method protected getRowLayoutId()I
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f03001e

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->context:Landroid/content/Context;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    invoke-virtual {p0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->getRowLayoutId()I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 98
    .local v10, "view":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p1}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/model/Contact;

    .line 100
    .local v1, "contact":Lcom/tigo/mfsapp/model/Contact;
    if-eqz v1, :cond_4

    .line 102
    const v11, 0x7f0d008a

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 103
    .local v4, "contactNameView":Landroid/widget/TextView;
    const-string v11, "PARAM_NAME"

    invoke-virtual {v1, v11}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    const v11, 0x7f0d008b

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 106
    .local v6, "contactPhoneView":Landroid/widget/TextView;
    const-string v11, "PARAM_PHONE"

    invoke-virtual {v1, v11}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const-string v11, "PARAM_ID"

    invoke-virtual {v1, v11}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    .local v3, "contactId":Ljava/lang/String;
    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->cacheBitmap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Contact;->getContactPhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 110
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 112
    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-direct {p0, v11, v12, v13}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->openPhoto(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v9

    .line 113
    .local v9, "inputStream":Ljava/io/InputStream;
    if-eqz v9, :cond_2

    .line 115
    if-nez v0, :cond_0

    .line 116
    iget v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->imageSize:I

    iget v12, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->imageSize:I

    iget v13, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->imageSize:I

    div-int/lit8 v13, v13, 0x2

    const/high16 v14, -0x1000000

    invoke-static {v9, v11, v12, v13, v14}, Lcom/tigo/mfsapp/utils/BitmapUtils;->getRoundedBitmap(Ljava/io/InputStream;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 117
    :cond_0
    if-eqz v0, :cond_1

    .line 118
    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->cacheBitmap:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Contact;->getContactPhone()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_1
    const-string v11, "DECODING IMAGE"

    invoke-static {v11}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 122
    :try_start_0
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 134
    const v11, 0x7f0d0089

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 136
    .local v7, "contactPicture":Landroid/widget/ImageView;
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    .end local v7    # "contactPicture":Landroid/widget/ImageView;
    :cond_3
    const v11, 0x7f0d008c

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "contactCheckView":Landroid/view/View;
    const-string v11, "PARAM_PHONE"

    invoke-virtual {v1, v11}, Lcom/tigo/mfsapp/model/Contact;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, "contactPhone":Ljava/lang/String;
    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->tigoEntities:Ljava/util/HashSet;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->tigoEntities:Ljava/util/HashSet;

    invoke-virtual {v11, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 142
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "contactCheckView":Landroid/view/View;
    .end local v3    # "contactId":Ljava/lang/String;
    .end local v4    # "contactNameView":Landroid/widget/TextView;
    .end local v5    # "contactPhone":Ljava/lang/String;
    .end local v6    # "contactPhoneView":Landroid/widget/TextView;
    :cond_4
    :goto_1
    return-object v10

    .line 123
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "contactId":Ljava/lang/String;
    .restart local v4    # "contactNameView":Landroid/widget/TextView;
    .restart local v6    # "contactPhoneView":Landroid/widget/TextView;
    .restart local v9    # "inputStream":Ljava/io/InputStream;
    :catch_0
    move-exception v8

    .line 125
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    :cond_5
    const-string v11, "FROM CACHE!"

    invoke-static {v11}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .restart local v2    # "contactCheckView":Landroid/view/View;
    .restart local v5    # "contactPhone":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x4

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public loadContacts(Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;

    .prologue
    .line 153
    new-instance v0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;-><init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;Lcom/tigo/mfsapp/adapters/ContactsAdapter$LoadContactsListener;)V

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/ContactUtils;->asyncGetContactData(Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;)V

    .line 165
    return-void
.end method
