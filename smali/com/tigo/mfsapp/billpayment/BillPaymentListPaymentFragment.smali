.class public Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "BillPaymentListPaymentFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;
    }
.end annotation


# instance fields
.field private AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

.field private adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

.field private bill:Lcom/tigo/mfsapp/model/Bill;

.field bills:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;"
        }
    .end annotation
.end field

.field private company:Lcom/tigo/mfsapp/model/Company;

.field private companyDescView:Landroid/widget/TextView;

.field private companyLogoView:Landroid/widget/ImageView;

.field private companyNameView:Landroid/widget/TextView;

.field private descriptionView:Landroid/widget/TextView;

.field private emptyLineView:Landroid/widget/ImageView;

.field private emptyView:Landroid/widget/TextView;

.field private favoriteRefNumber:Ljava/lang/String;

.field private favoriteTypeRefNumber:Ljava/lang/String;

.field private languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

.field private listView:Landroid/widget/ListView;

.field private progressView:Landroid/view/View;

.field private thereWasAnError:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 146
    return-void
.end method

.method static synthetic access$102(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;Lcom/tigo/mfsapp/model/Bill;)Lcom/tigo/mfsapp/model/Bill;
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;
    .param p1, "x1"    # Lcom/tigo/mfsapp/model/Bill;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->updateInfoAmount()V

    return-void
.end method

.method private getAmountFromSource()F
    .locals 4

    .prologue
    .line 278
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Company;->isAM_EDITABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/4 v0, 0x0

    .line 282
    .local v0, "amount":F
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 290
    .end local v0    # "amount":F
    :goto_0
    return v0

    .line 283
    .restart local v0    # "amount":F
    :catch_0
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAmount from bill error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v0    # "amount":F
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    if-eqz v2, :cond_1

    .line 289
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v0

    goto :goto_0

    .line 290
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectItem()V
    .locals 0

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->submit()V

    .line 167
    return-void
.end method

.method private updateInfoAmount()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    if-eqz v2, :cond_2

    .line 127
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0d014b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 128
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "amount":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Amount selected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Bill;->getAmountToPay()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AmountEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AmountEditText;->requestFocus()Z

    .line 141
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Company;->isAM_EDITABLE()Z

    move-result v2

    if-nez v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/AmountEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 144
    :cond_1
    return-void

    .line 138
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->isAM_EDITABLE()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "request"    # Lcom/tigo/mfsapp/service/Request;

    .prologue
    .line 353
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didReceiveHttpError(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Request;)V

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->thereWasAnError:Z

    .line 355
    return-void
.end method

.method public didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 1
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 345
    invoke-super {p0, p1, p2}, Lcom/tigo/mfsapp/common/BaseFormFragment;->didResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V

    .line 346
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/Response;->getResultCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->thereWasAnError:Z

    .line 348
    :cond_0
    return-void
.end method

.method public getCompany()Lcom/tigo/mfsapp/model/Company;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    return-object v0
.end method

.method public getFavoriteRefNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteRefNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFavoriteTypeRefNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    const v0, 0x7f060034

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideOkDialog()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->hideOkDialog()V

    .line 361
    iget-boolean v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->thereWasAnError:Z

    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->closeAndGoHome()V

    .line 363
    :cond_0
    return-void
.end method

