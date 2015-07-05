.class public Lcom/yelp/android/ui/util/PullDownListView;
.super Landroid/widget/ListView;
.source "PullDownListView.java"


# instance fields
.field private a:F

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Landroid/support/v4/widget/ax;

.field private i:I

.field private j:F

.field private k:Lcom/yelp/android/ui/util/bi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->a(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->a(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/util/PullDownListView;->a(Landroid/content/Context;)V

    .line 81
    return-void
.end method

.method private a(F)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->k:Lcom/yelp/android/ui/util/bi;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->k:Lcom/yelp/android/ui/util/bi;

    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->j:F

    div-float v1, p1, v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/bi;->a(F)V

    .line 261
    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 239
    iget v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->d:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->a(F)V

    .line 241
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->e:Z

    .line 85
    iput-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->g:Z

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    .line 89
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-static {p1, v0}, Landroid/support/v4/widget/ax;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->h:Landroid/support/v4/widget/ax;

    .line 91
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->i:I

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->j:F

    .line 93
    return-void
.end method

.method private b(F)Z
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->k:Lcom/yelp/android/ui/util/bi;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->k:Lcom/yelp/android/ui/util/bi;

    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->j:F

    div-float v1, p1, v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/bi;->b(F)Z

    move-result v0

    .line 267
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/PullDownListView;->getOverScrollMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 112
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/PullDownListView;->setOverScrollMode(I)V

    .line 114
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/PullDownListView;->getOverScrollMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->setOverScrollMode(I)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->e:Z

    return v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->d:I

    iget-object v3, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->g:Z

    .line 226
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->h:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->h:Landroid/support/v4/widget/ax;

    invoke-virtual {v0}, Landroid/support/v4/widget/ax;->c()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->a(I)V

    .line 247
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->g:Z

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 125
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 137
    :goto_0
    return v0

    .line 128
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 129
    if-nez v0, :cond_2

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->a:F

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->f:Z

    .line 137
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 145
    iget-boolean v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    if-nez v0, :cond_1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 149
    :cond_1
    invoke-static {p1}, Landroid/support/v4/view/ba;->a(Landroid/view/MotionEvent;)I

    move-result v0

    .line 150
    packed-switch v0, :pswitch_data_0

    .line 211
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/yelp/android/ui/util/PullDownListView;->d()V

    .line 213
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 152
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->a:F

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 153
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->f:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->i:I

    if-le v0, v2, :cond_3

    .line 155
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/PullDownListView;->f:Z

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->a:F

    move v0, v1

    .line 162
    :cond_3
    iget-boolean v2, p0, Lcom/yelp/android/ui/util/PullDownListView;->f:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/PullDownListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_2

    .line 165
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/PullDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-gez v1, :cond_4

    .line 167
    iput v3, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    goto :goto_1

    .line 171
    :cond_4
    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    if-ne v1, v3, :cond_6

    .line 173
    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/util/PullDownListView;->c()V

    .line 184
    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->d:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->a(I)V

    move v0, v6

    .line 185
    goto :goto_0

    .line 174
    :cond_6
    iget v1, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    if-le v1, v0, :cond_5

    .line 176
    iput v3, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    goto :goto_1

    .line 191
    :pswitch_1
    iput v3, p0, Lcom/yelp/android/ui/util/PullDownListView;->b:I

    .line 194
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 195
    iget v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->d:I

    sub-int v3, v2, v0

    .line 197
    if-lez v3, :cond_2

    int-to-float v0, v3

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/PullDownListView;->b(F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    int-to-float v0, v3

    const v4, 0x3f99999a    # 1.2f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->h:Landroid/support/v4/widget/ax;

    neg-int v4, v3

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ax;->a(IIIII)V

    .line 201
    iput-boolean v6, p0, Lcom/yelp/android/ui/util/PullDownListView;->g:Z

    .line 203
    invoke-static {p0}, Landroid/support/v4/view/ce;->d(Landroid/view/View;)V

    goto :goto_1

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnPullDownListener(Lcom/yelp/android/ui/util/bi;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/yelp/android/ui/util/PullDownListView;->k:Lcom/yelp/android/ui/util/bi;

    .line 255
    return-void
.end method

.method public setPullDownEnabled(Z)V
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/yelp/android/ui/util/PullDownListView;->e:Z

    .line 104
    return-void
.end method

.method public setPullTarget(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iput-object p1, p0, Lcom/yelp/android/ui/util/PullDownListView;->c:Landroid/view/View;

    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/util/PullDownListView;->d:I

    .line 100
    :cond_0
    return-void
.end method
