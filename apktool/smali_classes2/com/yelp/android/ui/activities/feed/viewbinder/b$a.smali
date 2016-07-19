.class Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;
.super Ljava/lang/Object;
.source "BookmarkFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

.field private final d:Lcom/yelp/android/ch/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->a:Lcom/yelp/android/ch/d;

    .line 63
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->b:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0f03c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 66
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->d:Lcom/yelp/android/ch/a;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->d:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p3, p4}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 79
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/b$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/b$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    .line 93
    return-void

    .line 79
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
