.class public Lcom/yelp/android/ui/widgets/YelpViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "YelpViewPager.java"


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/yelp/android/ui/widgets/YelpViewPager;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method private d(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpViewPager;->getAdapter()Landroid/support/v4/view/ac;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ac;->c(I)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 39
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v1, v0

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 43
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/YelpViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 44
    sget v4, Lcom/yelp/android/ui/widgets/YelpViewPager;->a:I

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->measure(II)V

    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return v1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpViewPager;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/YelpViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, p1}, Lcom/yelp/android/ui/widgets/YelpViewPager;->d(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/widgets/YelpViewPager;->setMeasuredDimension(II)V

    .line 34
    :cond_0
    return-void
.end method
