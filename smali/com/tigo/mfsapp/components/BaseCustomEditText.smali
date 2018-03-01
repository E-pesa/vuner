.class public abstract Lcom/tigo/mfsapp/components/BaseCustomEditText;
.super Landroid/widget/FrameLayout;
.source "BaseCustomEditText.java"


# instance fields
.field private container:Landroid/view/View;

.field private frameView:Landroid/widget/FrameLayout;

.field hintColor:Landroid/content/res/ColorStateList;

.field hintText:Ljava/lang/String;

.field inputType:Landroid/text/InputType;

.field leftImageId:I

.field private leftImageIdOnTyping:I

.field private leftImageView:Landroid/widget/ImageView;

.field private onBrowseListener:Landroid/view/View$OnClickListener;

.field private rightImageView:Landroid/widget/ImageView;

.field w:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;-><init>(Lcom/tigo/mfsapp/components/BaseCustomEditText;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->w:Landroid/text/TextWatcher;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    new-instance v4, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText$2;-><init>(Lcom/tigo/mfsapp/components/BaseCustomEditText;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->w:Landroid/text/TextWatcher;

    .line 42
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030025

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0d00ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    .line 44
    const v4, 0x7f0d00af

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    .line 45
    const v4, 0x7f0d00b1

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    .line 46
    const v4, 0x7f0d00b0

    invoke-virtual {p0, v4}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->frameView:Landroid/widget/FrameLayout;

    .line 48
    sget-object v4, Lcom/tigo/mfsapp/R$styleable;->CustomEditText:[I

    invoke-virtual {p1, p2, v4, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 50
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    .line 51
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->determineLeftImageIdOnTyping(Landroid/content/res/TypedArray;)I

    move-result v4

    iput v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageIdOnTyping:I

    .line 53
    iget-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    .line 56
    .local v1, "editText":Landroid/widget/EditText;
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 57
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 58
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 59
    const/high16 v4, 0x41700000    # 15.0f

    invoke-virtual {v1, v9, v4}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 60
    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1, v4, v6, v5, v6}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 63
    invoke-virtual {v1}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->hintColor:Landroid/content/res/ColorStateList;

    .line 64
    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 65
    invoke-virtual {v1}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->hintText:Ljava/lang/String;

    .line 67
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 68
    .local v2, "inputTypeId":I
    if-eq v2, v7, :cond_1

    .line 70
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 73
    :cond_1
    new-instance v4, Lcom/tigo/mfsapp/components/BaseCustomEditText$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText$1;-><init>(Lcom/tigo/mfsapp/components/BaseCustomEditText;)V

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->frameView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 97
    .local v3, "rightImageId":I
    if-lez v3, :cond_2

    .line 99
    iget-object v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->updateRightImageVisibility()V

    .line 103
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setPadding(IIII)V

    .line 106
    return-void
.end method

.method private determineLeftImageIdOnTyping(Landroid/content/res/TypedArray;)I
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    iget v2, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    if-lez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_typing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "result":I
    if-lez v1, :cond_0

    .line 120
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "result":I
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    goto :goto_0
.end method

.method private updateRightImageVisibility()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->onBrowseListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getEditText()Landroid/widget/EditText;
.end method

.method public getLeftImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getOnBrowseListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->onBrowseListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 126
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    return-object v1
.end method

.method public setAutoTrimFeature(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->w:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0
.end method

.method public setEnableChildrens(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 210
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public setErrorConfiguration(II)V
    .locals 4
    .param p1, "errorHintText"    # I
    .param p2, "errorImage"    # I

    .prologue
    const/4 v3, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 175
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(I)V

    .line 176
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 178
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 179
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 180
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setPadding(IIII)V

    .line 181
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    return-void
.end method

.method public setErrorConfiguration(Ljava/lang/String;I)V
    .locals 4
    .param p1, "errorHintText"    # Ljava/lang/String;
    .param p2, "errorImage"    # I

    .prologue
    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 188
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 191
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    const v2, 0x7f02008a

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 192
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 193
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setPadding(IIII)V

    .line 194
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 196
    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 140
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method

.method public setNormalConfiguration()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 147
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->hintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 150
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    const v2, 0x7f020089

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 151
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->container:Landroid/view/View;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 152
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->setPadding(IIII)V

    .line 154
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageIdOnTyping:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_0
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->updateRightImageVisibility()V

    .line 162
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->leftImageId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public setOnBrowseListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "onBrowseListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->onBrowseListener:Landroid/view/View$OnClickListener;

    .line 217
    iget-object v0, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->rightImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/tigo/mfsapp/components/BaseCustomEditText;->onBrowseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    invoke-direct {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->updateRightImageVisibility()V

    .line 219
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/tigo/mfsapp/components/BaseCustomEditText;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 132
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 133
    .local v1, "editable":Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    .line 134
    invoke-interface {v1, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 135
    return-void
.end method
