.class public Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BillPaymentEnterAmount.java"

# interfaces
.implements Lcom/tigo/mfsapp/scancode/ScanCodeListener;


# static fields
.field public static final NUMBER_TYPE:Ljava/lang/String; = "Number"

.field public static final PARAM_REF_NUMBER:Ljava/lang/String; = "PARAM_REF_NUMBER"

.field public static final PARAM_SELECTED_AMOUNT:Ljava/lang/String; = "PARAM_SELECTED_AMOUNT"

.field public static final PARAM_SELECTED_COMPANY:Ljava/lang/String; = "PARAM_SELECTED_COMPANY"

.field public static final PARAM_SELECTED_COMPANY_JSON:Ljava/lang/String; = "PARAM_SELECTED_COMPANY_JSON"

.field public static final PARAM_SELECTED_TYPE_REF_NUMBER:Ljava/lang/String; = "PARAM_SELECTED_TYPE_REF_NUMBER"

.field public static final TEXT_TYPE:Ljava/lang/String; = "Text"


# instance fields
.field private amount:Ljava/lang/String;

.field private bills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;"
        }
    .end annotation
.end field

.field private button_scanCode:Landroid/widget/Button;

.field private company:Lcom/tigo/mfsapp/model/Company;

.field private companyDescView:Landroid/widget/TextView;

.field private companyLogoView:Landroid/widget/ImageView;

.field private companyNameView:Landroid/widget/TextView;

.field private descriptionView:Landroid/widget/TextView;

.field private docType:Lcom/tigo/mfsapp/components/SelectDocumentType;

.field private editText1:Lcom/tigo/mfsapp/components/CustomEditText;

.field private editText2:Lcom/tigo/mfsapp/components/CustomEditText;

.field private howToFindView:Landroid/view/View;

.field private idNumberView:Landroid/widget/TextView;

.field private languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

.field private refNumber:Ljava/lang/String;

.field private refTypeNumber:Ljava/lang/String;

