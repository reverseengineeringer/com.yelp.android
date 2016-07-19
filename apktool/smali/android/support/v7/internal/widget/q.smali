.class public Landroid/support/v7/internal/widget/q;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/widget/f;


# instance fields
.field private a:Landroid/support/v7/widget/Toolbar;

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private i:Ljava/lang/CharSequence;

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/Window$Callback;

.field private m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/o;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 93
    sget v0, Lcom/yelp/android/j/a$i;->abc_action_bar_up_description:I

    sget v1, Lcom/yelp/android/j/a$e;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/q;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput v1, p0, Landroid/support/v7/internal/widget/q;->o:I

    .line 89
    iput v1, p0, Landroid/support/v7/internal/widget/q;->q:I

    .line 99
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    .line 100
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->i:Ljava/lang/CharSequence;

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->j:Ljava/lang/CharSequence;

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/q;->h:Z

    .line 103
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->g:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p2, :cond_d

    .line 106
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/j/a$k;->ActionBar:[I

    sget v4, Lcom/yelp/android/j/a$a;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/internal/widget/p;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/p;

    move-result-object v0

    .line 109
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/p;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->b(Ljava/lang/CharSequence;)V

    .line 114
    :cond_0
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/p;->c(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 115
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->c(Ljava/lang/CharSequence;)V

    .line 119
    :cond_1
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/p;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_2

    .line 121
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->d(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_2
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/p;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    iget-object v3, p0, Landroid/support/v7/internal/widget/q;->g:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_3
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/p;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->e(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_4
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->c(I)V

    .line 136
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->g(II)I

    move-result v2

    .line 138
    if-eqz v2, :cond_5

    .line 139
    iget-object v3, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->a(Landroid/view/View;)V

    .line 141
    iget v2, p0, Landroid/support/v7/internal/widget/q;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/q;->c(I)V

    .line 144
    :cond_5
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->f(II)I

    move-result v2

    .line 145
    if-lez v2, :cond_6

    .line 146
    iget-object v3, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 147
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 148
    iget-object v2, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_6
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/p;->d(II)I

    move-result v2

    .line 153
    sget v3, Lcom/yelp/android/j/a$k;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/widget/p;->d(II)I

    move-result v3

    .line 155
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 156
    :cond_7
    iget-object v4, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 160
    :cond_8
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->g(II)I

    move-result v2

    .line 161
    if-eqz v2, :cond_9

    .line 162
    iget-object v3, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 165
    :cond_9
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->g(II)I

    move-result v2

    .line 167
    if-eqz v2, :cond_a

    .line 168
    iget-object v3, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 171
    :cond_a
    sget v2, Lcom/yelp/android/j/a$k;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/p;->g(II)I

    move-result v1

    .line 172
    if-eqz v1, :cond_b

    .line 173
    iget-object v2, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 176
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/p;->b()V

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/p;->c()Landroid/support/v7/internal/widget/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->p:Landroid/support/v7/internal/widget/o;

    .line 185
    :goto_1
    invoke-virtual {p0, p3}, Landroid/support/v7/internal/widget/q;->f(I)V

    .line 186
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->k:Ljava/lang/CharSequence;

    .line 188
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->p:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/o;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/q;->c(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/q$1;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/q$1;-><init>(Landroid/support/v7/internal/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void

    :cond_c
    move v0, v1

    .line 102
    goto/16 :goto_0

    .line 180
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->t()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    .line 182
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/widget/o;->a(Landroid/content/Context;)Landroid/support/v7/internal/widget/o;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->p:Landroid/support/v7/internal/widget/o;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/q;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/q;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/q;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->l:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/q;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/q;->m:Z

    return v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->i:Ljava/lang/CharSequence;

    .line 285
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    return-void
.end method

.method private t()I
    .locals 2

    .prologue
    .line 231
    const/16 v0, 0xb

    .line 233
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 234
    const/16 v0, 0xf

    .line 236
    :cond_0
    return v0
.end method

.method private u()V
    .locals 2

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    iget v1, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 348
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->f:Landroid/graphics/drawable/Drawable;

    .line 354
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 355
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 351
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 648
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/q;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 658
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 659
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a(IJ)Landroid/support/v4/view/az;
    .locals 2

    .prologue
    .line 591
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 592
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v0

    .line 593
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    .line 594
    new-instance v1, Landroid/support/v7/internal/widget/q$2;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/q$2;-><init>(Landroid/support/v7/internal/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    .line 620
    :goto_0
    return-object v0

    .line 609
    :cond_0
    if-nez p1, :cond_1

    .line 610
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ai;->s(Landroid/view/View;)Landroid/support/v4/view/az;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(F)Landroid/support/v4/view/az;

    move-result-object v0

    .line 611
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/az;->a(J)Landroid/support/v4/view/az;

    .line 612
    new-instance v1, Landroid/support/v7/internal/widget/q$3;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/q$3;-><init>(Landroid/support/v7/internal/widget/q;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/az;->a(Landroid/support/v4/view/bd;)Landroid/support/v4/view/az;

    goto :goto_0

    .line 620
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 325
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->p:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/o;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/q;->a(Landroid/graphics/drawable/Drawable;)V

    .line 326
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->e:Landroid/graphics/drawable/Drawable;

    .line 331
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->u()V

    .line 332
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/l$a;Landroid/support/v7/internal/view/menu/f$a;)V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/l$a;Landroid/support/v7/internal/view/menu/f$a;)V

    .line 698
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/k;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 448
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 449
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 451
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    .line 452
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/q;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 453
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 454
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 455
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 456
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 457
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 458
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/k;->setAllowCollapse(Z)V

    .line 460
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/l$a;)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/q;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 391
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Lcom/yelp/android/j/a$f;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/l$a;)V

    .line 394
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/f;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/f;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 395
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 569
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    .line 570
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 573
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Window$Callback;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->l:Landroid/view/Window$Callback;

    .line 262
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/q;->h:Z

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/q;->e(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 475
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 336
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->p:Landroid/support/v7/internal/widget/o;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/o;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/q;->d(Landroid/graphics/drawable/Drawable;)V

    .line 337
    return-void

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 677
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/q;->h:Z

    .line 280
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/q;->e(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 480
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 409
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    .line 410
    xor-int/2addr v0, p1

    .line 411
    iput p1, p0, Landroid/support/v7/internal/widget/q;->b:I

    .line 412
    if-eqz v0, :cond_3

    .line 413
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 414
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 415
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->w()V

    .line 416
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->v()V

    .line 422
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 423
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->u()V

    .line 426
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 427
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 428
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/q;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/q;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 436
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 437
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 438
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 444
    :cond_3
    :goto_2
    return-void

    .line 418
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 431
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 440
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 225
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->r:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->w()V

    .line 228
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 297
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->j:Ljava/lang/CharSequence;

    .line 298
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 257
    return-void
.end method

.method public d(I)V
    .locals 1

    .prologue
    .line 644
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/q;->d(Ljava/lang/CharSequence;)V

    .line 645
    return-void

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/q;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->f:Landroid/graphics/drawable/Drawable;

    .line 342
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->u()V

    .line 343
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 638
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->k:Ljava/lang/CharSequence;

    .line 639
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->v()V

    .line 640
    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 687
    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Landroid/support/v7/internal/widget/q;->g:Landroid/graphics/drawable/Drawable;

    .line 626
    invoke-direct {p0}, Landroid/support/v7/internal/widget/q;->w()V

    .line 627
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 305
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Landroid/support/v7/internal/widget/q;->q:I

    if-ne p1, v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    iput p1, p0, Landroid/support/v7/internal/widget/q;->q:I

    .line 217
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget v0, p0, Landroid/support/v7/internal/widget/q;->q:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/q;->d(I)V

    goto :goto_0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/q;->m:Z

    .line 385
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 400
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 404
    iget v0, p0, Landroid/support/v7/internal/widget/q;->b:I

    return v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Landroid/support/v7/internal/widget/q;->o:I

    return v0
.end method

.method public q()Landroid/view/View;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->d:Landroid/view/View;

    return-object v0
.end method

.method public r()I
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public s()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Landroid/support/v7/internal/widget/q;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
