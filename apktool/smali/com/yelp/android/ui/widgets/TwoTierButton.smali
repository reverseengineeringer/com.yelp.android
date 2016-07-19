.class public Lcom/yelp/android/ui/widgets/TwoTierButton;
.super Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;
.source "TwoTierButton.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/TwoTierButton$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private i:Lcom/yelp/android/ui/widgets/TwoTierButton$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 33
    const v0, 0x7f0101cf

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 39
    const/4 v1, 0x4

    const v2, 0x7f0301b9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/util/ay;->a(Landroid/view/ViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/SparseIntArray;)V

    .line 41
    sget-object v0, Lcom/yelp/android/b$a;->PanelLabelValue:[I

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 43
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 44
    const v0, 0x7f0f04d1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->b:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0f04d2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    .line 47
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setLabel(Ljava/lang/CharSequence;)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->setValue(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 51
    const/4 v0, 0x3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 55
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/TwoTierButton$a;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/TwoTierButton$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getDrawableState()[I

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton$a;->a(Lcom/yelp/android/ui/widgets/TwoTierButton;[I)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 149
    if-eqz v1, :cond_2

    .line 150
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 151
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->getDrawableState()[I

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 153
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_2
    invoke-super {p0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->drawableStateChanged()V

    .line 158
    return-void
.end method

.method public getLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getValue()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a()Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    if-nez v0, :cond_0

    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 106
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 107
    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/TwoTierButton;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public setButtonStateChangedListener(Lcom/yelp/android/ui/widgets/TwoTierButton$a;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->i:Lcom/yelp/android/ui/widgets/TwoTierButton$a;

    .line 162
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 120
    return-void
.end method

.method public setClickable(Z)V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isClickable()Z

    move-result v0

    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/SlightlyLessBrokenLinearLayout;->setClickable(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->isClickable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->refreshDrawableState()V

    .line 129
    :cond_0
    return-void
.end method

.method public setDrawable(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 97
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setLeft(Z)V

    .line 66
    return-void
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setMiddle(Z)V

    .line 71
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Lcom/yelp/android/ui/widgets/c;)V

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/TwoTierButton;->refreshDrawableState()V

    .line 115
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setRight(Z)V

    .line 61
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/TwoTierButton;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 139
    return-void
.end method
