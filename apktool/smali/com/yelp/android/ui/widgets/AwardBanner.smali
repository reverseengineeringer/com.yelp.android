.class public Lcom/yelp/android/ui/widgets/AwardBanner;
.super Landroid/widget/RelativeLayout;
.source "AwardBanner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/AwardBanner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 31
    const v1, 0x7f030055

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/AwardBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/b;->AwardBanner:[I

    invoke-virtual {v0, p2, v1, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 36
    const/4 v0, 0x2

    const v2, 0x7f0a0010

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 38
    const v0, 0x7f0c01cf

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AwardBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v0, 0x7f0c01d0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AwardBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    const v0, 0x7f0c01d1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AwardBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    const v0, 0x7f0c01ce

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/AwardBanner;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method
