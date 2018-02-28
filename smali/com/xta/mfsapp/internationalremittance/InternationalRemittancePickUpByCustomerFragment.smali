.class public Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "InternationalRemittancePickUpByCustomerFragment.java"


# instance fields
.field private confirm:Landroid/widget/Button;

.field private layoutDinamic:Landroid/widget/LinearLayout;

.field private remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

.field private subTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    return-void
.end method

.method private createSpinnerCountry()Landroid/widget/Spinner;
    .locals 6

    .prologue
    .line 100
    new-instance v2, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, "view":Landroid/widget/Spinner;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "Argentina"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    const-string v3, "Colombia"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v3, "Uruguay"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x109000a

    const v5, 0x1020014

    invoke-direct {v0, v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 107
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 108
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 110
    new-instance v3, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment$1;-><init>(Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 123
    return-object v2
.end method


# virtual methods
.method public getRemittancePartner()Lcom/tigo/mfsapp/model/RemittancePartner;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const v0, 0x7f060210

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 130
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 39
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->confirm:Landroid/widget/Button;

    .line 40
    const v1, 0x7f0d015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->subTitle:Landroid/widget/TextView;

    .line 41
    const v1, 0x7f0d015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    .line 42
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->confirm:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->setSubmitButton(Landroid/view/View;)V

    .line 43
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->subTitle:Landroid/widget/TextView;

    const v2, 0x7f060108

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 44
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 3
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 159
    instance-of v2, p2, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireResponse;

    if-eqz v2, :cond_0

    move-object v1, p2

    .line 161
    check-cast v1, Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireResponse;

    .line 163
    .local v1, "res":Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireResponse;
    new-instance v0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;-><init>()V

    .line 166
    .local v0, "fragment":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;
    const-string v2, "0"

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->setFee(Ljava/lang/Float;)V

    .line 167
    const v2, 0x7f060207

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->setTextTitle(I)V

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;->initForm(Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v2, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 172
    .end local v0    # "fragment":Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerTransactionFragment;
    .end local v1    # "res":Lcom/tigo/mfsapp/service/InternationalRemittancePickUpByCustomerEnquireResponse;
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 135
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, "token":Ljava/lang/String;
    const-string v2, ""

    .line 137
    .local v2, "pinCode":Ljava/lang/String;
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "paymentAggregatorId":Ljava/lang/String;
    const-string v3, ""

    .line 140
    .local v3, "remittIDNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 142
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v5, v5, Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "RemittIDNumber"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 146
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-virtual {p1, v4, v2, v1, v3}, Lcom/tigo/mfsapp/service/Connection;->requestInternationalRemittancePickUpByCustomerEnquire(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected onValidateData()Z
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 188
    const/4 v1, 0x0

    .line 194
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 52
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 57
    const-string v6, "Country"

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, "labelText":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->searchStringNameByStringId(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->searchStringNameByStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "FIELD_NAME":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .end local v0    # "FIELD_NAME":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->createSpinnerCountry()Landroid/widget/Spinner;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 55
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "labelText":Landroid/widget/TextView;
    :cond_1
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 72
    .restart local v2    # "labelText":Landroid/widget/TextView;
    new-instance v4, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 73
    .local v4, "text":Landroid/widget/EditText;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->searchStringNameByStringId(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/tigo/mfsapp/utils/Utils;->searchStringNameByStringId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .restart local v0    # "FIELD_NAME":Ljava/lang/String;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 89
    .end local v0    # "FIELD_NAME":Ljava/lang/String;
    :goto_2
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->layoutDinamic:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/RemittancePartner;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 96
    .end local v1    # "i":I
    .end local v2    # "labelText":Landroid/widget/TextView;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "text":Landroid/widget/EditText;
    :cond_3
    return-void
.end method

.method public setRemittancePartner(Lcom/tigo/mfsapp/model/RemittancePartner;)V
    .locals 0
    .param p1, "remittancePartner"    # Lcom/tigo/mfsapp/model/RemittancePartner;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/tigo/mfsapp/internationalremittance/InternationalRemittancePickUpByCustomerFragment;->remittancePartner:Lcom/tigo/mfsapp/model/RemittancePartner;

    .line 218
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method
