.class public Landroid/support/design/internal/a;
.super Landroid/support/v7/internal/view/menu/f;
.source "NavigationMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/support/v7/internal/view/menu/f;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/design/internal/a;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/h;

    .line 40
    new-instance v1, Landroid/support/design/internal/c;

    invoke-virtual {p0}, Landroid/support/design/internal/a;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, v0}, Landroid/support/design/internal/c;-><init>(Landroid/content/Context;Landroid/support/design/internal/a;Landroid/support/v7/internal/view/menu/h;)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/h;->a(Landroid/support/v7/internal/view/menu/p;)V

    .line 42
    return-object v1
.end method
