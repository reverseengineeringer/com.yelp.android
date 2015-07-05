.class Landroid/support/v7/app/x;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/r;


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    iput-object p1, p0, Landroid/support/v7/app/x;->a:Landroid/app/Activity;

    .line 579
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/q;)V
    .locals 0

    .prologue
    .line 573
    invoke-direct {p0, p1}, Landroid/support/v7/app/x;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 599
    :goto_0
    return-object v0

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 583
    invoke-virtual {p0}, Landroid/support/v7/app/x;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x101030b

    aput v3, v2, v4

    const v3, 0x10102ce

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 586
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 587
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Landroid/support/v7/app/x;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 621
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    .line 624
    :cond_0
    return-void
.end method
