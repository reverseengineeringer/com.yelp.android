.class public Lcom/yelp/android/ui/activities/feed/e;
.super Ljava/lang/Object;
.source "BizPhotoFeedViewBinder.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/d;

.field private b:Lcom/yelp/android/ba/f;

.field private c:Lcom/yelp/android/ba/e;

.field private d:Lcom/yelp/android/ba/a;

.field private e:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Lcom/yelp/android/ui/util/w;

.field private final h:Lcom/yelp/android/ui/activities/photoviewer/ad;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/d;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 7

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/e;->a:Lcom/yelp/android/ui/activities/feed/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/yelp/android/ui/activities/feed/f;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/f;-><init>(Lcom/yelp/android/ui/activities/feed/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->f:Landroid/view/View$OnClickListener;

    .line 100
    new-instance v0, Lcom/yelp/android/ui/activities/feed/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/g;-><init>(Lcom/yelp/android/ui/activities/feed/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->g:Lcom/yelp/android/ui/util/w;

    .line 107
    new-instance v0, Lcom/yelp/android/ui/activities/feed/h;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/h;-><init>(Lcom/yelp/android/ui/activities/feed/e;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->h:Lcom/yelp/android/ui/activities/photoviewer/ad;

    .line 63
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/e;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 64
    new-instance v0, Lcom/yelp/android/ba/f;

    const v1, 0x7f0c033c

    invoke-direct {v0, p2, p3, v1}, Lcom/yelp/android/ba/f;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->b:Lcom/yelp/android/ba/f;

    .line 66
    new-instance v0, Lcom/yelp/android/ba/e;

    const v1, 0x7f0c0331

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/e;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->c:Lcom/yelp/android/ba/e;

    .line 67
    new-instance v0, Lcom/yelp/android/ba/a;

    const v3, 0x7f0c028e

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/e;->h:Lcom/yelp/android/ui/activities/photoviewer/ad;

    invoke-static {p1}, Lcom/yelp/android/ui/activities/feed/d;->a(Lcom/yelp/android/ui/activities/feed/d;)Landroid/support/v7/widget/bt;

    move-result-object v5

    invoke-static {p1}, Lcom/yelp/android/ui/activities/feed/d;->b(Lcom/yelp/android/ui/activities/feed/d;)Lcom/bumptech/glide/j;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ba/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;ILcom/yelp/android/ui/activities/photoviewer/ad;Landroid/support/v7/widget/bt;Lcom/bumptech/glide/j;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/e;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/feed/e;->c()V

    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/e;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/feed/e;)Lcom/yelp/android/ba/a;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 81
    sget-object v1, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->FEED_SELECTED:Lcom/yelp/android/ui/activities/feed/FeedEventIriType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/e;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/feed/FeedEventIriType;->getFeedEventIriByFeedType(Lcom/yelp/android/ui/activities/feed/FeedType;)Lcom/yelp/android/analytics/iris/EventIri;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    invoke-virtual {v2}, Lcom/yelp/android/ba/a;->b()Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/BizPhotoFeedEntry;->setupIriParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 83
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/BizPhotoFeedEntry;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    invoke-virtual {v0}, Lcom/yelp/android/ba/a;->b()Lcom/yelp/android/serializable/BizPhotoFeedEntry;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->b:Lcom/yelp/android/ba/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ba/f;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->c:Lcom/yelp/android/ba/e;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ba/e;->a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/e;->f:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/e;->g:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0, p1, p3, v1, v2}, Lcom/yelp/android/ba/a;->a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/w;)V

    .line 77
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/e;->d:Lcom/yelp/android/ba/a;

    invoke-virtual {v0}, Lcom/yelp/android/ba/a;->a()I

    move-result v0

    return v0
.end method
