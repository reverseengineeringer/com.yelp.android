.class public Landroid/support/design/internal/c;
.super Landroid/support/v7/internal/view/menu/p;
.source "NavigationSubMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/design/internal/a;Landroid/support/v7/internal/view/menu/h;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/p;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/f;Landroid/support/v7/internal/view/menu/h;)V

    .line 35
    return-void
.end method

.method private t()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Landroid/support/design/internal/c;->s()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/f;->b(Z)V

    .line 67
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/p;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 47
    invoke-direct {p0}, Landroid/support/design/internal/c;->t()V

    .line 48
    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/p;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 61
    invoke-direct {p0}, Landroid/support/design/internal/c;->t()V

    .line 62
    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/view/menu/p;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 54
    invoke-direct {p0}, Landroid/support/design/internal/c;->t()V

    .line 55
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/p;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 40
    invoke-direct {p0}, Landroid/support/design/internal/c;->t()V

    .line 41
    return-object v0
.end method
