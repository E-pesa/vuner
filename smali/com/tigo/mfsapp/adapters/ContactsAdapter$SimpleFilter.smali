.class Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "ContactsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/adapters/ContactsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/adapters/ContactsAdapter;
    .param p2, "x1"    # Lcom/tigo/mfsapp/adapters/ContactsAdapter$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;-><init>(Lcom/tigo/mfsapp/adapters/ContactsAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 220
    .local v11, "results":Landroid/widget/Filter$FilterResults;
    invoke-static {}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_0

    .line 222
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 223
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    .line 273
    :goto_0
    return-object v11

    .line 224
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 226
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v8

    .line 227
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    iput-object v8, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 228
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 231
    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 233
    .local v10, "prefixString":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$100()Ljava/util/ArrayList;

    move-result-object v13

    .line 234
    .local v13, "unfilteredValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Contact;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 236
    .local v1, "count":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 238
    .local v9, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_6

    .line 240
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 242
    .local v3, "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_5

    .line 244
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v2, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "PARAM_NAME"

    aput-object v18, v2, v17

    const/16 v17, 0x1

    const-string v18, "PARAM_PHONE"

    aput-object v18, v2, v17

    .line 246
    .local v2, "from":[Ljava/lang/String;
    array-length v7, v2

    .line 248
    .local v7, "len":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v7, :cond_5

    .line 250
    aget-object v17, v2, v5

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 252
    .local v12, "str":Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 253
    .local v16, "words":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v15, v0

    .line 255
    .local v15, "wordCount":I
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    if-ge v6, v15, :cond_3

    .line 257
    aget-object v14, v16, v6

    .line 259
    .local v14, "word":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 261
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .end local v14    # "word":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 255
    .restart local v14    # "word":Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 238
    .end local v2    # "from":[Ljava/lang/String;
    .end local v5    # "j":I
    .end local v6    # "k":I
    .end local v7    # "len":I
    .end local v12    # "str":Ljava/lang/String;
    .end local v14    # "word":Ljava/lang/String;
    .end local v15    # "wordCount":I
    .end local v16    # "words":[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 269
    .end local v3    # "h":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_6
    iput-object v9, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 270
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    iput v0, v11, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 280
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 281
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->notifyDataSetChanged()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/ContactsAdapter$SimpleFilter;->this$0:Lcom/tigo/mfsapp/adapters/ContactsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/ContactsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
