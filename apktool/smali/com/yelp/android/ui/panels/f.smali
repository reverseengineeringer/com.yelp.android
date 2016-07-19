.class public Lcom/yelp/android/ui/panels/f;
.super Landroid/widget/FrameLayout;
.source "StickyFilterListHeader.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/yelp/android/ui/util/e;

.field private d:Lcom/yelp/android/ui/util/e;

.field private e:Landroid/view/View;

.field private f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Landroid/widget/AbsListView$OnScrollListener;

.field private final l:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 121
    const v0, 0x7f0101cb

    invoke-direct {p0, p1, v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 374
    new-instance v0, Lcom/yelp/android/ui/panels/f$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/f$2;-><init>(Lcom/yelp/android/ui/panels/f;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->k:Landroid/widget/AbsListView$OnScrollListener;

    .line 393
    new-instance v0, Lcom/yelp/android/ui/panels/f$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/panels/f$3;-><init>(Lcom/yelp/android/ui/panels/f;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->l:Landroid/view/View$OnLayoutChangeListener;

    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f;->a:Landroid/content/Context;

    .line 124
    iput-object p2, p0, Lcom/yelp/android/ui/panels/f;->b:Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->k:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 127
    iput-object p3, p0, Lcom/yelp/android/ui/panels/f;->c:Lcom/yelp/android/ui/util/e;

    .line 128
    iput-object p4, p0, Lcom/yelp/android/ui/panels/f;->d:Lcom/yelp/android/ui/util/e;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/panels/f;->g:I

    .line 131
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/f;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 137
    new-instance v0, Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->a:Landroid/content/Context;

    const v2, 0x7f0900cd

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    invoke-virtual {v0, v4, v3}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setMaxLines(I)V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setGravity(I)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/panels/f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    return-void
.end method

.method private a(Landroid/view/View;)F
    .locals 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/f;->b:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    .line 359
    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_2

    .line 366
    const/4 v0, 0x0

    goto :goto_0

    .line 370
    :cond_2
    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->f()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/f;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/ListView;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;)Lcom/yelp/android/ui/panels/f;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lcom/yelp/android/ui/panels/f;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/yelp/android/ui/panels/f;-><init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/yelp/android/ui/util/e;Lcom/yelp/android/ui/util/e;)V

    .line 109
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-object v0
.end method

.method private a(F)V
    .locals 5

    .prologue
    .line 310
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 311
    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 314
    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/util/StringUtils;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 316
    new-instance v1, Lcom/yelp/android/ui/util/n;

    invoke-direct {v1, p1}, Lcom/yelp/android/ui/util/n;-><init>(F)V

    iget-object v2, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->f:Lcom/yelp/android/ui/widgets/AutoResizeTextView;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    return-void

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private a(IF)V
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/f;->setVisibility(I)V

    .line 293
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/f;->setTranslationY(F)V

    .line 294
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/panels/f;->setAlpha(F)V

    .line 295
    return-void
.end method

.method private b()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    const/4 v0, 0x2

    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/panels/f;)Lcom/yelp/android/ui/util/e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->d:Lcom/yelp/android/ui/util/e;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 186
    iget v0, p0, Lcom/yelp/android/ui/panels/f;->g:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 189
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->e()V

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->g()V

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->d()V

    .line 197
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->h()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/f;->a(IF)V

    .line 198
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/f;->a(F)V

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->e()V

    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->c:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/f;->a(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/yelp/android/ui/panels/f;->a(IF)V

    .line 206
    invoke-direct {p0, v1}, Lcom/yelp/android/ui/panels/f;->a(F)V

    goto :goto_0

    .line 212
    :pswitch_3
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->d()V

    .line 213
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->h()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/panels/f;->a(IF)V

    .line 214
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->c:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/f;->a(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/panels/f;->a(F)V

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private d()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/f;->h:Z

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 228
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/f;->h:Z

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/f;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/f;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/panels/f$1;

    invoke-direct {v1, p0, p0}, Lcom/yelp/android/ui/panels/f$1;-><init>(Lcom/yelp/android/ui/panels/f;Lcom/yelp/android/ui/panels/f;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 252
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->f()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->d:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->d:Lcom/yelp/android/ui/util/e;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->c()V

    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/f;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    if-nez v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/panels/f;->h:Z

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->d:Lcom/yelp/android/ui/util/e;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/e;->clear()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/yelp/android/ui/panels/f;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/f;->h:Z

    return v0
.end method

.method private f()Landroid/view/View;
    .locals 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/f;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The header must have a height before the placeholder can be built."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 285
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/panels/f;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->e()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/f;->setVisibility(I)V

    .line 299
    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->d()V

    return-void
.end method

.method private h()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 342
    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 161
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/panels/f;->setPromotedFilterText(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setNonPromotedFilterText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 149
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f;->i:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->b()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/f;->g:I

    .line 151
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->c()V

    .line 152
    return-void

    .line 149
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method

.method public setPromotedFilterText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f;->j:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->b()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/panels/f;->g:I

    .line 157
    invoke-direct {p0}, Lcom/yelp/android/ui/panels/f;->c()V

    .line 158
    return-void

    .line 155
    :cond_0
    const-string/jumbo p1, ""

    goto :goto_0
.end method
