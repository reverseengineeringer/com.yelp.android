.class public Lcom/yelp/android/ui/widgets/OverlayWithSeam;
.super Landroid/widget/FrameLayout;
.source "OverlayWithSeam.java"


# instance fields
.field private final a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/OverlayWithSeam;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f010087

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/OverlayWithSeam;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 34
    const v1, 0x7f03012a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 36
    sget-object v0, Lcom/yelp/android/b;->OverlayWithSeam:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 38
    const v0, 0x7f0c040f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    iget-object v2, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    const v3, 0x7f0c00ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    const v2, 0x7f0c0411

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    const v2, 0x7f0c0410

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 47
    const v0, 0x7f0c0412

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 48
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 49
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 51
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 53
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/OverlayWithSeam;->a:Landroid/view/View;

    invoke-virtual {v1, p1, v0}, Landroid/view/View;->measure(II)V

    .line 75
    :cond_0
    return-void
.end method
