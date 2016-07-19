.class public Lcom/yelp/android/ui/widgets/SpannedImageView;
.super Landroid/widget/ImageView;
.source "SpannedImageView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/yelp/android/ui/widgets/SpannableWidget;


# instance fields
.field private final a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/yelp/android/co/a$b;->spannedTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/SpannedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-direct {v0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    .line 20
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannedImageView;->refreshDrawableState()V

    .line 21
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a()Z

    move-result v0

    return v0
.end method

.method public onCreateDrawableState(I)[I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    if-nez v0, :cond_1

    .line 62
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 70
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;)[I

    move-result-object v1

    .line 65
    array-length v0, v1

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 66
    array-length v2, v1

    if-lez v2, :cond_0

    .line 67
    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/SpannedImageView;->mergeDrawableStates([I[I)[I

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->b(Landroid/view/View;)V

    .line 91
    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Landroid/view/View;Z)V

    .line 81
    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannedImageView;->isClickable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannedImageView;->refreshDrawableState()V

    .line 105
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 106
    return-void
.end method

.method public setLeft(Z)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setLeft(Z)V

    .line 47
    return-void
.end method

.method public setMiddle(Z)V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setMiddle(Z)V

    .line 56
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/yelp/android/ui/widgets/c;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->a(Lcom/yelp/android/ui/widgets/c;)V

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/SpannedImageView;->refreshDrawableState()V

    .line 98
    return-void
.end method

.method public setRight(Z)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->setRight(Z)V

    .line 38
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/SpannedImageView;->a:Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;

    invoke-virtual {v0, p0}, Lcom/yelp/android/ui/widgets/SpannableWidget$SpannableWidgetUtil;->c(Landroid/view/View;)V

    .line 86
    return-void
.end method
