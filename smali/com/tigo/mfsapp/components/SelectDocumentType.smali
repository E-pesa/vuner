.class public Lcom/tigo/mfsapp/components/SelectDocumentType;
.super Landroid/widget/FrameLayout;
.source "SelectDocumentType.java"


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;"
        }
    .end annotation
.end field

.field private docsView:Landroid/widget/Spinner;

.field private label:Landroid/widget/TextView;

.field private list:Ljava/util/ArrayList;
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
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->init()V

    .line 66
    return-void
.end method


# virtual methods
.method public getAdapter()Landroid/widget/ArrayAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method public getDocsView()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->label:Landroid/widget/TextView;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->list:Ljava/util/ArrayList;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b5

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d0273

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 45
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 46
    const v2, 0x7f0d0275

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/components/SelectDocumentType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    .line 47
    const v2, 0x7f0d0274

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/components/SelectDocumentType;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->label:Landroid/widget/TextView;

    .line 48
    const/4 v0, -0x1

    .line 50
    .local v0, "selection":I
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x109000a

    const v5, 0x1020014

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->adapter:Landroid/widget/ArrayAdapter;

    .line 52
    iget-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    iget-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 59
    :cond_0
    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setPadding(IIII)V

    .line 60
    return-void
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->adapter:Landroid/widget/ArrayAdapter;

    .line 100
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setDocsView(Landroid/widget/Spinner;)V
    .locals 0
    .param p1, "docsView"    # Landroid/widget/Spinner;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    .line 114
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->label:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/ReferenceNumberKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->list:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .param p1, "onItemSelectedListener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tigo/mfsapp/components/SelectDocumentType;->docsView:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 76
    return-void
.end method
