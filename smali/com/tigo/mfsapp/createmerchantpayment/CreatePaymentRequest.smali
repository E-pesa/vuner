.class public Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;
.super Lcom/tigo/mfsapp/common/BaseFormFragment;
.source "CreatePaymentRequest.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ShowToast"
    }
.end annotation


# instance fields
.field amount:Ljava/lang/Float;

.field private isLookup:Ljava/lang/Boolean;

.field ivDeletePic:Landroid/widget/ImageView;

.field ivPic:Landroid/widget/ImageView;

.field next:Landroid/widget/Button;

.field textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

.field textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

.field textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

.field tigoNameResponse:Ljava/lang/String;

.field uriImage:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/tigo/mfsapp/common/BaseFormFragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->isLookup:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private getBuilder(Landroid/app/Activity;)Landroid/app/AlertDialog$Builder;
    .locals 2
    .param p1, "origin"    # Landroid/app/Activity;

    .prologue
    .line 302
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 304
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public getImageActivityForResult(Lcom/tigo/mfsapp/common/BaseFragment;I)V
    .locals 3
    .param p1, "baseFragment"    # Lcom/tigo/mfsapp/common/BaseFragment;
    .param p2, "request"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_CAMERA:I

    if-ne p2, v1, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget v1, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_GALLERY:I

    if-ne p2, v1, :cond_1

    .line 274
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 277
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-virtual {p1, v0, p2}, Lcom/tigo/mfsapp/common/BaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    return-void
.end method

