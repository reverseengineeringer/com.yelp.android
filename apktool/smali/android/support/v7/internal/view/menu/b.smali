.class Landroid/support/v7/internal/view/menu/b;
.super Landroid/support/v7/widget/aq;
.source "ActionMenuItemView.java"


# instance fields
.field final synthetic a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 301
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aq;-><init>(Landroid/view/View;)V

    .line 302
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->a(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/c;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/c;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 309
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 315
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v1}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->b(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/k;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/internal/view/menu/b;->a:Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    invoke-static {v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->c(Landroid/support/v7/internal/view/menu/ActionMenuItemView;)Landroid/support/v7/internal/view/menu/m;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/internal/view/menu/k;->a(Landroid/support/v7/internal/view/menu/m;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/b;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/widget/ListPopupWindow;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 319
    :cond_0
    return v0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/b;->a()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->a()V

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
