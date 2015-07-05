.class Landroid/support/v7/app/w;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/r;


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/support/v7/app/ab;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Landroid/support/v7/app/w;->a:Landroid/app/Activity;

    .line 529
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/q;)V
    .locals 0

    .prologue
    .line 522
    invoke-direct {p0, p1}, Landroid/support/v7/app/w;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 545
    :goto_0
    return-object v0

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/app/Activity;

    goto :goto_0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/support/v7/app/w;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/aa;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/support/v7/app/w;->b:Landroid/support/v7/app/ab;

    iget-object v1, p0, Landroid/support/v7/app/w;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/aa;->a(Landroid/support/v7/app/ab;Landroid/app/Activity;I)Landroid/support/v7/app/ab;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/w;->b:Landroid/support/v7/app/ab;

    .line 567
    return-void
.end method
