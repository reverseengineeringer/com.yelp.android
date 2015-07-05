.class public abstract Lcom/yelp/android/ui/util/bh;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "OnScrollTriggerAnimationListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:F

.field private b:Landroid/view/GestureDetector;

.field protected j:Z

.field protected k:D

.field protected l:D

.field protected m:D

.field protected n:I

.field protected o:Landroid/view/View;

.field protected p:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    .prologue
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    .line 67
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 34
    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    .line 35
    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    .line 36
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->m:D

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/util/bh;->n:I

    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/util/bh;->o:Landroid/view/View;

    .line 69
    iput-object p2, p0, Lcom/yelp/android/ui/util/bh;->p:Landroid/view/View;

    .line 70
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/yelp/android/ui/util/bh;->p:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/bh;->b:Landroid/view/GestureDetector;

    .line 71
    return-void
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract b(F)V
.end method

.method public abstract c()V
.end method

.method public abstract c(F)V
.end method

.method protected g()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/bh;->a:F

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bh;->j:Z

    .line 91
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 76
    cmpg-float v1, p4, v2

    if-gez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bh;->c()V

    .line 84
    :goto_0
    return v0

    .line 79
    :cond_0
    cmpl-float v1, p4, v2

    if-lez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bh;->b()V

    goto :goto_0

    .line 83
    :cond_1
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/bh;->j:Z

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/util/bh;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 97
    if-eqz v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 104
    :pswitch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    .line 105
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    goto :goto_1

    .line 108
    :pswitch_1
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/bh;->j:Z

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 113
    iget v0, p0, Lcom/yelp/android/ui/util/bh;->a:F

    sub-float v3, v2, v0

    .line 117
    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    float-to-double v4, v3

    sub-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-gtz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    float-to-double v4, v3

    sub-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_4

    :cond_3
    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    float-to-double v0, v2

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    .line 122
    float-to-double v0, v3

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->m:D

    .line 123
    const/4 v0, 0x0

    cmpg-float v0, v3, v0

    if-gez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    iput v0, p0, Lcom/yelp/android/ui/util/bh;->n:I

    .line 126
    :cond_4
    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->k:D

    float-to-double v4, v3

    sub-double/2addr v0, v4

    const-wide/16 v4, 0x0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_6

    const/4 v0, 0x1

    .line 128
    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 132
    iget-wide v4, p0, Lcom/yelp/android/ui/util/bh;->l:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_7

    iget v4, p0, Lcom/yelp/android/ui/util/bh;->n:I

    if-ne v0, v4, :cond_7

    float-to-double v4, v2

    iget-wide v6, p0, Lcom/yelp/android/ui/util/bh;->l:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_7

    .line 136
    iget-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    double-to-float v0, v0

    iput v0, p0, Lcom/yelp/android/ui/util/bh;->a:F

    .line 137
    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    iput-wide v0, p0, Lcom/yelp/android/ui/util/bh;->l:D

    .line 138
    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bh;->g()V

    .line 147
    :goto_4
    float-to-double v4, v3

    iput-wide v4, p0, Lcom/yelp/android/ui/util/bh;->k:D

    .line 149
    iget v1, p0, Lcom/yelp/android/ui/util/bh;->a:F

    cmpg-float v1, v2, v1

    if-gez v1, :cond_9

    .line 150
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/bh;->b(F)V

    goto/16 :goto_1

    .line 123
    :cond_5
    const/4 v0, 0x2

    goto :goto_2

    .line 126
    :cond_6
    const/4 v0, 0x2

    goto :goto_3

    .line 140
    :cond_7
    iget v4, p0, Lcom/yelp/android/ui/util/bh;->n:I

    if-eq v0, v4, :cond_8

    iget-wide v4, p0, Lcom/yelp/android/ui/util/bh;->l:D

    float-to-double v6, v2

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/yelp/android/appdata/ao;->a(I)I

    move-result v0

    int-to-double v6, v0

    cmpl-double v0, v4, v6

    if-lez v0, :cond_8

    .line 145
    const-wide/high16 v4, 0x7ff8000000000000L    # NaN

    iput-wide v4, p0, Lcom/yelp/android/ui/util/bh;->l:D

    :cond_8
    move v0, v1

    goto :goto_4

    .line 151
    :cond_9
    iget v1, p0, Lcom/yelp/android/ui/util/bh;->a:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_1

    .line 152
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/bh;->c(F)V

    goto/16 :goto_1

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
