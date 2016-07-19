.class Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;
.super Ljava/lang/Object;
.source "BookmarkGroupedByUserFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->a:Lcom/yelp/android/ch/d;

    .line 62
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->b:Landroid/widget/TextView;

    .line 63
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    const v1, 0x7f0f03d0

    invoke-direct {v0, p1, v1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/viewbinder/c$1;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/c$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    return-void
.end method
