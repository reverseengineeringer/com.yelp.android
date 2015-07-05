.class public Lcom/yelp/android/ui/util/ab;
.super Lcom/yelp/android/ui/util/bh;
.source "HideToolbarAnimationListener.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:Z

.field private d:F


# direct methods
.method public varargs constructor <init>(Landroid/view/View;Landroid/view/View;[Landroid/view/View;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/util/bh;-><init>(Landroid/view/View;Landroid/view/View;)V

    .line 34
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ab;->b:F

    .line 35
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ab;->a:Ljava/util/List;

    .line 36
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    .line 37
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    .line 115
    return-void
.end method

.method protected a(F)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 105
    neg-float v2, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 60
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->d()V

    .line 61
    return-void
.end method

.method public b(F)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    neg-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 76
    iget v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 80
    iget v0, p0, Lcom/yelp/android/ui/util/ab;->b:F

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->a()V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yelp/android/ui/util/ab;->b:F

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->a()V

    .line 67
    return-void
.end method

.method public c(F)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 93
    iget v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    neg-float v0, v0

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 97
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/ab;->a(F)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->d()V

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    .line 111
    return-void
.end method

.method protected e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 118
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    if-eqz v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    aput v2, v0, v1

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/yelp/android/ui/util/ac;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/ac;-><init>(Lcom/yelp/android/ui/util/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 131
    new-instance v1, Lcom/yelp/android/ui/util/ad;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/ad;-><init>(Lcom/yelp/android/ui/util/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 138
    iput-boolean v4, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    .line 139
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 143
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    if-eqz v0, :cond_0

    .line 164
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    neg-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget v1, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/yelp/android/ui/util/ae;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/ae;-><init>(Lcom/yelp/android/ui/util/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 156
    new-instance v1, Lcom/yelp/android/ui/util/af;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/af;-><init>(Lcom/yelp/android/ui/util/ab;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    iput-boolean v4, p0, Lcom/yelp/android/ui/util/ab;->c:Z

    .line 163
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    .line 169
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 54
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/bh;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    iget v2, p0, Lcom/yelp/android/ui/util/ab;->b:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4000000000000L    # 1.25

    div-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->e()V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    iget v1, p0, Lcom/yelp/android/ui/util/ab;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ab;->f()V

    goto :goto_0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ab;->o:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/ab;->d:F

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
