.class public Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PopUpDialogFragment.java"


# instance fields
.field private ivClose:Landroid/widget/ImageView;

.field private ivImage:Landroid/widget/ImageView;

.field private okButton:Landroid/widget/Button;

.field private popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

.field private textViewMessage:Landroid/widget/TextView;

.field private textViewTitle:Landroid/widget/TextView;

.field private urlImage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrlImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v3, -0x1

    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 142
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 143
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 144
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 145
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 146
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->setCancelable(Z)V

    .line 43
    const v9, 0x7f030050

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 44
    .local v8, "view":Landroid/view/View;
    const v9, 0x7f0d0126

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivImage:Landroid/widget/ImageView;

    .line 46
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v9

    iget v4, v9, Landroid/graphics/Point;->y:I

    .line 47
    .local v4, "screenHeight":I
    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/tigo/mfsapp/app/MfsApp;->getScreenSize()Landroid/graphics/Point;

    move-result-object v9

    iget v5, v9, Landroid/graphics/Point;->x:I

    .line 49
    .local v5, "screenWidth":I
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v1, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 51
    .local v1, "density":I
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getImageURL()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 53
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getImageURL()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    .line 54
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    const-string v10, ".png"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    .line 56
    const-string v6, "_android_"

    .line 57
    .local v6, "startUrl":Ljava/lang/String;
    const-string v2, ""

    .line 59
    .local v2, "endUrl":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 74
    const-string v2, "xhdpi.png"

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    invoke-virtual {v9}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v9

    iget-object v10, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 82
    const v9, 0x7f0d0127

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivClose:Landroid/widget/ImageView;

    .line 83
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivClose:Landroid/widget/ImageView;

    new-instance v10, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment$1;

    invoke-direct {v10, p0}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment$1;-><init>(Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .end local v2    # "endUrl":Ljava/lang/String;
    .end local v6    # "startUrl":Ljava/lang/String;
    :goto_1
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getAlertTexts()Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getAlertTexts()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 97
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getMessageText()Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "messageText":Ljava/lang/String;
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getTitleText()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "titleText":Ljava/lang/String;
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    invoke-virtual {v9}, Lcom/tigo/mfsapp/model/WhatsNewPopup;->getButtonText()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "buttonText":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    :cond_0
    const v9, 0x7f0d0128

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 104
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivClose:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .end local v0    # "buttonText":Ljava/lang/String;
    .end local v3    # "messageText":Ljava/lang/String;
    .end local v7    # "titleText":Ljava/lang/String;
    :goto_2
    return-object v8

    .line 62
    .restart local v2    # "endUrl":Ljava/lang/String;
    .restart local v6    # "startUrl":Ljava/lang/String;
    :sswitch_0
    const-string v2, "mdpi.png"

    .line 63
    goto/16 :goto_0

    .line 65
    :sswitch_1
    const-string v2, "hdpi.png"

    .line 66
    goto/16 :goto_0

    .line 68
    :sswitch_2
    const-string v2, "xhdpi.png"

    .line 69
    goto/16 :goto_0

    .line 71
    :sswitch_3
    const-string v2, "xxhdpi.png"

    .line 72
    goto/16 :goto_0

    .line 92
    .end local v2    # "endUrl":Ljava/lang/String;
    .end local v6    # "startUrl":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivImage:Landroid/widget/ImageView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 107
    .restart local v0    # "buttonText":Ljava/lang/String;
    .restart local v3    # "messageText":Ljava/lang/String;
    .restart local v7    # "titleText":Ljava/lang/String;
    :cond_2
    const v9, 0x7f0d0117

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->textViewMessage:Landroid/widget/TextView;

    .line 108
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->textViewMessage:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const v9, 0x7f0d00ac

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->textViewTitle:Landroid/widget/TextView;

    .line 111
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->textViewTitle:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v9, 0x7f0d0120

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->okButton:Landroid/widget/Button;

    .line 114
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->okButton:Landroid/widget/Button;

    new-instance v10, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment$2;

    invoke-direct {v10, p0}, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment$2;-><init>(Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->okButton:Landroid/widget/Button;

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 126
    .end local v0    # "buttonText":Ljava/lang/String;
    .end local v3    # "messageText":Ljava/lang/String;
    .end local v7    # "titleText":Ljava/lang/String;
    :cond_3
    const v9, 0x7f0d0128

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v9, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->ivClose:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 59
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_3
    .end sparse-switch
.end method

.method public setPopup(Lcom/tigo/mfsapp/model/WhatsNewPopup;)V
    .locals 0
    .param p1, "popup"    # Lcom/tigo/mfsapp/model/WhatsNewPopup;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->popup:Lcom/tigo/mfsapp/model/WhatsNewPopup;

    .line 162
    return-void
.end method

.method public setUrlImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "urlImage"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/tigo/mfsapp/dialogs/PopUpDialogFragment;->urlImage:Ljava/lang/String;

    .line 157
    return-void
.end method
