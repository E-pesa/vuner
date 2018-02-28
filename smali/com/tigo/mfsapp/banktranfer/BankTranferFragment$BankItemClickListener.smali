.class Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;
.super Ljava/lang/Object;
.source "BankTranferFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BankItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;


# direct methods
.method private constructor <init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;
    .param p2, "x1"    # Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$1;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;-><init>(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/adapters/BankInfo;

    .line 143
    .local v0, "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->access$300(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;Lcom/tigo/mfsapp/adapters/BankInfo;)V

    .line 144
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-virtual {v1}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->saveFavorites()V

    .line 145
    iget-object v1, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    iget-object v2, p0, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment$BankItemClickListener;->this$0:Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;

    invoke-virtual {v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->getFiltersView()Landroid/widget/Spinner;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;->access$402(Lcom/tigo/mfsapp/banktranfer/BankTranferFragment;I)I

    .line 147
    .end local v0    # "bankInfo":Lcom/tigo/mfsapp/adapters/BankInfo;
    :cond_0
    return-void
.end method
