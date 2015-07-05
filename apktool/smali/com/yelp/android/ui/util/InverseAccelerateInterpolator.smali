.class public Lcom/yelp/android/ui/util/InverseAccelerateInterpolator;
.super Landroid/view/animation/AccelerateInterpolator;
.source "InverseAccelerateInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method
