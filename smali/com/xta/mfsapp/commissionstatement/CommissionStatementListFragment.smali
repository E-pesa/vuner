.class public Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "CommissionStatementListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

.field private filtersView:Landroid/widget/Spinner;

.field private indexSelected:I

.field private info_text:Landroid/widget/TextView;

.field private listView:Landroid/widget/ListView;

.field private noElementsView:Landroid/widget/TextView;

.field operations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Commission;",
            ">;"
        }
    .end annotation
.end field

.field private progressView:Landroid/view/View;

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 137
    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->indexSelected:I

    return p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->submit()V

    return-void
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->selectItem()V

    return-void
.end method

.method private appendOperations(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Commission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Commission;>;"
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    .line 237
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 238
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Commission;

    .line 240
    .local v0, "commission":Lcom/tigo/mfsapp/model/Commission;
    iget-object v2, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v0    # "commission":Lcom/tigo/mfsapp/model/Commission;
    :cond_1
    return-void
.end method

.method private buildMonths()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 114
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 116
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v6, 0x19

    if-ge v2, v6, :cond_1

    .line 118
    const/4 v6, -0x1

    invoke-virtual {v0, v8, v6}, Ljava/util/Calendar;->add(II)V

    .line 119
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 120
    .local v5, "month":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v5}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getMonth(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "m":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 123
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 125
    :cond_0
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v4    # "m":Ljava/lang/String;
    .end local v5    # "month":I
    :cond_1
    return-object v3
.end method

.method private getMonth(I)Ljava/lang/String;
    .locals 4
    .param p1, "month"    # I

    .prologue
    .line 132
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getInstance()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "language"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "defaultLanguageCode":Ljava/lang/String;
    new-instance v1, Ljava/text/DateFormatSymbols;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    return-object v1
.end method

.method private selectItem()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 274
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->thereWasAnError:Z

    .line 276
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 266
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 267
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->thereWasAnError:Z

    .line 269
    :cond_0
    return-void
.end method

.method public getFiltersView()Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->filtersView:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "Commission_Statement"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const v0, 0x7f060112

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 282
    iget-boolean v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->closeAndGoHome()V

    .line 284
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 182
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 65
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    .line 70
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090009

    invoke-direct {v0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, "filtersAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f06010f

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 74
    invoke-direct {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->buildMonths()Ljava/util/ArrayList;

    move-result-object v2

    .line 75
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 77
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->noElementsView:Landroid/widget/TextView;

    const v4, 0x7f060111

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->info_text:Landroid/widget/TextView;

    const v4, 0x7f060110

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    new-instance v3, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->adapter:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

    .line 82
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->adapter:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

    iget-object v4, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->operations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;->setOperations(Ljava/util/ArrayList;)V

    .line 84
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->listView:Landroid/widget/ListView;

    new-instance v4, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$CommissionStatementItemClickListener;-><init>(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$1;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->listView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->adapter:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->filtersView:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 88
    iget-object v3, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->filtersView:Landroid/widget/Spinner;

    new-instance v4, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment$1;-><init>(Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    const v1, 0x7f030062

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->listView:Landroid/widget/ListView;

    .line 53
    const v1, 0x7f0d0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->progressView:Landroid/view/View;

    .line 54
    const v1, 0x7f0d0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->noElementsView:Landroid/widget/TextView;

    .line 55
    const v1, 0x7f0d0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->info_text:Landroid/widget/TextView;

    .line 56
    const v1, 0x7f0d00f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->filtersView:Landroid/widget/Spinner;

    .line 57
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 5
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->getFiltersView()Landroid/widget/Spinner;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 204
    instance-of v1, p2, Lcom/tigo/mfsapp/service/CommissionStatementListResponse;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 206
    check-cast v0, Lcom/tigo/mfsapp/service/CommissionStatementListResponse;

    .line 210
    .local v0, "listresponse":Lcom/tigo/mfsapp/service/CommissionStatementListResponse;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->hideProgressDialog()V

    .line 211
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/CommissionStatementListResponse;->getCommisionList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/CommissionStatementListResponse;->getCommisionList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 217
    invoke-virtual {v0}, Lcom/tigo/mfsapp/service/CommissionStatementListResponse;->getCommisionList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->appendOperations(Ljava/util/ArrayList;)V

    .line 219
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->adapter:Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementAdapter;->notifyDataSetChanged()V

    .line 230
    .end local v0    # "listresponse":Lcom/tigo/mfsapp/service/CommissionStatementListResponse;
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v0    # "listresponse":Lcom/tigo/mfsapp/service/CommissionStatementListResponse;
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->noElementsView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 163
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 289
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStop()V

    .line 291
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 187
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "token":Ljava/lang/String;
    iget v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->indexSelected:I

    if-nez v1, :cond_0

    .line 195
    :cond_0
    iget v1, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->indexSelected:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tigo/mfsapp/service/Connection;->requestCommissionStatementList(Ljava/lang/String;II)V

    .line 197
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tigo/mfsapp/commissionstatement/CommissionStatementListFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x1

    return v0
.end method
