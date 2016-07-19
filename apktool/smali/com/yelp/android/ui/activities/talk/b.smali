.class public Lcom/yelp/android/ui/activities/talk/b;
.super Lcom/yelp/android/ui/util/w;
.source "TalkMessageAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/talk/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/talk/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/TalkMessage;",
        ">;",
        "Lcom/yelp/android/ui/activities/talk/a$a;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/talk/c;

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

.field private final d:Lcom/yelp/android/ui/activities/talk/a;

.field private e:Lcom/yelp/android/bv/c;

.field private f:Lcom/yelp/android/ui/activities/talk/b;

.field private g:Lcom/yelp/android/ui/util/aj$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Z

.field private k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/bv/c$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/talk/c;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 335
    new-instance v0, Lcom/yelp/android/ui/activities/talk/b$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/b$3;-><init>(Lcom/yelp/android/ui/activities/talk/b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/c;

    .line 66
    iput-object p2, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    .line 68
    new-instance v0, Lcom/yelp/android/ui/activities/talk/a;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/talk/a;-><init>(Lcom/yelp/android/ui/activities/talk/a$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->d:Lcom/yelp/android/ui/activities/talk/a;

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/b;->j:Z

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/b;I)I
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/b;->b(I)I

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 281
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 283
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    const v3, 0x7f07059e

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

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(II)V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->a()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 252
    add-int/lit8 v1, p2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->a(Ljava/util/Collection;)V

    .line 255
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkMessage;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->h:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->e()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->c(I)V

    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/b;->c()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    .line 264
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 4

    .prologue
    const v3, 0x7f0c0020

    const/4 v1, 0x1

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 299
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 300
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 301
    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    const v0, 0x7fffffff

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 306
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

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p4}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 315
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 320
    :goto_0
    return-void

    .line 318
    :cond_0
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/b;II)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/talk/b;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/talk/b;ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/talk/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

    return-void
.end method

.method private b(I)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 230
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    if-nez v1, :cond_1

    move v0, v2

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x19

    if-lt p1, v1, :cond_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/talk/b;->a()Ljava/util/List;

    move-result-object v3

    move v1, v0

    .line 241
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 242
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/TalkMessage;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/TalkMessage;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/yelp/android/ui/activities/talk/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 243
    goto :goto_0

    .line 241
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move v0, v2

    .line 246
    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/talk/b;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/b;->c(I)V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/b;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    return-object v0
.end method

.method private c(I)V
    .locals 2

    .prologue
    .line 267
    iput p1, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->d:Lcom/yelp/android/ui/activities/talk/a;

    iget v1, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/a;->a(I)V

    .line 269
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->notifyDataSetChanged()V

    .line 270
    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/talk/b;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/talk/b;->d(I)V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/c;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/c;

    return-object v0
.end method

.method private d(I)V
    .locals 6

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->g:Lcom/yelp/android/ui/util/aj$b;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->g:Lcom/yelp/android/ui/util/aj$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    const v2, 0x7f0703e6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj$b;->a(Ljava/lang/CharSequence;)V

    .line 276
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/talk/b;)Lcom/yelp/android/ui/activities/talk/b;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/talk/b;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    .prologue
    .line 78
    iput p1, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    .line 79
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->a:Lcom/yelp/android/ui/activities/talk/c;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->f()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    iget-object v3, p0, Lcom/yelp/android/ui/activities/talk/b;->k:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/talk/c;->a(Ljava/lang/String;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/bv/c;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/bv/c;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->d:Lcom/yelp/android/ui/activities/talk/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/talk/a;->a(Z)V

    .line 84
    return-void
.end method

.method a(Lcom/yelp/android/bv/c$b;)V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p1}, Lcom/yelp/android/bv/c$b;->b()I

    move-result v0

    .line 161
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 162
    const/16 v1, 0x19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->c(I)V

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/bv/c$b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->h:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Lcom/yelp/android/bv/c$b;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->a(Ljava/util/Collection;)V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->getCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->d(I)V

    .line 167
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method a(Lcom/yelp/android/ui/activities/talk/b;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b;->f:Lcom/yelp/android/ui/activities/talk/b;

    .line 206
    return-void
.end method

.method a(Lcom/yelp/android/ui/util/aj$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lcom/yelp/android/ui/activities/talk/b;->g:Lcom/yelp/android/ui/util/aj$b;

    .line 193
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/talk/b;->d(I)V

    .line 194
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bv/c;->a(Z)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    .line 176
    :cond_0
    return-void
.end method

.method c()V
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/talk/b;->clear()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->g:Lcom/yelp/android/ui/util/aj$b;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/b;->j:Z

    .line 189
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->clear()V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/bv/c;->a(Z)V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->e:Lcom/yelp/android/bv/c;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->d:Lcom/yelp/android/ui/activities/talk/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/talk/a;->clear()V

    .line 95
    return-void
.end method

.method d()Lcom/yelp/android/ui/activities/talk/a;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->d:Lcom/yelp/android/ui/activities/talk/a;

    return-object v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/yelp/android/ui/activities/talk/b;->i:I

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/talk/b;->j:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 99
    if-nez p2, :cond_3

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 103
    new-instance v0, Lcom/yelp/android/ui/activities/talk/b$a;

    invoke-direct {v0, p0, v3}, Lcom/yelp/android/ui/activities/talk/b$a;-><init>(Lcom/yelp/android/ui/activities/talk/b;Landroid/view/View;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 106
    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/yelp/android/ui/activities/talk/b$a;

    .line 107
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/talk/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/yelp/android/serializable/TalkMessage;

    .line 108
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->ABBREVIATED:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->g()Ljava/util/Date;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    const v1, 0x7f0200c7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 115
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BY_ADMIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const v0, 0x7f0705bb

    .line 122
    :goto_1
    iget-object v1, v5, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/talk/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :goto_2
    return-object v3

    .line 117
    :cond_0
    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->c()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BY_ADMIN_TOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    const v0, 0x7f0705bc

    goto :goto_1

    .line 120
    :cond_1
    const v0, 0x7f0705da

    goto :goto_1

    .line 126
    :cond_2
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 127
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    new-instance v1, Lcom/yelp/android/ui/activities/talk/b$1;

    invoke-direct {v1, p0, v6}, Lcom/yelp/android/ui/activities/talk/b$1;-><init>(Lcom/yelp/android/ui/activities/talk/b;Lcom/yelp/android/serializable/TalkMessage;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v7, v5, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/yelp/android/ui/activities/talk/b$2;

    move-object v1, p0

    move v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/talk/b$2;-><init>(Lcom/yelp/android/ui/activities/talk/b;ILandroid/view/View;Landroid/view/ViewGroup;Lcom/yelp/android/ui/activities/talk/b$a;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/yelp/android/serializable/TalkMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/yelp/android/ui/activities/talk/b;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, v5, Lcom/yelp/android/ui/activities/talk/b$a;->b:Landroid/widget/TextView;

    invoke-direct {p0, p1, v3, p3, v0}, Lcom/yelp/android/ui/activities/talk/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/widget/TextView;)V

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
    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/talk/b;->c:Ljava/util/Set;

    return-object v0
.end method
