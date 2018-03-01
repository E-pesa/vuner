.class public Lcom/tigo/mfsapp/utils/ContactUtils;
.super Ljava/lang/Object;
.source "ContactUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;
    }
.end annotation


# static fields
.field public static final PARAM_ID:Ljava/lang/String; = "PARAM_ID"

.field public static final PARAM_NAME:Ljava/lang/String; = "PARAM_NAME"

.field public static final PARAM_PHONE:Ljava/lang/String; = "PARAM_PHONE"

.field public static final PARAM_PHONE_TYPE:Ljava/lang/String; = "PARAM_PHONE_TYPE"

.field public static final PARAM_PHONE_TYPE_HOME:Ljava/lang/String; = "PARAM_PHONE_TYPE_HOME"

.field public static final PARAM_PHONE_TYPE_MOBILE:Ljava/lang/String; = "PARAM_PHONE_TYPE_MOBILE"

.field public static final PARAM_PHONE_TYPE_OTHER:Ljava/lang/String; = "PARAM_PHONE_TYPE_OTHER"

.field public static final PARAM_PHONE_TYPE_WORK:Ljava/lang/String; = "PARAM_PHONE_TYPE_WORK"

.field private static executor:Ljava/util/concurrent/ExecutorService;

.field private static handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tigo/mfsapp/utils/ContactUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/utils/ContactUtils;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method static synthetic access$000()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/tigo/mfsapp/utils/ContactUtils;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static asyncGetContactData(Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;

    .prologue
    .line 118
    invoke-static {}, Lcom/tigo/mfsapp/utils/Utils;->isUIThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can\'t call asyncGetContactData from a non-UI Thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_0
    sget-object v0, Lcom/tigo/mfsapp/utils/ContactUtils;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tigo/mfsapp/utils/ContactUtils$1;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/utils/ContactUtils$1;-><init>(Lcom/tigo/mfsapp/utils/ContactUtils$GetContactsListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 140
    return-void
.end method

.method public static cleanChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phone"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v3, "01234567890+"

    .line 98
    .local v3, "validChars":Ljava/lang/String;
    const-string v2, ""

    .line 100
    .local v2, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 102
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const-string v4, "01234567890+"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 104
    const-string v4, "01234567890+"

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 100
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    .end local v1    # "j":I
    :cond_2
    return-object v2
.end method

.method public static getContactData()Ljava/util/ArrayList;
    .locals 22
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
    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 36
    .local v20, "startTime":J
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 38
    .local v13, "loadedContacts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v11

    .line 39
    .local v11, "context":Landroid/content/Context;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v17, "peopleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "display_name"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "contact_id"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "data2"

    aput-object v3, v4, v2

    .line 42
    .local v4, "fields":[Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "lower(display_name)"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 44
    .local v16, "people":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const-string v2, "display_name"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    .local v9, "contactName":Ljava/lang/String;
    const-string v2, "contact_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "contactId":Ljava/lang/String;
    const-string v2, "data1"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/ContactUtils;->cleanChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 49
    .local v18, "phoneNumber":Ljava/lang/String;
    const-string v2, "data2"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, "numberType":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, "contactUniqueIndex":Ljava/lang/String;
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    new-instance v14, Lcom/tigo/mfsapp/model/Contact;

    invoke-direct {v14}, Lcom/tigo/mfsapp/model/Contact;-><init>()V

    .line 55
    .local v14, "namePhoneType":Lcom/tigo/mfsapp/model/Contact;
    const-string v2, "PARAM_ID"

    invoke-virtual {v14, v2, v8}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v2, "PARAM_NAME"

    invoke-virtual {v14, v2, v9}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v2, "PARAM_PHONE"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 73
    const-string v2, "PARAM_PHONE_TYPE"

    const-string v3, "PARAM_PHONE_TYPE_OTHER"

    invoke-virtual {v14, v2, v3}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 64
    :pswitch_0
    :try_start_1
    const-string v2, "PARAM_PHONE_TYPE"

    const-string v3, "PARAM_PHONE_TYPE_WORK"

    invoke-virtual {v14, v2, v3}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v12

    .line 78
    .local v12, "ex":Ljava/lang/NumberFormatException;
    const-string v2, "PARAM_PHONE_TYPE"

    const-string v3, "PARAM_PHONE_TYPE_OTHER"

    invoke-virtual {v14, v2, v3}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 67
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    :pswitch_1
    :try_start_2
    const-string v2, "PARAM_PHONE_TYPE"

    const-string v3, "PARAM_PHONE_TYPE_HOME"

    invoke-virtual {v14, v2, v3}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 70
    :pswitch_2
    const-string v2, "PARAM_PHONE_TYPE"

    const-string v3, "PARAM_PHONE_TYPE_MOBILE"

    invoke-virtual {v14, v2, v3}, Lcom/tigo/mfsapp/model/Contact;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 86
    .end local v8    # "contactId":Ljava/lang/String;
    .end local v9    # "contactName":Ljava/lang/String;
    .end local v10    # "contactUniqueIndex":Ljava/lang/String;
    .end local v14    # "namePhoneType":Lcom/tigo/mfsapp/model/Contact;
    .end local v15    # "numberType":Ljava/lang/String;
    .end local v18    # "phoneNumber":Ljava/lang/String;
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching Contacts took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millisecs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->profile(Ljava/lang/String;)V

    .line 92
    return-object v17

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
