.class public Lcom/tigo/mfsapp/adapters/BanksAdapter;
.super Landroid/widget/BaseAdapter;
.source "BanksAdapter.java"

# interfaces
.implements Lcom/tigo/mfsapp/common/FilterableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;,
        Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static bankData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static changed:Ljava/lang/Boolean;

.field private static favorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static unfilteredBanksData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static unprocecedFavorites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bankTranferFragment:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

.field private final context:Landroid/content/Context;

.field private final filter:Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;

.field private final handler:Landroid/os/Handler;

.field private isFavorites:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unprocecedFavorites:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->favorites:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unfilteredBanksData:Ljava/util/ArrayList;

    .line 35
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unfilteredBanksData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->changed:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->handler:Landroid/os/Handler;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->isFavorites:Ljava/lang/Boolean;

    .line 43
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;Lcom/tigo/mfsapp/adapters/BanksAdapter$1;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->filter:Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;

    .line 48
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->context:Landroid/content/Context;

    .line 49
    return-void
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unprocecedFavorites:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    sput-object p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->changed:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/adapters/BanksAdapter;)Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankTranferFragment:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Ljava/util/ArrayList;

    .prologue
    .line 29
    sput-object p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unfilteredBanksData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tigo/mfsapp/adapters/BanksAdapter;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->isFavorites:Ljava/lang/Boolean;

    return-object p1
.end method

.method public static getFavorites()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->favorites:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public buildFavorites()V
    .locals 7

    .prologue
    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/tigo/mfsapp/adapters/BanksAdapter;->favorites:Ljava/util/ArrayList;

    .line 178
    sget-object v3, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unprocecedFavorites:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;

    .line 180
    .local v1, "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    sget-object v4, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unfilteredBanksData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 182
    .local v0, "bank":Lcom/tigo/mfsapp/adapters/BankInfo;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->getBID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 185
    .local v2, "newBank":Lcom/tigo/mfsapp/adapters/BankInfo;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tigo/mfsapp/adapters/BankInfo;->setDescription(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->getAmount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tigo/mfsapp/adapters/BankInfo;->setAmount(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;->getAccountNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/tigo/mfsapp/adapters/BankInfo;->setAccountNumber(Ljava/lang/String;)V

    .line 188
    sget-object v5, Lcom/tigo/mfsapp/adapters/BanksAdapter;->favorites:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    .end local v0    # "bank":Lcom/tigo/mfsapp/adapters/BankInfo;
    .end local v1    # "favorite":Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;
    .end local v2    # "newBank":Lcom/tigo/mfsapp/adapters/BankInfo;
    :cond_2
    return-void
.end method

.method public getCategoriesNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->filter:Lcom/tigo/mfsapp/adapters/BanksAdapter$SimpleFilter;

    return-object v0
.end method

.method public getFilterForCategory(ILjava/lang/String;)Landroid/widget/Filter;
    .locals 1
    .param p1, "filterPosition"    # I
    .param p2, "filterName"    # Ljava/lang/String;

    .prologue
    .line 209
    packed-switch p1, :pswitch_data_0

    .line 246
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$3;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$3;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    .line 288
    .local v0, "filter":Landroid/widget/Filter;
    :goto_0
    return-object v0

    .line 212
    .end local v0    # "filter":Landroid/widget/Filter;
    :pswitch_0
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$2;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    .line 243
    .restart local v0    # "filter":Landroid/widget/Filter;
    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public getFilterForShowAllCategory()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 383
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$4;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    return-object v0
.end method

.method public getFilterForShowFavoritesCategory()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 417
    new-instance v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$5;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$5;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 306
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 312
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0200a0

    const/4 v5, 0x0

    .line 72
    sget-object v3, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankData:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 74
    .local v0, "bankUnit":Lcom/tigo/mfsapp/adapters/BankInfo;
    if-nez p2, :cond_0

    .line 76
    iget-object v3, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->context:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 77
    .local v2, "li":Landroid/view/LayoutInflater;
    const v3, 0x7f03001d

    invoke-virtual {v2, v3, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;)V

    .line 79
    .local v1, "holder":Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;
    const v3, 0x7f0d0086

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 80
    const v3, 0x7f0d0085

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    .line 81
    const v3, 0x7f0d0088

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    .line 82
    const v3, 0x7f0d0087

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    .line 83
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    .end local v2    # "li":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->isFavorites:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    iget-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 92
    iget-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->desc:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_1
    iget-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getBN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Parameters;->getBaseBankLogosUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getLIN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    iget-object v4, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 103
    iget-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    new-instance v4, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;Lcom/tigo/mfsapp/adapters/BankInfo;Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-object p2

    .line 86
    .end local v1    # "holder":Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;
    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, v1, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public isChanged()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->changed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setFragment(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V
    .locals 0
    .param p1, "bankTranferFragment"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter;->bankTranferFragment:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    .line 461
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/adapters/BankInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/adapters/BankInfo;>;"
    sput-object p1, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unfilteredBanksData:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method public setUnprocecedFavorites(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "favorites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/banktranfer/BankTransferFavorite;>;"
    sput-object p1, Lcom/tigo/mfsapp/adapters/BanksAdapter;->unprocecedFavorites:Ljava/util/ArrayList;

    .line 59
    return-void
.end method
