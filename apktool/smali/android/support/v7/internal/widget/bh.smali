.class public Landroid/support/v7/internal/widget/bh;
.super Ljava/lang/Object;
.source "ToolbarWidgetWrapper.java"

# interfaces
.implements Landroid/support/v7/internal/widget/ah;


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

.field private l:Lcom/yelp/android/i/h;

.field private m:Z

.field private n:Landroid/support/v7/widget/ActionMenuPresenter;

.field private o:I

.field private final p:Landroid/support/v7/internal/widget/bd;

.field private q:I

.field private r:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .prologue
    .line 88
    sget v0, Lcom/yelp/android/g/j;->abc_action_bar_up_description:I

    sget v1, Lcom/yelp/android/g/f;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v7/internal/widget/bh;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v1, p0, Landroid/support/v7/internal/widget/bh;->o:I

    .line 84
    iput v1, p0, Landroid/support/v7/internal/widget/bh;->q:I

    .line 94
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->i:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->j:Ljava/lang/CharSequence;

    .line 97
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->i:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bh;->h:Z

    .line 98
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->g:Landroid/graphics/drawable/Drawable;

    .line 100
    if-eqz p2, :cond_d

    .line 101
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/g/l;->ActionBar:[I

    sget v4, Lcom/yelp/android/g/b;->actionBarStyle:I

    invoke-static {v0, v2, v3, v4, v1}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 104
    sget v2, Lcom/yelp/android/g/l;->ActionBar_title:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->b(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    sget v2, Lcom/yelp/android/g/l;->ActionBar_subtitle:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->b(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 110
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->c(Ljava/lang/CharSequence;)V

    .line 114
    :cond_1
    sget v2, Lcom/yelp/android/g/l;->ActionBar_logo:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 115
    if-eqz v2, :cond_2

    .line 116
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->e(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_2
    sget v2, Lcom/yelp/android/g/l;->ActionBar_icon:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 120
    if-eqz v2, :cond_3

    .line 121
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->a(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_3
    sget v2, Lcom/yelp/android/g/l;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 125
    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->b(Landroid/graphics/drawable/Drawable;)V

    .line 129
    :cond_4
    sget v2, Lcom/yelp/android/g/l;->ActionBar_displayOptions:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->a(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->c(I)V

    .line 131
    sget v2, Lcom/yelp/android/g/l;->ActionBar_customNavigationLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v2

    .line 133
    if-eqz v2, :cond_5

    .line 134
    iget-object v3, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3, v2, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->a(Landroid/view/View;)V

    .line 136
    iget v2, p0, Landroid/support/v7/internal/widget/bh;->b:I

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/bh;->c(I)V

    .line 139
    :cond_5
    sget v2, Lcom/yelp/android/g/l;->ActionBar_height:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->e(II)I

    move-result v2

    .line 140
    if-lez v2, :cond_6

    .line 141
    iget-object v3, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 142
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 143
    iget-object v2, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    :cond_6
    sget v2, Lcom/yelp/android/g/l;->ActionBar_contentInsetStart:I

    invoke-virtual {v0, v2, v5}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v2

    .line 148
    sget v3, Lcom/yelp/android/g/l;->ActionBar_contentInsetEnd:I

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/internal/widget/bg;->c(II)I

    move-result v3

    .line 150
    if-gez v2, :cond_7

    if-ltz v3, :cond_8

    .line 151
    :cond_7
    iget-object v4, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Landroid/support/v7/widget/Toolbar;->a(II)V

    .line 155
    :cond_8
    sget v2, Lcom/yelp/android/g/l;->ActionBar_titleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v2

    .line 156
    if-eqz v2, :cond_9

    .line 157
    iget-object v3, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/content/Context;I)V

    .line 160
    :cond_9
    sget v2, Lcom/yelp/android/g/l;->ActionBar_subtitleTextStyle:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v2

    .line 162
    if-eqz v2, :cond_a

    .line 163
    iget-object v3, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v4, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v4}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/support/v7/widget/Toolbar;->b(Landroid/content/Context;I)V

    .line 166
    :cond_a
    sget v2, Lcom/yelp/android/g/l;->ActionBar_popupTheme:I

    invoke-virtual {v0, v2, v1}, Landroid/support/v7/internal/widget/bg;->f(II)I

    move-result v1

    .line 167
    if-eqz v1, :cond_b

    .line 168
    iget-object v2, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 171
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 173
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->p:Landroid/support/v7/internal/widget/bd;

    .line 180
    :goto_1
    invoke-virtual {p0, p3}, Landroid/support/v7/internal/widget/bh;->g(I)V

    .line 181
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->k:Ljava/lang/CharSequence;

    .line 183
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->p:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p4}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bh;->d(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Landroid/support/v7/internal/widget/bi;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/bi;-><init>(Landroid/support/v7/internal/widget/bh;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    return-void

    :cond_c
    move v0, v1

    .line 97
    goto/16 :goto_0

    .line 175
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->u()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    .line 177
    new-instance v0, Landroid/support/v7/internal/widget/bd;

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/widget/bd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->p:Landroid/support/v7/internal/widget/bd;

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/bh;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/internal/widget/bh;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->i:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/internal/widget/bh;)Lcom/yelp/android/i/h;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->l:Lcom/yelp/android/i/h;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/widget/bh;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/bh;->m:Z

    return v0
.end method

.method private e(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 284
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->i:Ljava/lang/CharSequence;

    .line 285
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    :cond_0
    return-void
.end method

.method private u()I
    .locals 2

    .prologue
    .line 226
    const/16 v0, 0xb

    .line 228
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    const/16 v0, 0xf

    .line 231
    :cond_0
    return v0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 367
    const/4 v0, 0x0

    .line 368
    iget v1, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 369
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->f:Landroid/graphics/drawable/Drawable;

    .line 375
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 376
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 372
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->k:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Landroid/support/v7/internal/widget/bh;->q:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private x()V
    .locals 2

    .prologue
    .line 665
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 666
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->g:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->r:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 346
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->p:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bh;->a(Landroid/graphics/drawable/Drawable;)V

    .line 347
    return-void

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->e:Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->v()V

    .line 353
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/y;Landroid/support/v7/internal/view/menu/j;)V

    .line 705
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/ap;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    if-ne v0, v1, :cond_0

    .line 470
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 472
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    .line 473
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/bh;->o:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 474
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;I)V

    .line 475
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$LayoutParams;

    .line 476
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->width:I

    .line 477
    iput v3, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->height:I

    .line 478
    const v1, 0x800053

    iput v1, v0, Landroid/support/v7/widget/Toolbar$LayoutParams;->a:I

    .line 479
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ap;->setAllowCollapse(Z)V

    .line 481
    :cond_1
    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/support/v7/internal/view/menu/y;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/internal/widget/bh;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 412
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    sget v1, Lcom/yelp/android/g/g;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/internal/view/menu/y;)V

    .line 415
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    check-cast p1, Landroid/support/v7/internal/view/menu/i;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->n:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/Toolbar;->a(Landroid/support/v7/internal/view/menu/i;Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 416
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 590
    :cond_0
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    .line 591
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 594
    :cond_1
    return-void
.end method

.method public a(Lcom/yelp/android/i/h;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->l:Lcom/yelp/android/i/h;

    .line 262
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/bh;->h:Z

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/bh;->e(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setCollapsible(Z)V

    .line 496
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 357
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->p:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bh;->e(Landroid/graphics/drawable/Drawable;)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 632
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->g:Landroid/graphics/drawable/Drawable;

    .line 633
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->x()V

    .line 634
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bh;->h:Z

    .line 280
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/bh;->e(Ljava/lang/CharSequence;)V

    .line 281
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public c(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    .line 431
    xor-int/2addr v0, p1

    .line 432
    iput p1, p0, Landroid/support/v7/internal/widget/bh;->b:I

    .line 433
    if-eqz v0, :cond_3

    .line 434
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    .line 435
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 436
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->x()V

    .line 437
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->w()V

    .line 443
    :cond_0
    :goto_0
    and-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    .line 444
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->v()V

    .line 447
    :cond_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    .line 448
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 449
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/bh;->i:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v2, p0, Landroid/support/v7/internal/widget/bh;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 457
    :cond_2
    :goto_1
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 458
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_6

    .line 459
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 465
    :cond_3
    :goto_2
    return-void

    .line 439
    :cond_4
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 452
    :cond_5
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 453
    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 461
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 684
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 297
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->j:Ljava/lang/CharSequence;

    .line 298
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 301
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public d(I)V
    .locals 2

    .prologue
    .line 603
    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(F)Landroid/support/v4/view/eh;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/bj;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/bj;-><init>(Landroid/support/v7/internal/widget/bh;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ex;)Landroid/support/v4/view/eh;

    .line 628
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    if-nez p1, :cond_0

    .line 620
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v4/view/ce;->q(Landroid/view/View;)Landroid/support/v4/view/eh;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(F)Landroid/support/v4/view/eh;

    move-result-object v0

    new-instance v1, Landroid/support/v7/internal/widget/bk;

    invoke-direct {v1, p0}, Landroid/support/v7/internal/widget/bk;-><init>(Landroid/support/v7/internal/widget/bh;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/eh;->a(Landroid/support/v4/view/ex;)Landroid/support/v4/view/eh;

    goto :goto_0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->r:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 220
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->r:Landroid/graphics/drawable/Drawable;

    .line 221
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->x()V

    .line 223
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->k:Ljava/lang/CharSequence;

    .line 646
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->w()V

    .line 647
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->h()V

    .line 257
    return-void
.end method

.method public e(I)V
    .locals 1

    .prologue
    .line 651
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bh;->d(Ljava/lang/CharSequence;)V

    .line 652
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/bh;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Landroid/support/v7/internal/widget/bh;->f:Landroid/graphics/drawable/Drawable;

    .line 363
    invoke-direct {p0}, Landroid/support/v7/internal/widget/bh;->v()V

    .line 364
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f(I)V
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 694
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 305
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method public g(I)V
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->q:I

    if-ne p1, v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iput p1, p0, Landroid/support/v7/internal/widget/bh;->q:I

    .line 212
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->q:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/bh;->e(I)V

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "ToolbarWidgetWrapper"

    const-string/jumbo v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->a()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->b()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->c()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->d()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->e()Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/bh;->m:Z

    .line 406
    return-void
.end method

.method public o()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->f()V

    .line 421
    return-void
.end method

.method public p()I
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->b:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 505
    iget v0, p0, Landroid/support/v7/internal/widget/bh;->o:I

    return v0
.end method

.method public r()Landroid/view/View;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->d:Landroid/view/View;

    return-object v0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public t()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Landroid/support/v7/internal/widget/bh;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method