.method public getNameAnalyticsScreen()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "Create Payment Request"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const v0, 0x7f06023a

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initForm(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inData"    # Landroid/os/Bundle;

    .prologue
    .line 163
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 112
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    .line 114
    sget v3, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_GALLERY:I

    if-eq p1, v3, :cond_0

    sget v3, Lcom/tigo/mfsapp/main/MsfMainActivity;->REQUEST_CAMERA:I

    if-ne p1, v3, :cond_3

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 117
    const/4 v2, 0x0

    .line 118
    .local v2, "stream":Ljava/io/InputStream;
    const/4 v1, -0x1

    .line 121
    .local v1, "rotation":I
    :try_start_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 122
    invoke-static {v2}, Lcom/tigo/mfsapp/utils/Exif;->getOrientation(Ljava/io/InputStream;)I

    move-result v1

    .line 123
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    :goto_0
    if-nez v1, :cond_2

    .line 134
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->uriImage:Landroid/net/Uri;

    .line 135
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->getUriFromIntent(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    :goto_1
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 143
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivDeletePic:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    .end local v1    # "rotation":I
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_1
    :goto_2
    return-void

    .line 124
    .restart local v1    # "rotation":I
    .restart local v2    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->uriImage:Landroid/net/Uri;

    .line 139
    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->getUriFromIntent(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/tigo/mfsapp/utils/GraphicsUtil;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 147
    .end local v1    # "rotation":I
    .end local v2    # "stream":Ljava/io/InputStream;
    :cond_3
    invoke-virtual {p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060232

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 61
    const v1, 0x7f030045

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0d0107

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f0d0106

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 65
    const v1, 0x7f0d0105

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/CustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    .line 66
    const v1, 0x7f0d0104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    .line 68
    const v1, 0x7f0d0108

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivDeletePic:Landroid/widget/ImageView;

    .line 70
    const v1, 0x7f0d0109

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->next:Landroid/widget/Button;

    .line 71
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->next:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->setSubmitButton(Landroid/view/View;)V

    .line 73
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->isLookup:Ljava/lang/Boolean;

    .line 75
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivPic:Landroid/widget/ImageView;

    new-instance v2, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$1;-><init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->ivDeletePic:Landroid/widget/ImageView;

    new-instance v2, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;

    invoke-direct {v2, p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$2;-><init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-object v0
.end method

.method public onResult(Lcom/tigo/mfsapp/service/Connection;Lcom/tigo/mfsapp/service/Response;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;
    .param p2, "response"    # Lcom/tigo/mfsapp/service/Response;

    .prologue
    .line 182
    instance-of v1, p2, Lcom/tigo/mfsapp/service/LookupResponse;

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->isLookup:Ljava/lang/Boolean;

    .line 185
    check-cast p2, Lcom/tigo/mfsapp/service/LookupResponse;

    .end local p2    # "response":Lcom/tigo/mfsapp/service/Response;
    invoke-virtual {p2}, Lcom/tigo/mfsapp/service/LookupResponse;->getTigoName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->tigoNameResponse:Ljava/lang/String;

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->isLookup:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 190
    new-instance v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;

    invoke-direct {v0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;-><init>()V

    .line 192
    .local v0, "fragment":Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setMSISDN(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->amount:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setAmount(Ljava/lang/Float;)V

    .line 194
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setFee(Ljava/lang/Float;)V

    .line 196
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textDescription:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setDescription(Ljava/lang/String;)V

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->tigoNameResponse:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setTigoName(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->uriImage:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 205
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->uriImage:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setUriImage(Landroid/net/Uri;)V

    .line 208
    :cond_2
    const v1, 0x7f060239

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;->setTextTitle(I)V

    .line 210
    invoke-virtual {p0}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/tigo/mfsapp/main/MsfMainActivity;

    invoke-virtual {v1, v0}, Lcom/tigo/mfsapp/main/MsfMainActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 213
    .end local v0    # "fragment":Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequestConfirmFragment;
    :cond_3
    return-void
.end method

.method protected onSubmit(Lcom/tigo/mfsapp/service/Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/tigo/mfsapp/service/Connection;

    .prologue
    .line 169
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/app/MfsApp;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/tigo/mfsapp/model/Parameters;->getDefault()Lcom/tigo/mfsapp/model/Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tigo/mfsapp/model/Parameters;->isSubscribersLookupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->isLookup:Ljava/lang/Boolean;

    .line 174
    iget-object v1, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/tigo/mfsapp/service/Connection;->requestLookup(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected onValidateData()Z
    .locals 8

    .prologue
    const v7, 0x7f0200d3

    const v6, 0x7f06013c

    const/4 v5, 0x0

    .line 218
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 219
    .local v1, "valid":Ljava/lang/Boolean;
    const-string v2, ""

    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v3}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    const v3, 0x7f0601d4

    const v4, 0x7f0200d8

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->setErrorConfiguration(II)V

    .line 222
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 233
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    const v3, 0x7f06013c

    const v4, 0x7f0200d3

    invoke-virtual {v2, v3, v4}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 236
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textPhone:Lcom/tigo/mfsapp/components/ContactsAutocompleteCustomEditText;

    invoke-virtual {p0, v2, v3}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->validateMSISDN(Ljava/lang/String;Lcom/tigo/mfsapp/components/BaseCustomEditText;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/components/CustomEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->amount:Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 241
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 244
    const v2, 0x7f06003e

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v6, v3}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->showOkDialog(IILandroid/view/View$OnClickListener;)Landroid/support/v4/app/DialogFragment;

    .line 245
    iget-object v2, p0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;->textAmount:Lcom/tigo/mfsapp/components/CustomEditText;

    invoke-virtual {v2, v6, v7}, Lcom/tigo/mfsapp/components/CustomEditText;->setErrorConfiguration(II)V

    .line 246
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1
.end method

.method public showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 10
    .param p1, "origin"    # Landroid/app/Activity;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msj"    # Ljava/lang/String;
    .param p4, "positive"    # Ljava/lang/String;
    .param p5, "positiveListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negative"    # Ljava/lang/String;
    .param p7, "negativeListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "cancelListener"    # Z

    .prologue
    .line 282
    new-instance v0, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p8

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest$3;-><init>(Lcom/tigo/mfsapp/createmerchantpayment/CreatePaymentRequest;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 298
    return-void
.end method

.method public visibleBalance()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method
