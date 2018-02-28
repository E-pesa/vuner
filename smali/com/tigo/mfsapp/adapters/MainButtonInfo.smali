.class public Lcom/tigo/mfsapp/adapters/MainButtonInfo;
.super Ljava/lang/Object;
.source "MainButtonInfo.java"


# static fields
.field public static final INVALID_BACKGROUND_ID:I = -0x1


# instance fields
.field private bImage:I

.field private final bundle:Landroid/os/Bundle;

.field private final customBackgroundId:I

.field private customTitle:Lcom/tigo/mfsapp/model/LanguageDescriptions;

.field private fragmentClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final isWhite:Z

.field private leftMenuImage:I

.field private notification:I

.field private separator:Z

.field private title:I

.field private useCustomTitle:Z


# direct methods
.method public constructor <init>(IILjava/lang/Class;I)V
    .locals 10
    .param p1, "title"    # I
    .param p2, "bImage"    # I
    .param p4, "leftMenuImage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 31
    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 32
    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;II)V
    .locals 10
    .param p1, "title"    # I
    .param p2, "bImage"    # I
    .param p4, "leftMenuImage"    # I
    .param p5, "notification"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;II)V"
        }
    .end annotation

    .prologue
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 26
    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v5

    move v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 27
    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "title"    # I
    .param p2, "bImage"    # I
    .param p4, "leftMenuImage"    # I
    .param p5, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 36
    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v7, v5

    move v8, v5

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;IZ)V
    .locals 10
    .param p1, "title"    # I
    .param p2, "bImage"    # I
    .param p4, "leftMenuImage"    # I
    .param p5, "separator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;IZ)V"
        }
    .end annotation

    .prologue
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 41
    const/4 v6, -0x1

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v8, v7

    invoke-direct/range {v0 .. v9}, Lcom/tigo/mfsapp/adapters/MainButtonInfo;-><init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V

    .line 42
    return-void
.end method

.method public constructor <init>(IILjava/lang/Class;IZIZILandroid/os/Bundle;)V
    .locals 1
    .param p1, "title"    # I
    .param p2, "bImage"    # I
    .param p4, "leftMenuImage"    # I
    .param p5, "separator"    # Z
    .param p6, "customBackgroundId"    # I
    .param p7, "isWhite"    # Z
    .param p8, "notification"    # I
    .param p9, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;IZIZI",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->useCustomTitle:Z

    .line 46
    iput p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->title:I

    .line 47
    iput p2, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->bImage:I

    .line 48
    iput-object p3, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->fragmentClass:Ljava/lang/Class;

    .line 49
    iput p4, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->leftMenuImage:I

    .line 50
    iput-boolean p5, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->separator:Z

    .line 51
    iput p6, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->customBackgroundId:I

    .line 52
    iput-boolean p7, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isWhite:Z

    .line 53
    iput p8, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->notification:I

    .line 54
    iput-object p9, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->bundle:Landroid/os/Bundle;

    .line 55
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCustomBackgroundId()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->customBackgroundId:I

    return v0
.end method

.method public getCustomTitle()Lcom/tigo/mfsapp/model/LanguageDescriptions;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->customTitle:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    return-object v0
.end method

.method public getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->fragmentClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getLeftMenuImage()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->leftMenuImage:I

    return v0
.end method

.method public getNotification()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->notification:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->title:I

    return v0
.end method

.method public getbImage()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->bImage:I

    return v0
.end method

.method public isSeparator()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->separator:Z

    return v0
.end method

.method public isUseCustomTitle()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->useCustomTitle:Z

    return v0
.end method

.method public isWhite()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->isWhite:Z

    return v0
.end method

.method public setCustomTitle(Lcom/tigo/mfsapp/model/LanguageDescriptions;)V
    .locals 0
    .param p1, "customTitle"    # Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->customTitle:Lcom/tigo/mfsapp/model/LanguageDescriptions;

    .line 140
    return-void
.end method

.method public setFragmentClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "fragmentClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->fragmentClass:Ljava/lang/Class;

    .line 65
    return-void
.end method

.method public setLeftMenuImage(I)V
    .locals 0
    .param p1, "leftMenuImage"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->leftMenuImage:I

    .line 95
    return-void
.end method

.method public setNotification(I)V
    .locals 0
    .param p1, "notification"    # I

    .prologue
    .line 124
    iput p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->notification:I

    .line 125
    return-void
.end method

.method public setSeparator(Z)V
    .locals 0
    .param p1, "separator"    # Z

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->separator:Z

    .line 105
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "title"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->title:I

    .line 75
    return-void
.end method

.method public setUseCustomTitle(Z)V
    .locals 0
    .param p1, "useCustomTitle"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->useCustomTitle:Z

    .line 150
    return-void
.end method

.method public setbImage(I)V
    .locals 0
    .param p1, "bImage"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/tigo/mfsapp/adapters/MainButtonInfo;->bImage:I

    .line 85
    return-void
.end method
