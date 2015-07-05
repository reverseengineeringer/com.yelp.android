.class public Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimationFrameLayout.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/nearby/f;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 51
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 63
    return-void
.end method

.method private a(IF)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getTranslation()I

    move-result v0

    sub-int v1, v0, p1

    .line 145
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 146
    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 147
    const v0, 0x459c4000    # 5000.0f

    .line 151
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 152
    int-to-float v2, v1

    div-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 154
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/e;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/e;-><init>(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 181
    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v1

    invoke-direct {v2, v3, v3, v1, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 178
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 179
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/f;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/f;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/f;->b()V

    .line 110
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/f;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/f;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/f;->a()V

    .line 116
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    if-eqz v0, :cond_1

    .line 185
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 186
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d()V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    if-eqz v0, :cond_0

    .line 188
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 189
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d()V

    .line 123
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 133
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(IF)V

    .line 134
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 127
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c()V

    .line 128
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 138
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(IF)V

    .line 139
    return-void
.end method

.method public getBottomThreshold()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    return v0
.end method

.method public getTopThreshold()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    return v0
.end method

.method public getTranslation()I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 79
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    .line 82
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 207
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 208
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e()V

    .line 209
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    .line 197
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    if-eqz v0, :cond_1

    .line 198
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    if-eqz v0, :cond_0

    .line 200
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    goto :goto_0
.end method

.method public setBottomThreshold(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    .line 100
    return-void
.end method

.method public setSlideFrameCallback(Lcom/yelp/android/ui/activities/nearby/f;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/f;

    .line 88
    return-void
.end method

.method public setTopThreshold(I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    .line 92
    return-void
.end method

.method public setTranslation(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslationY(F)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
