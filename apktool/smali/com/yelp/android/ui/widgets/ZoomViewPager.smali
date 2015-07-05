.class public Lcom/yelp/android/ui/widgets/ZoomViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ZoomViewPager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;ZIII)Z
    .locals 1

    .prologue
    .line 23
    instance-of v0, p1, Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lcom/yelp/android/ui/widgets/ScaleWebImageView;

    neg-int v0, p3

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/widgets/ScaleWebImageView;->canScrollHorizontally(I)Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/support/v4/view/ViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    goto :goto_0
.end method
