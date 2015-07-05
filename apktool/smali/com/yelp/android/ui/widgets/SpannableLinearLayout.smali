.class public Lcom/yelp/android/ui/widgets/SpannableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "SpannableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# instance fields
.field final a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 27
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a()Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    if-nez v0, :cond_1

    .line 69
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 72
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 73
    array-length v2, v1

    if-lez v2, :cond_0

    .line 74
    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b(Landroid/view/View;)V

    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 88
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->isClickable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->refreshDrawableState()V

    .line 112
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 113
    return-void
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setLeft(Z)V

    .line 54
    return-void
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setMiddle(Z)V

    .line 63
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->refreshDrawableState()V

    .line 105
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setRight(Z)V

    .line 45
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableLinearLayout;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 93
    return-void
.end method
