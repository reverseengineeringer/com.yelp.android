.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$a;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/support/v7/widget/Toolbar;

.field private d:Landroid/view/View;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroid/graphics/Rect;

.field private final j:Landroid/support/design/widget/d;

.field private k:Z

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Z

.field private p:Landroid/support/design/widget/p;

.field private q:Landroid/support/design/widget/AppBarLayout$a;

.field private r:I

.field private s:Landroid/support/v4/view/bg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    .line 129
    new-instance v0, Landroid/support/design/widget/d;

    invoke-direct {v0, p0}, Landroid/support/design/widget/d;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    .line 130
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget-object v3, Landroid/support/design/widget/a;->c:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/support/design/widget/d;->a(Landroid/view/animation/Interpolator;)V

    .line 132
    sget-object v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout:[I

    sget v3, Lcom/yelp/android/a/a$h;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {p1, p2, v0, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 136
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v5, 0x800053

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/d;->c(I)V

    .line 139
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v5, 0x800013

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/support/design/widget/d;->d(I)V

    .line 143
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMargin:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:I

    .line 146
    invoke-static {p0}, Landroid/support/v4/view/ai;->h(Landroid/view/View;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    .line 148
    :goto_0
    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 151
    if-eqz v0, :cond_7

    .line 152
    iput v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    .line 157
    :cond_0
    :goto_1
    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 158
    sget v4, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 160
    if-eqz v0, :cond_8

    .line 161
    iput v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:I

    .line 166
    :cond_1
    :goto_2
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    .line 170
    :cond_2
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 171
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v3, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    .line 175
    :cond_3
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_titleEnabled:I

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    .line 177
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_title:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v1, Lcom/yelp/android/a/a$h;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->f(I)V

    .line 182
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v1, Lcom/yelp/android/a/a$h;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->e(I)V

    .line 186
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v1, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->f(I)V

    .line 191
    :cond_4
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    sget v1, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->e(I)V

    .line 198
    :cond_5
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 199
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 201
    sget v0, Lcom/yelp/android/a/a$i;->CollapsingToolbarLayout_toolbarId:I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    .line 203
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 207
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ai;->a(Landroid/view/View;Landroid/support/v4/view/ab;)V

    .line 217
    return-void

    :cond_6
    move v0, v2

    .line 146
    goto/16 :goto_0

    .line 154
    :cond_7
    iput v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:I

    goto/16 :goto_1

    .line 163
    :cond_8
    iput v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    goto/16 :goto_2
.end method

.method static synthetic a(Landroid/view/View;)Landroid/support/design/widget/u;
    .locals 1

    .prologue
    .line 88
    invoke-static {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/view/View;)Landroid/support/design/widget/u;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/bg;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v4/view/bg;)Landroid/support/v4/view/bg;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    return-object p1
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 488
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 489
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    if-nez v0, :cond_1

    .line 490
    invoke-static {}, Landroid/support/design/widget/v;->a()Landroid/support/design/widget/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    .line 491
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(I)V

    .line 492
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    sget-object v1, Landroid/support/design/widget/a;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/view/animation/Interpolator;)V

    .line 493
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/p;->a(Landroid/support/design/widget/p$c;)V

    .line 503
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v1, p1}, Landroid/support/design/widget/p;->a(II)V

    .line 504
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->a()V

    .line 505
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->p:Landroid/support/design/widget/p;

    invoke-virtual {v0}, Landroid/support/design/widget/p;->e()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/CollapsingToolbarLayout;I)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method

.method static synthetic b(Landroid/support/design/widget/CollapsingToolbarLayout;I)I
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:I

    return p1
.end method

