.class Lcom/yelp/android/ui/activities/feed/j;
.super Ljava/lang/Object;
.source "BookmarkFeedViewBinder.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/i;

.field private b:Lcom/yelp/android/ba/f;

.field private c:Lcom/yelp/android/ba/d;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/i;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/j;->a:Lcom/yelp/android/ui/activities/feed/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/yelp/android/ba/f;

    const v1, 0x7f0c033c

    invoke-direct {v0, p2, p3, v1}, Lcom/yelp/android/ba/f;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/j;->b:Lcom/yelp/android/ba/f;

    .line 38
    new-instance v0, Lcom/yelp/android/ba/d;

    const v1, 0x7f0c032a

    invoke-direct {v0, p3, v1}, Lcom/yelp/android/ba/d;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/j;->c:Lcom/yelp/android/ba/d;

    .line 39
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/j;->b:Lcom/yelp/android/ba/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ba/f;->a(Lcom/yelp/android/serializable/FeedEntry;ILandroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/j;->c:Lcom/yelp/android/ba/d;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ba/d;->a(Lcom/yelp/android/serializable/FeedEntry;Landroid/content/Context;)V

    .line 44
    return-void
.end method
