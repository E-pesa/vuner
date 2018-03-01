.class Lcom/tigo/mfsapp/adapters/BanksAdapter$1;
.super Ljava/lang/Object;
.source "BanksAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/adapters/BanksAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

.field final synthetic val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

.field final synthetic val$holder:Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/adapters/BanksAdapter;Lcom/tigo/mfsapp/adapters/BankInfo;Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/adapters/BanksAdapter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    iput-object p2, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

    iput-object p3, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$holder:Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/adapters/BankInfo;->getIsFavorite()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->this$0:Lcom/tigo/mfsapp/adapters/BanksAdapter;

    invoke-static {v0}, Lcom/tigo/mfsapp/adapters/BanksAdapter;->access$400(Lcom/tigo/mfsapp/adapters/BanksAdapter;)Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    move-result-object v0

    const v1, 0x7f06003e

    const v2, 0x7f06015f

    new-instance v3, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;

    invoke-direct {v3, p0}, Lcom/tigo/mfsapp/adapters/BanksAdapter$1$1;-><init>(Lcom/tigo/mfsapp/adapters/BanksAdapter$1;)V

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->showYesNoDialog(IIZLcom/tigo/mfsapp/dialogs/YesNoDialogFragment$OnYesNoListener;)V

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$bankUnit:Lcom/tigo/mfsapp/adapters/BankInfo;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tigo/mfsapp/adapters/BankInfo;->setIsFavorite(Ljava/lang/Boolean;)V

    .line 167
    iget-object v0, p0, Lcom/tigo/mfsapp/adapters/BanksAdapter$1;->val$holder:Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;

    iget-object v0, v0, Lcom/tigo/mfsapp/adapters/BanksAdapter$ViewHolder;->star:Landroid/widget/ImageView;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
