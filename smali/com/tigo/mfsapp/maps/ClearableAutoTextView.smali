.class public Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "ClearableAutoTextView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AdapterAutoComplete;,
        Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;,
        Lcom/tigo/mfsapp/maps/ClearableAutoTextView$DisplayStringInterface;
    }
.end annotation


# instance fields
.field private f:Landroid/view/View$OnFocusChangeListener;

.field private l:Landroid/view/View$OnTouchListener;

.field private lockSearchTextListener:Z

.field private mAutocompleteUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field public mGooglePlacesApiKey:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mInputKey:Ljava/lang/String;

.field private mListener:Lcom/tigo/mfsapp/maps/SelectionListener;

.field private mParser:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

.field private final mUiHandler:Landroid/os/Handler;

.field private xD:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->lockSearchTextListener:Z

    .line 192
    new-instance v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mUiHandler:Landroid/os/Handler;

    .line 62
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mContext:Landroid/content/Context;

    .line 63
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->init()V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    .line 47
    iput-boolean v5, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->lockSearchTextListener:Z

    .line 192
    new-instance v4, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v4, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;

    invoke-direct {v4, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mUiHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mContext:Landroid/content/Context;

    .line 70
    sget-object v4, Lcom/tigo/mfsapp/R$styleable;->ClearableAutoTextView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "url":Ljava/lang/CharSequence;
    const-string v1, ""

    .line 73
    .local v1, "google_places_api":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/tigo/mfsapp/app/MfsApp;->getInstance()Lcom/tigo/mfsapp/app/MfsApp;

    move-result-object v4

    const v5, 0x7f060301

    invoke-virtual {v4, v5}, Lcom/tigo/mfsapp/app/MfsApp;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 74
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "input_key":Ljava/lang/CharSequence;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    if-eqz v3, :cond_1

    .line 78
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    .line 79
    :cond_1
    if-eqz v1, :cond_2

    .line 80
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mGooglePlacesApiKey:Ljava/lang/String;

    .line 81
    :cond_2
    if-eqz v2, :cond_3

    .line 82
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    .line 84
    :cond_3
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 86
    :cond_4
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mGooglePlacesApiKey:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 87
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "If autocomplete url is null then it uses Google places auto complete & so, you must specify google_places_api_key attribute in XML"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 88
    :cond_5
    iget-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mGooglePlacesApiKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;->getGooglePlacesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    .line 89
    new-instance v4, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;

    invoke-direct {v4}, Lcom/tigo/mfsapp/maps/GoogleAutoCompleteParser;-><init>()V

    iput-object v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mParser:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

    .line 96
    :cond_6
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->init()V

    .line 97
    return-void

    .line 92
    :cond_7
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 93
    :cond_8
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "You must specify input key to send to autocomplete url"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->lockSearchTextListener:Z

    .line 192
    new-instance v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$1;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    .line 209
    new-instance v0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;

    invoke-direct {v0, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$2;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mUiHandler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->init()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->appendInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mParser:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->lockSearchTextListener:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)Lcom/tigo/mfsapp/maps/SelectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mListener:Lcom/tigo/mfsapp/maps/SelectionListener;

    return-object v0
.end method

.method private appendInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 247
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&input="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    return-object v2

    .line 251
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mInputKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "utf8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 258
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getDefaultClearIconId()I
    .locals 5

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_clear"

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "id":I
    if-nez v0, :cond_0

    .line 126
    const v0, 0x108006a

    .line 128
    :cond_0
    return v0
.end method

.method private getLatLngFromAddress(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 301
    const-string v0, "ClearableAutoTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLatLngFromAddress> Fetching location information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;

    invoke-direct {v1, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$4;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;)V

    invoke-static {v0, p1, v1}, Lcom/tigo/mfsapp/maps/GetLatLngUtil;->getLatLng(Landroid/content/Context;Ljava/lang/String;Lcom/tigo/mfsapp/maps/GetLatLngUtil$GetLatLngResult;)V

    .line 317
    return-void
.end method

.method private getResponse(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;

    invoke-direct {v1, p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView$3;-><init>(Lcom/tigo/mfsapp/maps/ClearableAutoTextView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getDefaultClearIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 114
    invoke-virtual {p0, v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setClearIconVisible(Z)V

    .line 115
    invoke-super {p0, p0}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    invoke-super {p0, p0}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 117
    invoke-super {p0, p0}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    return-void
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 326
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 321
    invoke-static {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadSuggestions(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    const-string v2, "YESICA"

    const-string v3, "Removed process in handler inside loadSuggestions()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "query"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 189
    iget-object v2, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 190
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 364
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "query":Ljava/lang/String;
    const-string v1, "ClearableAutoTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query String: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->lockSearchTextListener:Z

    if-nez v4, :cond_2

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 369
    invoke-direct {p0, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->loadSuggestions(Ljava/lang/String;)V

    .line 371
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 367
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 358
    const-string v0, "YESICA"

    const-string v1, "beforeTextChanged CharSequence %s, %d start, %d count, %d after"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 168
    if-eqz p2, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setClearIconVisible(Z)V

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->f:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->f:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 179
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setClearIconVisible(Z)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 376
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 349
    const-string v0, "YESICA"

    const-string v1, "onTextChanged CharSequence %s, %d start, %d count, %d before"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setClearIconVisible(Z)V

    .line 352
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move v0, v1

    .line 149
    .local v0, "tappedX":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 153
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    .end local v0    # "tappedX":Z
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 148
    goto :goto_0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->l:Landroid/view/View$OnTouchListener;

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->l:Landroid/view/View$OnTouchListener;

    invoke-interface {v1, p1, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 162
    goto :goto_1
.end method

.method public searchText(Ljava/lang/String;)V
    .locals 4
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->clearFocus()V

    .line 382
    iget-object v1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    const-string v2, "https://maps.googleapis.com/maps/api/place"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 383
    .local v0, "isApiBase":Z
    const-string v1, "YESICA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAutocompleteUrl "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mAutocompleteUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " contains PLACES_API_BASE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getLatLngFromAddress(Ljava/lang/String;)V

    .line 386
    :cond_0
    return-void
.end method

.method protected setClearIconVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 331
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->xD:Landroid/graphics/drawable/Drawable;

    .line 332
    .local v0, "x":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p0}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 333
    return-void

    .line 331
    .end local v0    # "x":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "f"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->f:Landroid/view/View$OnFocusChangeListener;

    .line 141
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->l:Landroid/view/View$OnTouchListener;

    .line 135
    return-void
.end method

.method public setParser(Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;)V
    .locals 0
    .param p1, "autoCompleteParser"    # Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mParser:Lcom/tigo/mfsapp/maps/ClearableAutoTextView$AutoCompleteResponseParser;

    .line 343
    return-void
.end method

.method public setSelectionListener(Lcom/tigo/mfsapp/maps/SelectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tigo/mfsapp/maps/SelectionListener;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/tigo/mfsapp/maps/ClearableAutoTextView;->mListener:Lcom/tigo/mfsapp/maps/SelectionListener;

    .line 338
    return-void
.end method
