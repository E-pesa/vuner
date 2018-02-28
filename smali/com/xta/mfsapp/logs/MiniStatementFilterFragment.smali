.class public Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "MiniStatementFilterFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private generate:Landroid/widget/Button;

.field private mDatePicker:Landroid/app/DatePickerDialog;

.field private selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

.field private selectedTransactionTypeId:Ljava/lang/String;

.field private selectedWalletId:Ljava/lang/String;

.field private textDateFrom:Lcom/tigo/mfsapp/components/CustomEditText;

.field private textDateTo:Lcom/tigo/mfsapp/components/CustomEditText;

.field private textTransactionPhoneNumber:Lcom/tigo/mfsapp/components/CustomEditText;

.field private transactionTypeSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Landroid/app/DatePickerDialog;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->mDatePicker:Landroid/app/DatePickerDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Landroid/app/DatePickerDialog;)Landroid/app/DatePickerDialog;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;
    .param p1, "x1"    # Landroid/app/DatePickerDialog;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->mDatePicker:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateFrom:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Landroid/widget/DatePicker;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;
    .param p1, "x1"    # Landroid/widget/DatePicker;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->hideYear(Landroid/widget/DatePicker;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateTo:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectedWalletId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectedTransactionTypeId:Ljava/lang/String;

    return-object p1
.end method

.method private hideYear(Landroid/widget/DatePicker;)V
    .locals 7
    .param p1, "picker"    # Landroid/widget/DatePicker;

    .prologue
    .line 187
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 188
    .local v0, "f":[Ljava/lang/reflect/Field;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 190
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mYearPicker"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mYearSpinner"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 192
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 194
    .local v2, "yearPicker":Ljava/lang/Object;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    check-cast v2, Landroid/view/View;

    .end local v2    # "yearPicker":Ljava/lang/Object;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "f":[Ljava/lang/reflect/Field;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 205
    :cond_2
    :goto_1
    return-void

    .line 200
    :catch_1
    move-exception v3

    goto :goto_1

    .line 198
    :catch_2
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 148
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 53
    const v3, 0x7f030070

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 55
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0d019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateFrom:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 56
    const v3, 0x7f0d019e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateTo:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 57
    const v3, 0x7f0d019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->transactionTypeSpinner:Landroid/widget/Spinner;

    .line 58
    const v3, 0x7f0d01a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/SelectWalletEdit;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    .line 59
    const v3, 0x7f0d01a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textTransactionPhoneNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 60
    const v3, 0x7f0d01a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->generate:Landroid/widget/Button;

    .line 62
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Parameters;->getTransactionsTypes()Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    .local v1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/TransactionType;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x1090006

    const v5, 0x1020014

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 65
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/TransactionType;>;"
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateFrom:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$1;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateTo:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    new-instance v4, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$2;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$2;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectWalletEdit:Lcom/tigo/mfsapp/components/SelectWalletEdit;

    new-instance v4, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$3;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$3;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/SelectWalletEdit;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->transactionTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->transactionTypeSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$4;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment$4;-><init>(Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 138
    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->setAutoShowProgressDialog(Z)V

    .line 139
    iget-object v3, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->generate:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->setSubmitButton(Landroid/view/View;)V

    .line 141
    return-object v2
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 0
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 175
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 153
    new-instance v3, Lcom/tigo/mfsapp/logs/MiniStatementFragment;

    invoke-direct {v3}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;-><init>()V

    .line 154
    .local v3, "fragment":Lcom/tigo/mfsapp/logs/MiniStatementFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateFrom:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "dateFrom":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textDateTo:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .local v2, "dateTo":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->textTransactionPhoneNumber:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "transactionPhoneNumber":Ljava/lang/String;
    const-string v5, "PARAM_DATE_FROM"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v5, "PARAM_DATE_TO"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v5, "PARAM_TRANSACTION_TYPE"

    iget-object v6, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectedTransactionTypeId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v5, "PARAM_WALLET"

    iget-object v6, p0, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->selectedWalletId:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v5, "PARAM_TRANSACTION_PHONE   "

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v0}, Lcom/tigo/mfsapp/logs/MiniStatementFragment;->initForm(Landroid/os/Bundle;)V

    .line 168
    invoke-virtual {p0}, Lcom/tigo/mfsapp/logs/MiniStatementFilterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    check-cast v5, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v5, v3}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 169
    return-void
.end method

.method protected onValidateData()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method
