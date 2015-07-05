.class public Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpannableRelativeLayout.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# instance fields
.field final mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 22
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a()Z

    move-result v0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    if-nez v0, :cond_1

    .line 64
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 67
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 68
    array-length v2, v1

    if-lez v2, :cond_0

    .line 69
    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b(Landroid/view/View;)V

    .line 93
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 83
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->isClickable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->refreshDrawableState()V

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 108
    return-void
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setLeft(Z)V

    .line 49
    return-void
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setMiddle(Z)V

    .line 58
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/j;)V

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->refreshDrawableState()V

    .line 100
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setRight(Z)V

    .line 40
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannableRelativeLayout;->mUtil:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 88
    return-void
.end method
