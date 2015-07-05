.class public Lcom/yelp/android/ui/widgets/TwoTierButton;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "TwoTierButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private i:Lcom/yelp/android/ui/widgets/ap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f010161

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 38
    const/4 v1, 0x4

    const v2, 0x7f030153

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/dj;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 40
    sget-object v0, Lcom/yelp/android/b;->PanelLabelValue:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 42
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 43
    const v0, 0x7f0c03ec

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->g:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0c03ed

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 50
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 54
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/ap;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/ap;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/ui/widgets/ap;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;[I)V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 148
    if-eqz v1, :cond_2

    .line 149
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 150
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 152
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 149
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_2
    invoke-super {p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->drawableStateChanged()V

    .line 157
    return-void
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValue()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a()Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    if-nez v0, :cond_0

    .line 102
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 105
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 106
    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/ap;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/ap;

    .line 161
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 119
    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isClickable()Z

    move-result v0

    .line 124
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setClickable(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isClickable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->refreshDrawableState()V

    .line 128
    :cond_0
    return-void
.end method

.method public setDrawable(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 96
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setLeft(Z)V

    .line 65
    return-void
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setMiddle(Z)V

    .line 70
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->refreshDrawableState()V

    .line 114
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setRight(Z)V

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 138
    return-void
.end method
