.class public Lcom/yelp/android/ui/widgets/PieProgress;
.super Landroid/widget/CompoundButton;
.source "PieProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/widgets/PieProgress$1;,
        Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/widgets/PieProgress;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/widgets/PieProgress;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    const/16 v0, 0x64

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    .line 41
    iput v2, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->c:I

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->e:Landroid/graphics/RectF;

    .line 45
    if-eqz p2, :cond_0

    .line 47
    sget-object v0, Lcom/yelp/android/b$a;->PieProgress:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 49
    iget v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->c:I

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->d:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->d:Landroid/graphics/Paint;

    iget v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->d:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/PieProgress;->setProgress(I)V

    .line 72
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/PieProgress;->setProgress(I)V

    .line 90
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/PieProgress;->setProgressColor(I)V

    .line 91
    return-void
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->e:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/PieProgress;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/PieProgress;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->e:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c0000    # -90.0f

    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    mul-int/lit16 v0, v0, 0x168

    iget v3, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    div-int/2addr v0, v3

    int-to-float v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/yelp/android/ui/widgets/PieProgress;->d:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 153
    instance-of v0, p1, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    if-nez v0, :cond_0

    .line 154
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    check-cast p1, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    .line 159
    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    .line 162
    invoke-static {p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/widget/CompoundButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 142
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/PieProgress;->isSaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 144
    iget v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->a(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I

    .line 145
    iget v1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;->b(Lcom/yelp/android/ui/widgets/PieProgress$SavedState;I)I

    .line 148
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->a:I

    if-gt p1, v0, :cond_0

    .line 83
    iput p1, p0, Lcom/yelp/android/ui/widgets/PieProgress;->b:I

    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/ui/widgets/PieProgress;->invalidate()V

    .line 86
    :cond_0
    return-void
.end method

.method public setProgressColor(I)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/PieProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    return-void
.end method
