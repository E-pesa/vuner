.class public Lcom/tigo/mfsapp/model/Carrusels;
.super Ljava/lang/Object;
.source "Carrusels.java"


# instance fields
.field private Login:Lcom/tigo/mfsapp/model/Carrusel;

.field private Register:Lcom/tigo/mfsapp/model/Carrusel;

.field private SideMenu:Lcom/tigo/mfsapp/model/Carrusel;

.field private SideMenu2:Lcom/tigo/mfsapp/model/Carrusel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogin()Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusels;->Login:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method public getRegister()Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusels;->Register:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method public getSideMenu()Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusels;->SideMenu:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method public getSideMenu2()Lcom/tigo/mfsapp/model/Carrusel;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tigo/mfsapp/model/Carrusels;->SideMenu2:Lcom/tigo/mfsapp/model/Carrusel;

    return-object v0
.end method

.method public setLogin(Lcom/tigo/mfsapp/model/Carrusel;)V
    .locals 0
    .param p1, "login"    # Lcom/tigo/mfsapp/model/Carrusel;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusels;->Login:Lcom/tigo/mfsapp/model/Carrusel;

    .line 29
    return-void
.end method

.method public setRegister(Lcom/tigo/mfsapp/model/Carrusel;)V
    .locals 0
    .param p1, "register"    # Lcom/tigo/mfsapp/model/Carrusel;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusels;->Register:Lcom/tigo/mfsapp/model/Carrusel;

    .line 19
    return-void
.end method

.method public setSideMenu(Lcom/tigo/mfsapp/model/Carrusel;)V
    .locals 0
    .param p1, "sideMenu"    # Lcom/tigo/mfsapp/model/Carrusel;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusels;->SideMenu:Lcom/tigo/mfsapp/model/Carrusel;

    .line 39
    return-void
.end method

.method public setSideMenu2(Lcom/tigo/mfsapp/model/Carrusel;)V
    .locals 0
    .param p1, "sideMenu2"    # Lcom/tigo/mfsapp/model/Carrusel;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tigo/mfsapp/model/Carrusels;->SideMenu2:Lcom/tigo/mfsapp/model/Carrusel;

    .line 49
    return-void
.end method
