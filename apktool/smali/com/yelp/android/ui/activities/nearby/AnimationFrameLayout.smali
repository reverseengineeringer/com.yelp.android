.class public Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimationFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

.field private b:I

.field private c:I

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 45
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 45
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 45
    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 57
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
    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getTranslation()I

    move-result v0

    sub-int v1, v0, p1

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 127
    const/high16 v2, 0x44480000    # 800.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    .line 128
    const v0, 0x459c4000    # 5000.0f

    .line 132
    :cond_0
    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    .line 133
    int-to-float v1, v1

    div-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$1;-><init>(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 160
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;->b()V

    .line 91
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;->a()V

    .line 97
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    if-eqz v0, :cond_1

    .line 164
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 165
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d()V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    if-eqz v0, :cond_0

    .line 167
    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 168
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c()V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 103
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d()V

    .line 104
    return-void
.end method

.method public a(F)V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    .line 114
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(IF)V

    .line 115
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 108
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c()V

    .line 109
    return-void
.end method

.method public b(F)V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    .line 119
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a(IF)V

    .line 120
    return-void
.end method

.method public getBottomThreshold()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    return v0
.end method

.method public getTopThreshold()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    return v0
.end method

.method public getTranslation()I
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 187
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e()V

    .line 188
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    .line 176
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->d:Z

    if-eqz v0, :cond_1

    .line 177
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->e:Z

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslation(I)V

    goto :goto_0
.end method

.method public setBottomThreshold(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->c:I

    .line 81
    return-void
.end method

.method public setSlideFrameCallback(Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->a:Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout$a;

    .line 69
    return-void
.end method

.method public setTopThreshold(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->b:I

    .line 73
    return-void
.end method

.method public setTranslation(I)V
    .locals 1

    .prologue
    .line 60
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/AnimationFrameLayout;->setTranslationY(F)V

    .line 61
    return-void
.end method