.field private shouldShowAmountField:Z

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textLabelDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/Company;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getFragmentScanCode()V

    return-void
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Lcom/tigo/mfsapp/model/ReferenceNumberKey;)Lcom/tigo/mfsapp/model/ReferenceNumberKey;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->controlTypeNumeric(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Lcom/tigo/mfsapp/components/CustomEditText;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->validateMaxValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->validateMinValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->buildEditTextRefNumber()V

    return-void
.end method

.method private buildEditTextRefNumber()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 235
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v2, :cond_2

    .line 236
    const-string v2, "Text"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 243
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->maxLengthValue()I

    move-result v1

    .line 245
    .local v1, "maxLength":I
    if-eqz v1, :cond_1

    .line 246
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 247
    .local v0, "fArray":[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 248
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 252
    .end local v0    # "fArray":[Landroid/text/InputFilter;
    .end local v1    # "maxLength":I
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$3;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 279
    :cond_2
    return-void

    .line 239
    :cond_3
    const-string v2, "Number"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 241
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "0123456789"

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto :goto_0
.end method

.method private controlTypeNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 314
    const-string v2, "([0-9]*)\\.[0]"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 316
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 317
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private evaluateAmountConfig()Z
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getAmountRequired()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->isAM_EDITABLE()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " VB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->isVB_ENABLED()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Company;->isVB_ENABLED()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFragmentScanCode()V
    .locals 2

    .prologue
    .line 625
    new-instance v0, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;-><init>()V

    .line 626
    .local v0, "fragment":Lcom/tigo/mfsapp/scancode/ScanCodeFragment;
    invoke-virtual {v0, p0}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->setListener(Lcom/tigo/mfsapp/scancode/ScanCodeListener;)V

    .line 627
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/scancode/ScanCodeFragment;->setCompany(Lcom/tigo/mfsapp/model/Company;)V

    .line 628
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 630
    return-void
.end method

.method private goToBillsSelectionList()V
    .locals 2

    .prologue
    .line 463
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 465
    new-instance v0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;-><init>()V

    .line 466
    .local v0, "fragment":Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setCompany(Lcom/tigo/mfsapp/model/Company;)V

    .line 467
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setBills(Ljava/util/ArrayList;)V

    .line 468
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setFavoriteRefNumber(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setFavoriteTypeRefNumber(Ljava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setLanguageDescriptor(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V

    .line 472
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 474
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    .line 476
    .end local v0    # "fragment":Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
    :cond_0
    return-void
.end method

.method private goToConfirmationViewNoBills(Landroid/os/Bundle;Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "feeResponse"    # Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    .prologue
    .line 431
    const-string v4, "PARAM_SELECTED_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-boolean v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    if-eqz v4, :cond_0

    .line 433
    const-string v4, "PARAM_SELECTED_AMOUNT"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    new-instance v2, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-direct {v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;-><init>()V

    .line 439
    .local v2, "billPaymentConfirm":Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
    invoke-virtual {v2, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 441
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    .local v0, "amount":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 450
    .local v1, "amountv":Ljava/lang/Float;
    :goto_0
    invoke-virtual {v2, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 454
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;->getFee()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 456
    const v4, 0x7f060035

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTextTitle(I)V

    .line 457
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 458
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v4, v2}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 460
    return-void

    .line 446
    .end local v1    # "amountv":Ljava/lang/Float;
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .restart local v1    # "amountv":Ljava/lang/Float;
    goto :goto_0
.end method

.method private goToConfirmationViewWithBill(Landroid/os/Bundle;Lcom/tigo/mfsapp/model/Bill;Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "bill"    # Lcom/tigo/mfsapp/model/Bill;
    .param p3, "feeResponse"    # Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    .prologue
    .line 415
    const-string v1, "PARAM_SELECTED_REFERENCE_NUMBER"

    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/Bill;->getReferenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v0, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;-><init>()V

    .line 418
    .local v0, "billPaymentConfirm":Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
    invoke-virtual {v0, p2}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setBill(Lcom/tigo/mfsapp/model/Bill;)V

    .line 420
    invoke-virtual {p2}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 422
    invoke-virtual {p3}, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;->getFee()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 423
    invoke-virtual {v0, p1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 424
    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTextTitle(I)V

    .line 425
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTransactionDescription(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 428
    return-void
.end method

.method private maxLengthValue()I
    .locals 2

    .prologue
    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "maxLength":I
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 545
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 548
    :cond_0
    return v0
.end method

.method private setDocumentType(Lcom/tigo/mfsapp/components/SelectDocumentType;)V
    .locals 6
    .param p1, "view"    # Lcom/tigo/mfsapp/components/SelectDocumentType;

    .prologue
    .line 573
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 576
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 578
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x109000a

    const v5, 0x1020014

    invoke-direct {v0, v3, v4, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 579
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    invoke-virtual {p1, v0}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setAdapter(Landroid/widget/ArrayAdapter;)V

    .line 580
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 582
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->docType:Lcom/tigo/mfsapp/components/SelectDocumentType;

    new-instance v4, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;

    invoke-direct {v4, p0, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$4;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 599
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refTypeNumber:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 600
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 601
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refTypeNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 602
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->docType:Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/SelectDocumentType;->getDocsView()Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 600
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/ReferenceNumberKey;>;"
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/tigo/mfsapp/components/SelectDocumentType;->setVisibility(I)V

    .line 622
    :cond_3
    return-void
.end method

.method private validateFieldValues(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v8, 0x7f06016a

    const/4 v7, 0x0

    const v5, 0x7f06003e

    const v6, 0x7f02011f

    const/4 v2, 0x0

    .line 284
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/tigo/mfsapp/components/CustomEditText;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 285
    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    .line 286
    .local v1, "tx":Lcom/tigo/mfsapp/components/CustomEditText;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "s":Ljava/lang/String;
    const-string v3, "Number"

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->controlTypeNumeric(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 290
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f060175

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 292
    invoke-virtual {v1, v8, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 309
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "tx":Lcom/tigo/mfsapp/components/CustomEditText;
    :cond_0
    :goto_0
    return v2

    .line 295
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v1    # "tx":Lcom/tigo/mfsapp/components/CustomEditText;
    :cond_1
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->validateMaxValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06016c

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 298
    invoke-virtual {v1, v8, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 300
    :cond_2
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->validateMinValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f06016d

    invoke-virtual {p0, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v7}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->showOkDialog(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 304
    const v3, 0x7f06016d

    invoke-virtual {v1, v3, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    goto :goto_0

    .line 307
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateMaxValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "maxLength":I
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMaxLength()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 536
    :cond_0
    :goto_0
    return v1

    .line 531
    :cond_1
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->maxLengthValue()I

    move-result v0

    .line 533
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    .line 534
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private validateMinValue(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "minLength":I
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMinLength()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return v1

    .line 556
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMinLength()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMinLength()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 557
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getMinLength()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 559
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 560
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initForm(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const-string v0, "PARAM_SELECTED_COMPANY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Company;

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    .line 82
    const-string v0, "PARAM_REF_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string v0, "PARAM_REF_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    .line 85
    :cond_0
    const-string v0, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    .line 88
    :cond_1
    const-string v0, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const-string v0, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refTypeNumber:Ljava/lang/String;

    .line 91
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v11, 0x7f0200a0

    const/4 v5, 0x1

    const/4 v10, 0x0

    const v9, 0x7f060062

    const/16 v8, 0x8

    .line 95
    const v4, 0x7f030026

    invoke-virtual {p1, v4, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 97
    .local v3, "view":Landroid/view/View;
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->evaluateAmountConfig()Z

    move-result v4

    iput-boolean v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    .line 99
    if-eqz p3, :cond_3

    .line 100
    const-string v4, "PARAM_SELECTED_COMPANY_JSON"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 102
    .local v2, "s":Lcom/google/gson/Gson;
    const-string v4, "PARAM_SELECTED_COMPANY_JSON"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "json":Ljava/lang/String;
    const-class v4, Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/model/Company;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    .line 106
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "s":Lcom/google/gson/Gson;
    :cond_0
    const-string v4, "PARAM_REF_NUMBER"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    const-string v4, "PARAM_REF_NUMBER"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    .line 109
    :cond_1
    const-string v4, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    const-string v4, "PARAM_SELECTED_AMOUNT"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    .line 112
    :cond_2
    const-string v4, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 113
    const-string v4, "PARAM_SELECTED_TYPE_REF_NUMBER"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refTypeNumber:Ljava/lang/String;

    .line 116
    :cond_3
    const v4, 0x7f0d00b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyLogoView:Landroid/widget/ImageView;

    .line 117
    const v4, 0x7f0d00b6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyNameView:Landroid/widget/TextView;

    .line 118
    const v4, 0x7f0d00b7

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyDescView:Landroid/widget/TextView;

    .line 119
    const v4, 0x7f0d00b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    .line 120
    const v4, 0x7f0d00ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->howToFindView:Landroid/view/View;

    .line 121
    const v4, 0x7f0d00b3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->descriptionView:Landroid/widget/TextView;

    .line 122
    const v4, 0x7f0d00b8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/components/SelectDocumentType;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->docType:Lcom/tigo/mfsapp/components/SelectDocumentType;

    .line 123
    const v4, 0x7f0d00be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->button_scanCode:Landroid/widget/Button;

    .line 125
    const v4, 0x7f0d00a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textLabelDescription:Landroid/widget/TextView;

    .line 126
    const v4, 0x7f0d0062

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 128
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShouldAskDescriptionInTxs()Z

    move-result v4

    if-nez v4, :cond_4

    .line 129
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textLabelDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 133
    :cond_4
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 134
    const v4, 0x7f06007b

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Parameters;->getBasePaymentLogosUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Company;->getLogoName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyLogoView:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 159
    const v4, 0x7f0d00bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 160
    const v4, 0x7f0d00bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 162
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyNameView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 164
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f060126

    invoke-virtual {p0, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v6}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v6

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getDefaultDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setHint(Ljava/lang/String;)V

    .line 170
    :goto_1
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->companyDescView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 173
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 175
    iget-boolean v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    if-nez v4, :cond_5

    .line 176
    const v4, 0x7f0d00bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8}, Lcom/tigo/mfsapp/components/CustomEditText;->setVisibility(I)V

    .line 180
    :cond_5
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getReferneceDescription()Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 181
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->buildEditTextRefNumber()V

    .line 183
    const-string v4, ""

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Company;->getReferneceNumberHelpImageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 184
    const v4, 0x7f0d00ba

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_6
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->howToFindView:Landroid/view/View;

    new-instance v5, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$1;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->docType:Lcom/tigo/mfsapp/components/SelectDocumentType;

    invoke-direct {p0, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->setDocumentType(Lcom/tigo/mfsapp/components/SelectDocumentType;)V

    .line 204
    const v4, 0x7f0d00bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->setSubmitButton(Landroid/view/View;)V

    .line 206
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isLoginRequired()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowScanBarCodeInBillPay()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getBC_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 207
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->button_scanCode:Landroid/widget/Button;

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 208
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->button_scanCode:Landroid/widget/Button;

    new-instance v5, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$2;

    invoke-direct {v5, p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount$2;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_7
    return-object v3

    .line 137
    .end local v0    # "description":Ljava/lang/String;
    :cond_8
    const v4, 0x7f06007b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {p0, v4, v5}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .restart local v0    # "description":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->descriptionView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 167
    :cond_9
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->idNumberView:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 7
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    const/4 v6, 0x1

    .line 371
    instance-of v4, p2, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    if-eqz v4, :cond_4

    .line 372
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "PARAM_SELECTED_COMPANY"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 375
    const-string v4, "PARAM_FAVORITE_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_0

    .line 378
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    if-eqz v4, :cond_0

    .line 379
    const-string v4, "PARAM_SELECTED_REFERENCE_TYPE"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v4, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, p2

    .line 385
    check-cast v3, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    .line 387
    .local v3, "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 390
    :cond_1
    invoke-direct {p0, v2, v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->goToConfirmationViewNoBills(Landroid/os/Bundle;Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;)V

    .line 410
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    :cond_2
    :goto_0
    return-void

    .line 393
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    :cond_3
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bill;

    .line 394
    .local v0, "bill":Lcom/tigo/mfsapp/model/Bill;
    invoke-direct {p0, v2, v0, v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->goToConfirmationViewWithBill(Landroid/os/Bundle;Lcom/tigo/mfsapp/model/Bill;Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;)V

    goto :goto_0

    .line 398
    .end local v0    # "bill":Lcom/tigo/mfsapp/model/Bill;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    :cond_4
    instance-of v4, p2, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;

    if-eqz v4, :cond_2

    move-object v1, p2

    .line 400
    check-cast v1, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;

    .line 401
    .local v1, "billsresponse":Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;
    invoke-virtual {v1}, Lcom/tigo/mfsapp/service/BillPaymentGetBillsResponse;->getBills()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    .line 403
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->isVB_ENABLED()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->goToBillsSelectionList()V

    goto :goto_0

    .line 405
    :cond_5
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->submit()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 659
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 660
    .local v1, "s":Lcom/google/gson/Gson;
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "json":Ljava/lang/String;
    const-string v2, "PARAM_SELECTED_COMPANY_JSON"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v2, "PARAM_REF_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    const-string v2, "PARAM_SELECTED_AMOUNT"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const-string v2, "PARAM_SELECTED_TYPE_REF_NUMBER"

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refTypeNumber:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 667
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 635
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 636
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 640
    :cond_0
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 9
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->onValidateData()Z

    move-result v8

    .line 325
    .local v8, "valid":Z
    iget-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    .line 326
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 328
    .local v6, "amount":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string v6, "0"

    .line 331
    :cond_0
    const-string v2, "1"

    .line 333
    .local v2, "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 334
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 337
    :cond_1
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v2, v1, v6}, Lcom/tigo/mfsapp/service/Connection;->requestBillPaymentFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    .end local v2    # "walletId":Ljava/lang/String;
    .end local v6    # "amount":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 338
    :cond_3
    if-eqz v8, :cond_2

    .line 339
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 340
    :cond_4
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "referenceNumber":Ljava/lang/String;
    const/4 v5, 0x0

    .line 342
    .local v5, "IdType":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    if-eqz v0, :cond_5

    .line 343
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v5

    .line 346
    :cond_5
    const-string v2, "1"

    .line 348
    .restart local v2    # "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 349
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 352
    :cond_6
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tigo/mfsapp/service/Connection;->requestBillPaymentGetBills(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 354
    .end local v2    # "walletId":Ljava/lang/String;
    .end local v4    # "referenceNumber":Ljava/lang/String;
    .end local v5    # "IdType":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v7

    .line 356
    .local v7, "token":Ljava/lang/String;
    const-string v2, "1"

    .line 358
    .restart local v2    # "walletId":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 359
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 362
    :cond_8
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->bills:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    .line 363
    .restart local v6    # "amount":Ljava/lang/String;
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v7, v2, v0, v6}, Lcom/tigo/mfsapp/service/Connection;->requestBillPaymentFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onValidateData()Z
    .locals 9

    .prologue
    const v8, 0x7f06013c

    const v7, 0x7f0200d3

    const/4 v6, 0x0

    .line 481
    const/4 v2, 0x1

    .line 483
    .local v2, "success":Z
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, "text2":Ljava/lang/String;
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText1:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-direct {p0, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->validateFieldValues(Landroid/view/View;)Z

    move-result v2

    .line 489
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 494
    .local v0, "amount":Ljava/lang/Float;
    :goto_0
    iget-boolean v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_1

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setText(Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f0200d2

    invoke-virtual {v4, v8, v5}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 497
    const/4 v2, 0x0

    .line 501
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_2

    iget-boolean v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->shouldShowAmountField:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 502
    const v4, 0x7f06003e

    const v5, 0x7f060171

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 503
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    const v5, 0x7f060171

    const v6, 0x7f0200d3

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 504
    const/4 v2, 0x0

    .line 513
    :cond_2
    :goto_1
    return v2

    .line 490
    .end local v0    # "amount":Ljava/lang/Float;
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .restart local v0    # "amount":Ljava/lang/Float;
    goto :goto_0

    .line 507
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 508
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->editText2:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v4, v8, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 510
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public scanCodeError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 654
    return-void
.end method

.method public scanCodeSuccess(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Double;

    .prologue
    .line 644
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->refNumber:Ljava/lang/String;

    .line 645
    if-eqz p2, :cond_0

    .line 646
    new-instance v0, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Float;-><init>(D)V

    invoke-static {v0}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentEnterAmount;->amount:Ljava/lang/String;

    .line 648
    :cond_0
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    return v0
.end method
