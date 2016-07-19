.class Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;
.super Ljava/lang/Object;
.source "ReviewFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ch/a;

.field private final d:Lcom/yelp/android/ch/e;

.field private final e:Lcom/yelp/android/cg/d;

.field private final f:Lcom/yelp/android/cg/d;

.field private final g:Lcom/yelp/android/cg/d;

.field private final h:Lcom/yelp/android/ci/f;

.field private i:Lcom/yelp/android/serializable/FeedItem;

.field private final j:Landroid/view/View$OnClickListener;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
    .locals 6

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->j:Landroid/view/View$OnClickListener;

    .line 75
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a:Lcom/yelp/android/ch/d;

    .line 77
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->b:Landroid/widget/TextView;

    .line 78
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->c:Lcom/yelp/android/ch/a;

    .line 81
    new-instance v0, Lcom/yelp/android/ch/e;

    const v1, 0x7f0f03f4

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ch/e;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->d:Lcom/yelp/android/ch/e;

    .line 82
    new-instance v0, Lcom/yelp/android/cg/d;

    const v2, 0x7f0f010a

    const v3, 0x7f0e016e

    const v4, 0x7f0205a0

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->j:Landroid/view/View$OnClickListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/cg/d;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e:Lcom/yelp/android/cg/d;

    .line 89
    new-instance v0, Lcom/yelp/android/cg/d;

    const v2, 0x7f0f010b

    const v3, 0x7f0e0165

    const v4, 0x7f0202c6

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->j:Landroid/view/View$OnClickListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/cg/d;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->f:Lcom/yelp/android/cg/d;

    .line 96
    new-instance v0, Lcom/yelp/android/cg/d;

    const v2, 0x7f0f010c

    const v3, 0x7f0e0163

    const v4, 0x7f0201e1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->j:Landroid/view/View$OnClickListener;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/cg/d;-><init>(Landroid/view/View;IIILandroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->g:Lcom/yelp/android/cg/d;

    .line 103
    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->h:Lcom/yelp/android/ci/f;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/viewbinder/w$1;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/serializable/FeedItem;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->i:Lcom/yelp/android/serializable/FeedItem;

    return-object v0
.end method

.method private a(Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const v5, 0x7f070475

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</b>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 145
    const/16 v0, 0x2710

    if-lt p3, v0, :cond_0

    .line 146
    new-array v0, v4, [Ljava/lang/Object;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v1, v2, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {v2}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    return-object v0

    .line 147
    :cond_0
    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_1

    .line 148
    new-array v0, v4, [Ljava/lang/Object;

    div-int/lit16 v2, p3, 0x3e8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;Landroid/content/Context;II)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e:Lcom/yelp/android/cg/d;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->f:Lcom/yelp/android/cg/d;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/cg/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->g:Lcom/yelp/android/cg/d;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;)Lcom/yelp/android/ci/f;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->h:Lcom/yelp/android/ci/f;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 6

    .prologue
    .line 107
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->i:Lcom/yelp/android/serializable/FeedItem;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->c:Lcom/yelp/android/ch/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->h:Lcom/yelp/android/ci/f;

    invoke-virtual {v0, p1, p2, v1}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->d:Lcom/yelp/android/ch/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ch/e;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 113
    sget-object v0, Lcom/yelp/android/ui/activities/feed/FeedType;->ME:Lcom/yelp/android/ui/activities/feed/FeedType;

    if-eq p3, v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e:Lcom/yelp/android/cg/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/d;->b(Z)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->f:Lcom/yelp/android/cg/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/d;->b(Z)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->g:Lcom/yelp/android/cg/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/d;->b(Z)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->i:Lcom/yelp/android/serializable/FeedItem;

    const-class v2, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewActivity;->d()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->l()Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;

    move-result-object v2

    .line 122
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e:Lcom/yelp/android/cg/d;

    const v4, 0x7f070630

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->a()I

    move-result v5

    invoke-direct {p0, p2, v4, v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->f:Lcom/yelp/android/cg/d;

    const v4, 0x7f070301

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->b()I

    move-result v5

    invoke-direct {p0, p2, v4, v5}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->g:Lcom/yelp/android/cg/d;

    const v4, 0x7f070225

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessReview$ReviewFeedback;->c()I

    move-result v2

    invoke-direct {p0, p2, v4, v2}, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->a(Landroid/content/Context;II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/yelp/android/cg/d;->a(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->m()Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;

    move-result-object v0

    .line 130
    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->e:Lcom/yelp/android/cg/d;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/cg/d;->a(Z)V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->f:Lcom/yelp/android/cg/d;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/cg/d;->a(Z)V

    .line 133
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/w$a;->g:Lcom/yelp/android/cg/d;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview$UserFeedback;->c()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/cg/d;->a(Z)V

    .line 135
    :cond_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0
.end method
