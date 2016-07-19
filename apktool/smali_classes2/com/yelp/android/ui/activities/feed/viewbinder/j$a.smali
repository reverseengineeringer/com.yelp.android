.class Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;
.super Ljava/lang/Object;
.source "EventCreatedGroupedByUserFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->a:Lcom/yelp/android/ch/d;

    .line 52
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->b:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/l;

    const v1, 0x7f0f03e0

    invoke-direct {v0, p2, v1, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Lcom/yelp/android/ui/activities/feed/viewbinder/j$1;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/l;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/l;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/j$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    return-void
.end method
