.class Landroid/support/v7/app/t;
.super Landroid/support/v7/app/ac;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/u;


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0, p2}, Landroid/support/v7/app/ac;-><init>(Landroid/content/Context;)V

    .line 486
    iput-object p1, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    .line 487
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .prologue
    .line 490
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/app/t;->a(Z)V

    .line 495
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/app/ac;->b(F)V

    .line 496
    return-void

    .line 492
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/app/t;->a(Z)V

    goto :goto_0
.end method

.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 500
    iget-object v1, p0, Landroid/support/v7/app/t;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ce;->h(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