.method static synthetic b(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private static b(Landroid/view/View;)Landroid/support/design/widget/u;
    .locals 2

    .prologue
    .line 405
    sget v0, Lcom/yelp/android/a/a$f;->view_offset_helper:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/u;

    .line 406
    if-nez v0, :cond_0

    .line 407
    new-instance v0, Landroid/support/design/widget/u;

    invoke-direct {v0, p0}, Landroid/support/design/widget/u;-><init>(Landroid/view/View;)V

    .line 408
    sget v1, Lcom/yelp/android/a/a$f;->view_offset_helper:I

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 410
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 297
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    if-nez v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 303
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v5

    move v3, v4

    move-object v1, v2

    :goto_1
    if-ge v3, v5, :cond_5

    .line 304
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 305
    instance-of v6, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v6, :cond_4

    .line 306
    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 308
    iget v6, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->b:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 310
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 325
    :goto_2
    if-nez v0, :cond_3

    .line 330
    :goto_3
    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    .line 331
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c()V

    .line 332
    iput-boolean v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->a:Z

    goto :goto_0

    .line 313
    :cond_1
    if-nez v1, :cond_4

    .line 315
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 303
    :goto_4
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_1

    .line 319
    :cond_2
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_4

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method static synthetic c(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 336
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 339
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 340
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 343
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-nez v0, :cond_1

    .line 345
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    .line 347
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 351
    :cond_2
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 466
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Z

    if-nez v0, :cond_0

    .line 467
    invoke-static {p0}, Landroid/support/v4/view/ai;->D(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(I)V

    .line 472
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Z

    .line 474
    :cond_0
    return-void

    .line 470
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_0
.end method

.method static synthetic d(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->d()V

    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Z

    if-eqz v0, :cond_0

    .line 478
    invoke-static {p0}, Landroid/support/v4/view/ai;->D(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(I)V

    .line 483
    :goto_0
    iput-boolean v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->o:Z

    .line 485
    :cond_0
    return-void

    .line 481
    :cond_1
    invoke-direct {p0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_0
.end method

.method static synthetic e(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->e()V

    return-void
.end method

.method static synthetic f(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/d;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    return-object v0
.end method

.method private setScrimAlpha(I)V
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    if-eq p1, v0, :cond_1

    .line 509
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 510
    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 513
    :cond_0
    iput p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    .line 514
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 516
    :cond_1
    return-void
.end method


# virtual methods
.method protected a()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-super {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0
.end method

.method protected a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 738
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 723
    instance-of v0, p1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 251
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    if-lez v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 253
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Landroid/graphics/Canvas;)V

    .line 262
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    if-lez v0, :cond_2

    .line 263
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    invoke-virtual {v0}, Landroid/support/v4/view/bg;->b()I

    move-result v0

    .line 264
    :goto_0
    if-lez v0, :cond_2

    .line 265
    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:I

    neg-int v3, v3

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->r:I

    sub-int/2addr v0, v5

    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 268
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 263
    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 279
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    if-lez v0, :cond_0

    .line 280
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->a()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CollapsingToolbarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 733
    new-instance v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->c()I

    move-result v0

    return v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->b()I

    move-result v0

    return v0
.end method

.method final getScrimTriggerOffset()I
    .locals 1

    .prologue
    .line 718
    invoke-static {p0}, Landroid/support/v4/view/ai;->r(Landroid/view/View;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->h()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 224
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 225
    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_1

    .line 226
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Landroid/support/design/widget/AppBarLayout$a;

    if-nez v1, :cond_0

    .line 227
    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/support/design/widget/CollapsingToolbarLayout$a;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V

    iput-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Landroid/support/design/widget/AppBarLayout$a;

    .line 229
    :cond_0
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/support/design/widget/AppBarLayout$a;)V

    .line 231
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 237
    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Landroid/support/design/widget/AppBarLayout$a;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/support/design/widget/AppBarLayout;

    if-eqz v1, :cond_0

    .line 238
    check-cast v0, Landroid/support/design/widget/AppBarLayout;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->q:Landroid/support/design/widget/AppBarLayout$a;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/AppBarLayout;->b(Landroid/support/design/widget/AppBarLayout$a;)V

    .line 241
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 242
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .prologue
    .line 361
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 365
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 367
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/support/v4/view/ai;->x(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 368
    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->s:Landroid/support/v4/view/bg;

    invoke-virtual {v3}, Landroid/support/v4/view/bg;->b()I

    move-result v3

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 372
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 376
    :cond_0
    invoke-static {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->b(Landroid/view/View;)Landroid/support/design/widget/u;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/u;->a()V

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_1
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->d:Landroid/view/View;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Landroid/support/design/widget/s;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 382
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v2, p5, v2

    iget-object v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2, v3, p5}, Landroid/support/design/widget/d;->b(IIII)V

    .line 385
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->e:I

    iget-object v2, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->i:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->f:I

    add-int/2addr v2, v3

    sub-int v3, p4, p2

    iget v4, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->g:I

    sub-int/2addr v3, v4

    sub-int v4, p5, p3

    iget v5, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->h:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/design/widget/d;->a(IIII)V

    .line 391
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->g()V

    .line 395
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    if-eqz v0, :cond_4

    .line 396
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0}, Landroid/support/design/widget/d;->h()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    iget-object v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/d;->a(Ljava/lang/CharSequence;)V

    .line 400
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 402
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->b()V

    .line 356
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 357
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 290
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 291
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->c(I)V

    .line 664
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->e(I)V

    .line 644
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(I)V

    .line 653
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 528
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 529
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 533
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->l:Landroid/graphics/drawable/Drawable;

    .line 534
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 535
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 536
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 537
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 539
    :cond_1
    return-void
.end method

.method public setContentScrimColor(I)V
    .locals 1

    .prologue
    .line 550
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 551
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 1

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 564
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->b(I)V

    .line 692
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->c(I)V

    .line 703
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->f(I)V

    .line 683
    return-void
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 589
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 593
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->m:Landroid/graphics/drawable/Drawable;

    .line 594
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 595
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 596
    invoke-static {p0}, Landroid/support/v4/view/ai;->d(Landroid/view/View;)V

    .line 598
    :cond_1
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 1

    .prologue
    .line 611
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 612
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 1

    .prologue
    .line 623
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 624
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->j:Landroid/support/design/widget/d;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/d;->a(Ljava/lang/CharSequence;)V

    .line 423
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    if-eq p1, v0, :cond_0

    .line 448
    iput-boolean p1, p0, Landroid/support/design/widget/CollapsingToolbarLayout;->k:Z

    .line 449
    invoke-direct {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->c()V

    .line 450
    invoke-virtual {p0}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 452
    :cond_0
    return-void
.end method
