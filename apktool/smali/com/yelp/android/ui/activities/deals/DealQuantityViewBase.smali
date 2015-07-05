.class public abstract Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;
.super Landroid/widget/RelativeLayout;
.source "DealQuantityViewBase.java"

# interfaces
.implements Lcom/yelp/android/ui/widgets/s;


# instance fields
.field protected final a:Landroid/widget/TextView;

.field private final b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 44
    const/4 v1, 0x4

    const v2, 0x7f03008d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 46
    const v0, 0x7f0c0252

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantityChangeListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 48
    const v0, 0x7f0c0253

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->a:Landroid/widget/TextView;

    .line 49
    sget-object v0, Lcom/yelp/android/b;->QuantityDropDownView:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setStartRange(I)V

    .line 53
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    const/4 v2, 0x2

    const v3, 0x7fffffff

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setEndRange(I)V

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->setEnabled(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public a(ILcom/yelp/android/ui/widgets/QuantityDropDownView;)V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method public getQuantity()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->getQuantity()Ljava/lang/Integer;

    move-result-object v0

    .line 108
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setEnabled(Z)V

    .line 63
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->getVisibility()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->forceLayout()V

    .line 65
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setQuantity(I)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantity(I)V

    .line 99
    return-void
.end method

.method public setQuantityListener(Lcom/yelp/android/ui/widgets/s;)V
    .locals 4

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantityChangeListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->b:Lcom/yelp/android/ui/widgets/QuantityDropDownView;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ae;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/yelp/android/ui/widgets/s;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-direct {v1, v2}, Lcom/yelp/android/ui/activities/deals/ae;-><init>([Lcom/yelp/android/ui/widgets/s;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/QuantityDropDownView;->setQuantityChangeListener(Lcom/yelp/android/ui/widgets/s;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/DealQuantityViewBase;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method