.method public hideProgressDialog()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->progressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    return-void
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0200a0

    .line 194
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Parameters;->getBasePaymentLogosUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/model/Company;->getLogoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 222
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyDescView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Company;->getCompanyDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 91
    invoke-super {p0, p1}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 93
    new-instance v1, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    .line 94
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bills:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->setBills(Ljava/util/ArrayList;)V

    .line 96
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bills:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bills:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->emptyLineView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->emptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d014a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$BillPaymentPaymentsItemClickListener;-><init>(Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    new-array v0, v4, [Landroid/text/InputFilter;

    .line 109
    .local v0, "nfil":[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/AmountEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 117
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Utils;->moneyFormater(Ljava/lang/Float;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/AmountEditText;->setText(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    const v1, 0x7f03005f

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->listView:Landroid/widget/ListView;

    .line 70
    const v1, 0x7f0d0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->progressView:Landroid/view/View;

    .line 72
    const v1, 0x7f0d00b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyLogoView:Landroid/widget/ImageView;

    .line 73
    const v1, 0x7f0d00b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyNameView:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0d00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->companyDescView:Landroid/widget/TextView;

    .line 75
    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->descriptionView:Landroid/widget/TextView;

    .line 77
    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->emptyLineView:Landroid/widget/ImageView;

    .line 78
    const v1, 0x7f0d0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->emptyView:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f0d014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/AmountEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    .line 81
    iget-object v1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/components/AmountEditText;->setAutoTrimFeature(Z)V

    .line 83
    const v1, 0x7f0d014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->setSubmitButton(Landroid/view/View;)V

    .line 85
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 243
    instance-of v4, p2, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    if-eqz v4, :cond_1

    .line 245
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v4, "PARAM_SELECTED_COMPANY"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 248
    const-string v4, "PARAM_FAVORITE_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteRefNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "PARAM_SELECTED_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/Bill;->getReferenceNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getRNK()[Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 253
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    if-eqz v4, :cond_0

    .line 255
    const-string v4, "PARAM_SELECTED_REFERENCE_TYPE"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    invoke-virtual {v5}, Lcom/tigo/mfsapp/model/ReferenceNumberKey;->getIdType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "PARAM_FAVORITE_TYPE_REFERENCE_NUMBER"

    iget-object v5, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, p2

    .line 260
    check-cast v3, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;

    .line 262
    .local v3, "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    new-instance v1, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;

    invoke-direct {v1}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;-><init>()V

    .line 263
    .local v1, "billPaymentConfirm":Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setBill(Lcom/tigo/mfsapp/model/Bill;)V

    .line 265
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getAmountFromSource()F

    move-result v0

    .line 266
    .local v0, "amount":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Amount to play "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/Logger;->debug(Ljava/lang/String;)V

    .line 267
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 269
    invoke-virtual {v3}, Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;->getFee()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 270
    invoke-virtual {v1, v2}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->initForm(Landroid/os/Bundle;)V

    .line 271
    const v4, 0x7f060035

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTextTitle(I)V

    .line 272
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Company;->getCompanyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    check-cast v4, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v4, v1}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 275
    .end local v0    # "amount":F
    .end local v1    # "billPaymentConfirm":Lcom/tigo/mfsapp/billpayment/BillPaymentConfirmFragment;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "feeResponse":Lcom/tigo/mfsapp/service/BillPaymentFeeResponse;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;->onStart()V

    .line 173
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->beginUpdate()V

    .line 174
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->adapter:Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentPaymentsAdapter;->endUpdate()V

    .line 176
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->initForm(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 6
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->onValidateData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 233
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Wallet;->getId()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "walletId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getAmountFromSource()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "amount":Ljava/lang/String;
    iget-object v3, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/model/Company;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    const-string v5, "."

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/tigo/mfsapp/service/Connection;->requestBillPaymentFee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v0    # "amount":Ljava/lang/String;
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "walletId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onValidateData()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 297
    const/4 v2, 0x1

    .line 299
    .local v2, "success":Z
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    invoke-virtual {v4}, Lcom/tigo/mfsapp/components/AmountEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "text2":Ljava/lang/String;
    invoke-direct {p0}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->getAmountFromSource()F

    move-result v0

    .line 304
    .local v0, "amount":F
    :try_start_0
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bill:Lcom/tigo/mfsapp/model/Bill;

    if-nez v4, :cond_2

    .line 305
    const v4, 0x7f06003e

    const v5, 0x7f0602c4

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 306
    const/4 v2, 0x0

    .line 313
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Parameters;->isShowBalanceHeader()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/tigo/mfsapp/common/AppPreferences;->getSelectedWallet()Lcom/tigo/mfsapp/model/Wallet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tigo/mfsapp/model/Wallet;->getBalance()F

    move-result v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 315
    const v4, 0x7f06003e

    const v5, 0x7f060171

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6}, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 316
    const/4 v2, 0x0

    .line 326
    :cond_1
    :goto_1
    return v2

    .line 308
    :cond_2
    cmpl-float v4, v0, v7

    if-nez v4, :cond_0

    .line 310
    iget-object v4, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->AmountText:Lcom/tigo/mfsapp/components/AmountEditText;

    const v5, 0x7f06013c

    const v6, 0x7f0200d2

    invoke-virtual {v4, v5, v6}, Lcom/tigo/mfsapp/components/AmountEditText;->setErrorConfiguration(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    const/4 v2, 0x0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setBills(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tigo/mfsapp/model/Bill;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "bills":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tigo/mfsapp/model/Bill;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->bills:Ljava/util/ArrayList;

    .line 368
    return-void
.end method

.method public setCompany(Lcom/tigo/mfsapp/model/Company;)V
    .locals 0
    .param p1, "company"    # Lcom/tigo/mfsapp/model/Company;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->company:Lcom/tigo/mfsapp/model/Company;

    .line 378
    return-void
.end method

.method public setFavoriteRefNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "favoriteRefNumber"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteRefNumber:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setFavoriteTypeRefNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->favoriteTypeRefNumber:Ljava/lang/String;

    .line 403
    return-void
.end method

.method public setLanguageDescriptor(Lcom/tigo/mfsapp/model/ReferenceNumberKey;)V
    .locals 0
    .param p1, "languageDescriptor"    # Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->languageDescriptor:Lcom/tigo/mfsapp/model/ReferenceNumberKey;

    .line 383
    return-void
.end method

.method public showProgressDialog()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/tigo/mfsapp/billpayment/BillPaymentListPaymentFragment;->progressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 183
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x1

    return v0
.end method
