.class final Landroid/support/v7/app/k$e;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/app/k;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/k;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/k;Landroid/support/v7/app/k$1;)V
    .locals 0

    .prologue
    .line 1686
    invoke-direct {p0, p1}, Landroid/support/v7/app/k$e;-><init>(Landroid/support/v7/app/k;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1689
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/f;->p()Landroid/support/v7/internal/view/menu/f;

    move-result-object v2

    .line 1690
    if-eq v2, p1, :cond_2

    move v0, v1

    .line 1691
    :goto_0
    iget-object v3, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    if-eqz v0, :cond_0

    move-object p1, v2

    :cond_0
    invoke-static {v3, p1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;Landroid/view/Menu;)Landroid/support/v7/app/k$d;

    move-result-object v3

    .line 1692
    if-eqz v3, :cond_1

    .line 1693
    if-eqz v0, :cond_3

    .line 1694
    iget-object v0, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    iget v4, v3, Landroid/support/v7/app/k$d;->a:I

    invoke-static {v0, v4, v3, v2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;ILandroid/support/v7/app/k$d;Landroid/view/Menu;)V

    .line 1695
    iget-object v0, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    invoke-static {v0, v3, v1}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;Landroid/support/v7/app/k$d;Z)V

    .line 1702
    :cond_1
    :goto_1
    return-void

    .line 1690
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1699
    :cond_3
    iget-object v0, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    invoke-static {v0, v3, p2}, Landroid/support/v7/app/k;->a(Landroid/support/v7/app/k;Landroid/support/v7/app/k$d;Z)V

    goto :goto_1
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 2

    .prologue
    .line 1706
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    iget-boolean v0, v0, Landroid/support/v7/app/k;->h:Z

    if-eqz v0, :cond_0

    .line 1707
    iget-object v0, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    invoke-virtual {v0}, Landroid/support/v7/app/k;->n()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1708
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/app/k$e;->a:Landroid/support/v7/app/k;

    invoke-virtual {v1}, Landroid/support/v7/app/k;->m()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1709
    const/16 v1, 0x6c

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1712
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
