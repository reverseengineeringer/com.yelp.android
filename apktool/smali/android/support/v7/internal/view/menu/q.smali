.class Landroid/support/v7/internal/view/menu/q;
.super Landroid/support/v7/internal/view/menu/o;
.source "SubMenuWrapperICS.java"

# interfaces
.implements Landroid/view/SubMenu;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yelp/android/e/c;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/menu/o;-><init>(Landroid/content/Context;Lcom/yelp/android/e/a;)V

    .line 34
    return-void
.end method


# virtual methods
.method public b()Lcom/yelp/android/e/c;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/e/c;

    return-object v0
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/e/c;->clearHeader()V

    .line 74
    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/e/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/q;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    .line 56
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 62
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    .line 44
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 50
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    .line 68
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setIcon(I)Landroid/view/SubMenu;

    .line 79
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/q;->b()Lcom/yelp/android/e/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/e/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    .line 85
    return-object p0
.end method
