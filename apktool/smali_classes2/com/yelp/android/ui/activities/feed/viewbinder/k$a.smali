.class Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;
.super Ljava/lang/Object;
.source "EventFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/cg/e;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->a:Lcom/yelp/android/ch/d;

    .line 53
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->b:Landroid/widget/TextView;

    .line 54
    new-instance v0, Lcom/yelp/android/cg/e;

    const v1, 0x7f0f03df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->c:Lcom/yelp/android/cg/e;

    .line 56
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->c:Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->c()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->c:Lcom/yelp/android/cg/e;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/k$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method
