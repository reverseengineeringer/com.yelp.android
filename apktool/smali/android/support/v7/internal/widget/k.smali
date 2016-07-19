.class public Landroid/support/v7/internal/widget/k;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/widget/k$b;,
        Landroid/support/v7/internal/widget/k$a;,
        Landroid/support/v7/internal/widget/k$c;
    }
.end annotation


# static fields
.field private static final j:Landroid/view/animation/Interpolator;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/support/v7/internal/widget/k$b;

.field private e:Landroid/support/v7/widget/LinearLayoutCompat;

.field private f:Landroid/widget/Spinner;

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/internal/widget/k;->j:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private a(Landroid/support/v7/app/ActionBar$b;Z)Landroid/support/v7/internal/widget/k$c;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 292
    new-instance v0, Landroid/support/v7/internal/widget/k$c;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/internal/widget/k$c;-><init>(Landroid/support/v7/internal/widget/k;Landroid/content/Context;Landroid/support/v7/app/ActionBar$b;Z)V

    .line 293
    if-eqz p2, :cond_0

    .line 294
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/k$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/k;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k$c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k$c;->setFocusable(Z)V

    .line 300
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->d:Landroid/support/v7/internal/widget/k$b;

    if-nez v1, :cond_1

    .line 301
    new-instance v1, Landroid/support/v7/internal/widget/k$b;

    invoke-direct {v1, p0, v2}, Landroid/support/v7/internal/widget/k$b;-><init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/k$1;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/k;->d:Landroid/support/v7/internal/widget/k$b;

    .line 303
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->d:Landroid/support/v7/internal/widget/k$b;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/k$c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/k;Landroid/support/v7/app/ActionBar$b;Z)Landroid/support/v7/internal/widget/k$c;
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/k;->a(Landroid/support/v7/app/ActionBar$b;Z)Landroid/support/v7/internal/widget/k$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/k;)Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

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

    .line 153
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 156
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->d()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    .line 158
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->removeView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    new-instance v1, Landroid/support/v7/internal/widget/k$a;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/k$a;-><init>(Landroid/support/v7/internal/widget/k;Landroid/support/v7/internal/widget/k$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 164
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 166
    iput-object v4, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    .line 168
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    iget v1, p0, Landroid/support/v7/internal/widget/k;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    :goto_0
    return v4

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->setTabSelected(I)V

    goto :goto_0
.end method

.method private d()Landroid/widget/Spinner;
    .locals 4

    .prologue
    .line 213
    new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcom/yelp/android/j/a$a;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 219
    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 261
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/k;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    :cond_0
    new-instance v1, Landroid/support/v7/internal/widget/k$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/k$1;-><init>(Landroid/support/v7/internal/widget/k;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    .line 271
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 276
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 277
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->post(Ljava/lang/Runnable;)Z

    .line 281
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 224
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/p/a;->a(Landroid/content/Context;)Lcom/yelp/android/p/a;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/yelp/android/p/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/k;->setContentHeight(I)V

    .line 231
    invoke-virtual {v0}, Lcom/yelp/android/p/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/k;->c:I

    .line 232
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 370
    check-cast p2, Landroid/support/v7/internal/widget/k$c;

    .line 371
    invoke-virtual {p2}, Landroid/support/v7/internal/widget/k$c;->b()Landroid/support/v7/app/ActionBar$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar$b;->d()V

    .line 372
    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 97
    if-ne v3, v6, :cond_2

    move v0, v1

    .line 98
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->setFillViewport(Z)V

    .line 100
    iget-object v4, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v4

    .line 101
    if-le v4, v1, :cond_4

    if-eq v3, v6, :cond_0

    const/high16 v5, -0x80000000

    if-ne v3, v5, :cond_4

    .line 103
    :cond_0
    const/4 v3, 0x2

    if-le v4, v3, :cond_3

    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/k;->b:I

    .line 108
    :goto_1
    iget v3, p0, Landroid/support/v7/internal/widget/k;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/k;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/k;->b:I

    .line 113
    :goto_2
    iget v3, p0, Landroid/support/v7/internal/widget/k;->h:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 115
    if-nez v0, :cond_5

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/k;->g:Z

    if-eqz v4, :cond_5

    .line 117
    :goto_3
    if-eqz v1, :cond_7

    .line 119
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 120
    iget-object v1, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_6

    .line 121
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->b()V

    .line 129
    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->getMeasuredWidth()I

    move-result v1

    .line 130
    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 131
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->getMeasuredWidth()I

    move-result v2

    .line 133
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 135
    iget v0, p0, Landroid/support/v7/internal/widget/k;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/k;->setTabSelected(I)V

    .line 137
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 97
    goto :goto_0

    .line 106
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/k;->b:I

    goto :goto_1

    .line 110
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/k;->b:I

    goto :goto_2

    :cond_5
    move v1, v2

    .line 115
    goto :goto_3

    .line 123
    :cond_6
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->c()Z

    goto :goto_4

    .line 126
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/k;->c()Z

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 377
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/k;->g:Z

    .line 150
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .prologue
    .line 198
    iput p1, p0, Landroid/support/v7/internal/widget/k;->h:I

    .line 199
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/k;->requestLayout()V

    .line 200
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 182
    iput p1, p0, Landroid/support/v7/internal/widget/k;->i:I

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v3

    move v2, v1

    .line 184
    :goto_0
    if-ge v2, v3, :cond_2

    .line 185
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->e:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 186
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 187
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/k;->a(I)V

    .line 184
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 186
    goto :goto_1

    .line 192
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 193
    iget-object v0, p0, Landroid/support/v7/internal/widget/k;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 195
    :cond_3
    return-void
.end method
