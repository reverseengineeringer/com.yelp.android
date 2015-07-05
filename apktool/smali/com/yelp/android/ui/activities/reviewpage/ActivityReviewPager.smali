.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.source "ActivityReviewPager.java"


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/n;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/util/Locale;

.field private i:I

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Lcom/yelp/android/appdata/webrequests/ew;

.field private q:Lcom/yelp/android/appdata/webrequests/ey;

.field private final r:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ez;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 483
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/j;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/j;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/m;

    .line 508
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/k;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/m;

    .line 583
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->i:I

    return p1
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 103
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 104
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    .line 111
    :cond_0
    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string/jumbo v1, "review_id.extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 141
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 185
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/util/Map;Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 261
    invoke-static/range {p0 .. p8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "displays_filtered_reviews.extra"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string/jumbo v1, "review_highlight_identifier.extra"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "review_highlight_type.extra"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    const-string/jumbo v1, "highlighted_review_id.extra"

    invoke-virtual {v0, v1, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)Landroid/content/Intent;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 160
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    invoke-static/range {v0 .. v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;I",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Locale;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 214
    const-class v7, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p8

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    if-eqz p6, :cond_0

    .line 219
    const-string/jumbo v1, "locale_review_counts.extra"

    invoke-static {p6}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mapToList(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 222
    :cond_0
    if-eqz p7, :cond_1

    .line 223
    const-string/jumbo v1, "review_languages.extra"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 225
    :cond_1
    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 271
    const-string/jumbo v0, "extra.review"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;Z)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 434
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 435
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/ey;->a(Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->enableLoading()V

    .line 438
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 439
    return-void
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 443
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->i:I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g:I

    sub-int/2addr v0, v1

    .line 447
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(ZI)Landroid/util/Pair;

    move-result-object v1

    .line 449
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 450
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 452
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ew;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 456
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ew;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/ew;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    .line 459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    new-array v1, v9, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ew;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 466
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->enableLoading()V

    .line 467
    return-void

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 462
    :cond_3
    new-instance v3, Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/appdata/webrequests/ey;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    new-array v1, v9, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ey;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;I)I
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g:I

    return p1
.end method

.method private f()V
    .locals 7

    .prologue
    .line 470
    const/4 v1, 0x0

    .line 471
    const/4 v0, 0x0

    .line 472
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 473
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 474
    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    .line 475
    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/ui/activities/reviewpage/n;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/n;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;ILjava/util/Locale;Ljava/util/Locale;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    move-object v2, v0

    move v3, v1

    .line 480
    goto :goto_0

    .line 481
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 549
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/l;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/l;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 566
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/m;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 581
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/Locale;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 526
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 527
    goto :goto_0

    .line 530
    :cond_0
    if-nez v1, :cond_1

    .line 531
    const/4 v1, 0x1

    .line 533
    :cond_1
    return v1
.end method

.method protected b()Lcom/yelp/android/ui/widgets/ah;
    .locals 1

    .prologue
    .line 374
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/i;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/i;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ey;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ew;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    :cond_1
    const/4 v0, 0x1

    .line 370
    :goto_0
    return v0

    :cond_2
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 539
    const-string/jumbo v1, "extra.review"

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 540
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->setResult(ILandroid/content/Intent;)V

    .line 541
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onBackPressed()V

    .line 542
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f:Ljava/util/List;

    .line 281
    if-eqz p1, :cond_1

    .line 282
    const-string/jumbo v0, "review_highlight_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "review_highlight_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 286
    const-string/jumbo v0, "displays_filtered_reviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 287
    const-string/jumbo v0, "review_counts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->listToMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 290
    const-string/jumbo v0, "review_languages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    .line 291
    const-string/jumbo v0, "highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    .line 292
    const-string/jumbo v0, "next_request_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    .line 294
    const-string/jumbo v0, "next_request_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g:I

    .line 326
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f()V

    .line 327
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g()V

    .line 328
    return-void

    .line 296
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "displays_filtered_reviews.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 298
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "review_highlight_identifier.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    .line 300
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "review_highlight_type.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 302
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "highlighted_review_id.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 304
    const-string/jumbo v0, "locale_review_counts.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    const-string/jumbo v0, "locale_review_counts.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->listToMap(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 309
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    .line 310
    const-string/jumbo v0, "review_languages.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 311
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    const-string/jumbo v0, "review_languages.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 313
    :cond_3
    const-string/jumbo v0, "reviews_extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getLocale()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    goto/16 :goto_0

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    goto/16 :goto_0

    .line 320
    :cond_5
    const-string/jumbo v0, "review_id.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onPause()V

    .line 355
    const-string/jumbo v0, "filtered_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 356
    const-string/jumbo v0, "reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 357
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 346
    const-string/jumbo v0, "reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ey;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/ey;

    .line 347
    const-string/jumbo v0, "filtered_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ew;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/ew;

    .line 349
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onResume()V

    .line 350
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 333
    const-string/jumbo v0, "review_counts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->mapToList(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 334
    const-string/jumbo v0, "review_languages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 335
    const-string/jumbo v0, "review_highlight_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string/jumbo v0, "review_highlight_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 337
    const-string/jumbo v0, "displays_filtered_reviews"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 338
    const-string/jumbo v0, "highlighted_review_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v0, "next_request_locale"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 340
    return-void
.end method
