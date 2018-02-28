.class public Lcom/tigo/mfsapp/components/SelectWalletEdit;
.super Landroid/widget/FrameLayout;
.source "SelectWalletEdit.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/Wallet;",
            ">;"
        }
    .end annotation
.end field

.field private onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private walletsView:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->init()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/components/SelectWalletEdit;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/components/SelectWalletEdit;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method


# virtual methods
.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public init()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 39
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0300b6

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d0276

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 41
    const v4, 0x7f0d0277

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->walletsView:Landroid/widget/Spinner;

    .line 42
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 44
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 46
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->setVisibility(I)V

    .line 95
    :cond_0
    :goto_0
    invoke-virtual {p0, v8, v8, v8, v8}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->setPadding(IIII)V

    .line 96
    return-void

    .line 50
    :cond_1
    const/4 v0, -0x1

    .line 51
    .local v0, "selection":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v3, "wallets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Wallet;>;"
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->getWallets()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/model/Wallet;

    .line 54
    .local v2, "wallet":Lcom/tigo/mfsapp/model/Wallet;
    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 56
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    if-ne v2, v5, :cond_2

    .line 59
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    goto :goto_1

    .line 63
    .end local v2    # "wallet":Lcom/tigo/mfsapp/model/Wallet;
    :cond_3
    new-instance v4, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x109000a

    const v7, 0x1020014

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->adapter:Landroid/widget/ArrayAdapter;

    .line 65
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->walletsView:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 66
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->walletsView:Landroid/widget/Spinner;

    new-instance v5, Lcom/tigo/mfsapp/components/SelectWalletEdit$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/components/SelectWalletEdit$1;-><init>(Lcom/tigo/mfsapp/components/SelectWalletEdit;)V

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 91
    const/4 v4, -0x1

    if-le v0, v4, :cond_0

    .line 92
    iget-object v4, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->walletsView:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "onItemSelectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectWalletEdit;->onItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 112
    return-void
.end method
