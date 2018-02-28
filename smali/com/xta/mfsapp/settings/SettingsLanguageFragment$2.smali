.class Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;
.super Ljava/lang/Object;
.source "SettingsLanguageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;->this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 68
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tigo/mfsapp/model/Language;

    .line 69
    .local v0, "language":Lcom/tigo/mfsapp/model/Language;
    invoke-virtual {v0}, Lcom/tigo/mfsapp/model/Language;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tigo/mfsapp/utils/Utils;->setApplicationLanguage(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;->this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    iget-object v1, v1, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 71
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;->this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    invoke-static {v1, v0}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->access$000(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;Lcom/tigo/mfsapp/model/Language;)V

    .line 72
    iget-object v1, p0, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment$2;->this$0:Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;

    invoke-static {v1}, Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;->access$100(Lcom/tigo/mfsapp/settings/SettingsLanguageFragment;)V

    .line 73
    return-void
.end method
