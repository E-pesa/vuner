.class Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$2;
.super Ljava/lang/Object;
.source "RegisterNewUsersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$2;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 124
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/IdType;

    .line 125
    .local v0, "idType":Lcom/tigo/mfsapp/model/IdType;
    iget-object v1, p0, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment$2;->this$0:Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/IdType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;->access$002(Lcom/tigo/mfsapp/registernewusers/RegisterNewUsersFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method