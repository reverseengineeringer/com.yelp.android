.class Landroid/support/v4/view/ar;
.super Ljava/lang/Object;
.source "ViewCompatLollipop.java"


# direct methods
.method public static a(Landroid/view/View;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;
    .locals 2

    .prologue
    .line 90
    instance-of v0, p1, Landroid/support/v4/view/bh;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Landroid/support/v4/view/bh;

    invoke-virtual {v0}, Landroid/support/v4/view/bh;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 96
    if-eq v1, v0, :cond_0

    .line 98
    new-instance p1, Landroid/support/v4/view/bh;

    invoke-direct {p1, v1}, Landroid/support/v4/view/bh;-><init>(Landroid/view/WindowInsets;)V

    .line 101
    :cond_0
    return-object p1
.end method

.method public static a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    .line 36
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 40
    return-void
.end method

.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 87
    return-void
.end method

.method public static a(Landroid/view/View;Landroid/support/v4/view/ab;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/support/v4/view/ar$1;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ar$1;-><init>(Landroid/support/v4/view/ab;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 67
    return-void
.end method

.method public static b(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/View;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;
    .locals 2

    .prologue
    .line 105
    instance-of v0, p1, Landroid/support/v4/view/bh;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 107
    check-cast v0, Landroid/support/v4/view/bh;

    invoke-virtual {v0}, Landroid/support/v4/view/bh;->g()Landroid/view/WindowInsets;

    move-result-object v0

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 111
    if-eq v1, v0, :cond_0

    .line 113
    new-instance p1, Landroid/support/v4/view/bh;

    invoke-direct {p1, v1}, Landroid/support/v4/view/bh;-><init>(Landroid/view/WindowInsets;)V

    .line 116
    :cond_0
    return-object p1
.end method

.method public static c(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0
.end method

.method public static d(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    .line 133
    return-void
.end method

.method public static f(Landroid/view/View;)F
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0
.end method
