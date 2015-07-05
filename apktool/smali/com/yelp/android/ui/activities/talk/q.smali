.class public Lcom/yelp/android/ui/activities/talk/q;
.super Lcom/yelp/android/ui/util/au;
.source "TalkMessageAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/talk/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/TalkMessage;",
        ">;",
        "Lcom/yelp/android/ui/activities/talk/l;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/talk/v;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/yelp/android/ui/activities/talk/j;

.field private e:Lcom/yelp/android/aw/f;

.field private f:Lcom/yelp/android/ui/activities/talk/q;

.field private g:Lcom/yelp/android/ui/util/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/bv",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/aw/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/talk/v;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 328
    new-instance v0, Lcom/yelp/android/ui/activities/talk/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/t;-><init>(Lcom/yelp/android/ui/activities/talk/q;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->k:Lcom/yelp/android/appdata/webrequests/m;

    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/q;->a:Lcom/yelp/android/ui/activities/talk/v;

    .line 66
    iput-object p2, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/talk/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/j;-><init>(Lcom/yelp/android/ui/activities/talk/l;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->d:Lcom/yelp/android/ui/activities/talk/j;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/q;->j:Z

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/q;I)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/q;->b(I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 275
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 277
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    const v3, 0x7f07058f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/q;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/q;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->a()Ljava/util/List;

    move-result-object v0

    .line 245
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 246
    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 248
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->a(Ljava/util/Collection;)V

    .line 249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->h:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->e()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->c(I)V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/q;->c()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    .line 258
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const v3, 0x7f0d0015

    const/4 v1, 0x1

    .line 292
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 293
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 294
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 295
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const v0, 0x7fffffff

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 300
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 309
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/q;II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/q;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/q;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/talk/q;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    return-void
.end method

.method private b(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    if-nez v1, :cond_1

    move v0, v2

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/q;->a()Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 235
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 236
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkMessage;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/q;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 237
    goto :goto_0

    .line 235
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 240
    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/q;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/q;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/q;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 261
    iput p1, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->d:Lcom/yelp/android/ui/activities/talk/j;

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/j;->a(I)V

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->notifyDataSetChanged()V

    .line 264
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/q;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/q;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/v;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->a:Lcom/yelp/android/ui/activities/talk/v;

    return-object v0
.end method

.method private d(I)V
    .locals 6

    .prologue
    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->g:Lcom/yelp/android/ui/util/bv;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->g:Lcom/yelp/android/ui/util/bv;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    const v2, 0x7f0703b0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bv;->a(Ljava/lang/CharSequence;)V

    .line 270
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/talk/q;)Lcom/yelp/android/ui/activities/talk/q;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/talk/q;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 78
    iput p1, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->a:Lcom/yelp/android/ui/activities/talk/v;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->f()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/q;->k:Lcom/yelp/android/appdata/webrequests/m;

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/talk/v;->a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/aw/f;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/aw/f;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->d:Lcom/yelp/android/ui/activities/talk/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/j;->a(Z)V

    .line 83
    return-void
.end method

.method a(Lcom/yelp/android/aw/h;)V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1}, Lcom/yelp/android/aw/h;->b()I

    move-result v0

    .line 155
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 156
    const/16 v1, 0x19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->c(I)V

    .line 163
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/aw/h;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->h:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Lcom/yelp/android/aw/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->a(Ljava/util/Collection;)V

    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->d(I)V

    .line 161
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method a(Lcom/yelp/android/ui/activities/talk/q;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/q;->f:Lcom/yelp/android/ui/activities/talk/q;

    .line 200
    return-void
.end method

.method a(Lcom/yelp/android/ui/util/bv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 186
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/q;->g:Lcom/yelp/android/ui/util/bv;

    .line 187
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/q;->d(I)V

    .line 188
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/aw/f;->cancel(Z)V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    .line 170
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/q;->clear()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->g:Lcom/yelp/android/ui/util/bv;

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/q;->j:Z

    .line 183
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/yelp/android/ui/util/au;->clear()V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/aw/f;->cancel(Z)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->e:Lcom/yelp/android/aw/f;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->d:Lcom/yelp/android/ui/activities/talk/j;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/j;->clear()V

    .line 94
    return-void
.end method

.method d()Lcom/yelp/android/ui/activities/talk/j;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->d:Lcom/yelp/android/ui/activities/talk/j;

    return-object v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/q;->i:I

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/q;->j:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 98
    if-nez p2, :cond_3

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 101
    new-instance v0, Lcom/yelp/android/ui/activities/talk/u;

    invoke-direct {v0, p0, v3}, Lcom/yelp/android/ui/activities/talk/u;-><init>(Lcom/yelp/android/ui/activities/talk/q;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/ui/activities/talk/u;

    .line 105
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/q;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/serializable/TalkMessage;

    .line 106
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getTimeModified()Ljava/util/Date;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getRemoved()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f02009c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 112
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getRemoved()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BY_ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const v0, 0x7f0705d3

    .line 119
    :goto_1
    iget-object v1, v5, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/q;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    :goto_2
    return-object v3

    .line 114
    :cond_0
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getRemoved()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BY_ADMIN_TOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const v0, 0x7f0705d4

    goto :goto_1

    .line 117
    :cond_1
    const v0, 0x7f0705f0

    goto :goto_1

    .line 123
    :cond_2
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/r;

    invoke-direct {v1, p0, v6}, Lcom/yelp/android/ui/activities/talk/r;-><init>(Lcom/yelp/android/ui/activities/talk/q;Lcom/yelp/android/serializable/TalkMessage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v7, v5, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/yelp/android/ui/activities/talk/s;

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/talk/s;-><init>(Lcom/yelp/android/ui/activities/talk/q;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/yelp/android/ui/activities/talk/u;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/q;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/u;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, p3, v0}, Lcom/yelp/android/ui/activities/talk/q;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    goto :goto_2

    :cond_3
    move-object v3, p2

    goto/16 :goto_0
.end method

.method h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/q;->c:Ljava/util/Set;

    return-object v0
.end method
