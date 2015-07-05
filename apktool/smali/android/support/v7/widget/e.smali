.class Landroid/support/v7/widget/e;
.super Landroid/support/v7/internal/widget/TintImageView;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/k;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionMenuPresenter;

.field private final b:[F


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    iput-object p1, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 588
    const/4 v0, 0x0

    sget v1, Lcom/yelp/android/g/b;->actionOverflowButtonStyle:I

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 585
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/e;->b:[F

    .line 590
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->setClickable(Z)V

    .line 591
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->setFocusable(Z)V

    .line 592
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->setVisibility(I)V

    .line 593
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/e;->setEnabled(Z)V

    .line 595
    new-instance v0, Landroid/support/v7/widget/f;

    invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/f;-><init>(Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 624
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .prologue
    .line 639
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x0

    return v0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 628
    invoke-super {p0}, Landroid/support/v7/internal/widget/TintImageView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    :goto_0
    return v1

    .line 632
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/e;->playSoundEffect(I)V

    .line 633
    iget-object v0, p0, Landroid/support/v7/widget/e;->a:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c()Z

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 649
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/internal/widget/TintImageView;->setFrame(IIII)Z

    move-result v0

    .line 652
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 653
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 654
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 655
    iget-object v3, p0, Landroid/support/v7/widget/e;->b:[F

    .line 656
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    aput v1, v3, v5

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 658
    aget v1, v3, v5

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 659
    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/e;->getHeight()I

    move-result v4

    invoke-static {v2, v1, v5, v3, v4}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 662
    :cond_0
    return v0
.end method
