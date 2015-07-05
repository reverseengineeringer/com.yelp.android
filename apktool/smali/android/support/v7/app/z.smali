.class Landroid/support/v7/app/z;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/r;


# instance fields
.field final a:Landroid/support/v7/widget/Toolbar;

.field final b:Landroid/graphics/drawable/Drawable;

.field final c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 637
    iput-object p1, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/widget/Toolbar;

    .line 638
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/z;->b:Landroid/graphics/drawable/Drawable;

    .line 639
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/z;->c:Ljava/lang/CharSequence;

    .line 640
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Landroid/support/v7/app/z;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setActionBarDescription(I)V
    .locals 2

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    iget-object v0, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/app/z;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/z;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0
.end method
