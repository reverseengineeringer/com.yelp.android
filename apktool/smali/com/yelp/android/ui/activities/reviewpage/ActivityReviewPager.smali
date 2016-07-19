.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.source "ActivityReviewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;
    }
.end annotation


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;",
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

.field private p:Lcom/yelp/android/appdata/webrequests/dx;

.field private q:Lcom/yelp/android/appdata/webrequests/dy;

.field private final r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dy$a;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/dx$a;",
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

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 566
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 592
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$3;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 661
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
    const/4 v3, 0x1

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 105
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->I()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Ljava/util/Locale;)V

    .line 122
    :cond_0
    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    .line 118
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v1, "business_review_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 159
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "business_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
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
    .line 221
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
    .line 325
    invoke-static/range {p0 .. p8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/util/Map;Ljava/util/ArrayList;Z)Landroid/content/Intent;

    move-result-object v0

    .line 336
    const-string/jumbo v1, "displays_filtered_reviews.extra"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string/jumbo v1, "review_highlight_identifier.extra"

    invoke-virtual {v0, v1, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string/jumbo v1, "review_highlight_type.extra"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v1, "highlighted_review_id.extra"

    invoke-virtual {v0, v1, p12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
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
    .line 263
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

    .line 274
    if-eqz p6, :cond_0

    .line 275
    const-string/jumbo v1, "locale_review_counts.extra"

    invoke-static {p6}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 278
    :cond_0
    if-eqz p7, :cond_1

    .line 279
    const-string/jumbo v1, "review_languages.extra"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 281
    :cond_1
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

    .line 511
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 512
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/dy;->a(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->enableLoading()V

    .line 515
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 516
    return-void
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 520
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->i:I

    iget v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g:I

    sub-int/2addr v0, v1

    .line 524
    invoke-virtual {p0, p1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(ZI)Landroid/util/Pair;

    move-result-object v1

    .line 525
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 526
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 528
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dx;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dx;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v0 .. v7}, Lcom/yelp/android/appdata/webrequests/dx;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;Ljava/lang/String;IILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dx;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 549
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->enableLoading()V

    .line 550
    return-void

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    :cond_3
    new-instance v3, Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a:Ljava/lang/String;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    iget-object v8, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct/range {v3 .. v8}, Lcom/yelp/android/appdata/webrequests/dy;-><init>(Ljava/lang/String;IILjava/util/Locale;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    .line 547
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dy;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

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
    .line 553
    const/4 v1, 0x0

    .line 554
    const/4 v0, 0x0

    .line 555
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

    .line 556
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 557
    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    .line 558
    iget-object v5, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f:Ljava/util/List;

    new-instance v6, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;

    invoke-direct {v6, p0, v3, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$a;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;ILjava/util/Locale;Ljava/util/Locale;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    move-object v2, v0

    move v3, v1

    .line 563
    goto :goto_0

    .line 564
    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 625
    const-string/jumbo v0, "com.yelp.android.review.state.update"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$4;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 643
    const-string/jumbo v0, "com.yelp.android.review.translate"

    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$5;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 659
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 437
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
    .line 608
    const/4 v0, 0x0

    .line 609
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

    .line 610
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    .line 611
    goto :goto_0

    .line 614
    :cond_0
    if-nez v1, :cond_1

    .line 615
    const/4 v1, 0x1

    .line 617
    :cond_1
    return v1
.end method

.method protected b()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;
    .locals 1

    .prologue
    .line 451
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;)V

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dy;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dx;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 445
    :cond_1
    const/4 v0, 0x1

    .line 447
    :goto_0
    return v0

    :cond_2
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 345
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onCreate(Landroid/os/Bundle;)V

    .line 347
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f:Ljava/util/List;

    .line 350
    if-eqz p1, :cond_1

    .line 351
    const-string/jumbo v0, "review_highlight_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "review_highlight_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 355
    const-string/jumbo v0, "displays_filtered_reviews"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 357
    const-string/jumbo v0, "review_counts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 360
    const-string/jumbo v0, "review_languages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    .line 362
    const-string/jumbo v0, "highlighted_review_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    .line 363
    const-string/jumbo v0, "next_request_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    .line 365
    const-string/jumbo v0, "next_request_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g:I

    .line 399
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->f()V

    .line 400
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->g()V

    .line 401
    return-void

    .line 367
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "displays_filtered_reviews.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    .line 369
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "review_highlight_identifier.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    .line 371
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "review_highlight_type.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    .line 374
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "highlighted_review_id.extra"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    .line 375
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 376
    const-string/jumbo v0, "locale_review_counts.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    const-string/jumbo v0, "locale_review_counts.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    .line 381
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    .line 382
    const-string/jumbo v0, "review_languages.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 383
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    const-string/jumbo v0, "review_languages.extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 386
    :cond_3
    const-string/jumbo v0, "reviews_extra"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->o()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    goto/16 :goto_0

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    goto/16 :goto_0

    .line 393
    :cond_5
    const-string/jumbo v0, "business_review_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 395
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onPause()V

    .line 431
    const-string/jumbo v0, "filtered_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 432
    const-string/jumbo v0, "reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 433
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 419
    const-string/jumbo v0, "reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->r:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dy;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->q:Lcom/yelp/android/appdata/webrequests/dy;

    .line 420
    const-string/jumbo v0, "filtered_reviews"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dx;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->p:Lcom/yelp/android/appdata/webrequests/dx;

    .line 425
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onResume()V

    .line 426
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 406
    const-string/jumbo v0, "review_counts"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->m:Ljava/util/Map;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/LocaleCount;->a(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    const-string/jumbo v0, "review_languages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 408
    const-string/jumbo v0, "review_highlight_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->k:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string/jumbo v0, "review_highlight_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->l:Lcom/yelp/android/serializable/ReviewHighlight$ReviewHighlightType;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 410
    const-string/jumbo v0, "displays_filtered_reviews"

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 411
    const-string/jumbo v0, "highlighted_review_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->o:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v0, "next_request_locale"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->h:Ljava/util/Locale;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 413
    return-void
.end method
