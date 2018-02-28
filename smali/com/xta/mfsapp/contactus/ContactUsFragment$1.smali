.class Lcom/tigo/mfsapp/contactus/ContactUsFragment$1;
.super Ljava/lang/Object;
.source "ContactUsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tigo/mfsapp/contactus/ContactUsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tigo/mfsapp/contactus/ContactUsFragment;


# direct methods
.method constructor <init>(Lcom/tigo/mfsapp/contactus/ContactUsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tigo/mfsapp/contactus/ContactUsFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment$1;->this$0:Lcom/tigo/mfsapp/contactus/ContactUsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/tigo/mfsapp/contactus/ContactUsFragment$1;->this$0:Lcom/tigo/mfsapp/contactus/ContactUsFragment;

    invoke-virtual {v0}, Lcom/tigo/mfsapp/contactus/ContactUsFragment;->callCustomerRepresentative()V

    .line 40
    return-void
.end method
