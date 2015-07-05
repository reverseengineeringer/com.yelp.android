.class public Landroid/support/v7/internal/widget/ap;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ac;


# static fields
.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/support/v7/internal/widget/as;

.field private e:Landroid/support/v7/widget/LinearLayoutCompat;

.field private f:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/ap;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Landroid/support/v7/app/b;Z)Landroid/support/v7/internal/widget/at;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 289
    new-instance v0, Landroid/support/v7/internal/widget/at;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/internal/widget/at;-><init>(Landroid/support/v7/internal/widget/ap;Landroid/content/Context;Landroid/support/v7/app/b;Z)V

    .line 290
    if-eqz p2, :cond_0

    .line 291
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/at;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ap;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/at;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_0
    return-object v0

    .line 295
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/at;->setFocusable(Z)V

    .line 297
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->d:Landroid/support/v7/internal/widget/as;

    if-nez v1, :cond_1

    .line 298
    new-instance v1, Landroid/support/v7/internal/widget/as;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/as;-><init>(Landroid/support/v7/internal/widget/ap;Landroid/support/v7/internal/widget/aq;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ap;->d:Landroid/support/v7/internal/widget/as;

    .line 300
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->d:Landroid/support/v7/internal/widget/as;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/at;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ap;Landroid/support/v7/app/b;Z)Landroid/support/v7/internal/widget/at;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ap;->a(Landroid/support/v7/app/b;Z)Landroid/support/v7/internal/widget/at;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ap;)Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->d()Landroid/support/v7/internal/widget/SpinnerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 156
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->removeView(Landroid/view/View;)V

    .line 157
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->c()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/support/v7/internal/widget/ar;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ar;-><init>(Landroid/support/v7/internal/widget/ap;Landroid/support/v7/internal/widget/aq;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/widget/SpinnerAdapter;)V

    .line 162
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 164
    iput-object v4, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    .line 166
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v1, p0, Landroid/support/v7/internal/widget/ap;->i:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 170
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return v4

    .line 172
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->removeView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ap;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->setTabSelected(I)V

    goto :goto_0
.end method

.method private d()Landroid/support/v7/internal/widget/SpinnerCompat;
    .locals 4

    .prologue
    .line 211
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/yelp/android/g/b;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 213
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->a(Landroid/support/v7/internal/widget/ac;)V

    .line 216
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 258
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ap;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/aq;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/aq;-><init>(Landroid/support/v7/internal/widget/ap;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    .line 268
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->post(Ljava/lang/Runnable;)Z

    .line 269
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/z;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/internal/widget/z",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 367
    check-cast p2, Landroid/support/v7/internal/widget/at;

    .line 368
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/at;->b()Landroid/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/b;->d()V

    .line 369
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 221
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/l/a;->a(Landroid/content/Context;)Lcom/yelp/android/l/a;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Lcom/yelp/android/l/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ap;->setContentHeight(I)V

    .line 228
    invoke-virtual {v0}, Lcom/yelp/android/l/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ap;->c:I

    .line 229
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 95
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->setFillViewport(Z)V

    .line 98
    iget-object v4, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    .line 99
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 101
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ap;->b:I

    .line 106
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/ap;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ap;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ap;->b:I

    .line 111
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/ap;->h:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 113
    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ap;->g:Z

    if-eqz v4, :cond_5

    .line 115
    :goto_3
    if-eqz v1, :cond_7

    .line 117
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 118
    iget-object v1, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 119
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->b()V

    .line 127
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->getMeasuredWidth()I

    move-result v1

    .line 128
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 129
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->getMeasuredWidth()I

    move-result v2

    .line 131
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 133
    iget v0, p0, Landroid/support/v7/internal/widget/ap;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ap;->setTabSelected(I)V

    .line 135
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 95
    goto :goto_0

    .line 104
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ap;->b:I

    goto :goto_1

    .line 108
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/ap;->b:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 113
    goto :goto_3

    .line 121
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->c()Z

    goto :goto_4

    .line 124
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ap;->c()Z

    goto :goto_4
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 147
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ap;->g:Z

    .line 148
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 196
    iput p1, p0, Landroid/support/v7/internal/widget/ap;->h:I

    .line 197
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ap;->requestLayout()V

    .line 198
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 180
    iput p1, p0, Landroid/support/v7/internal/widget/ap;->i:I

    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 182
    :goto_0
    if-ge v2, v3, :cond_2

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 184
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 185
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ap;->a(I)V

    .line 182
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 184
    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 191
    iget-object v0, p0, Landroid/support/v7/internal/widget/ap;->f:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 193
    :cond_3
    return-void
.end method
