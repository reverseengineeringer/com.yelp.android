.class Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;
.super Ljava/lang/Object;
.source "BusinessRecommendationFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

.field private final d:Landroid/view/View;

.field private final e:Lcom/yelp/android/ch/a;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string/jumbo v0, "hot_and_new"

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->a:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "trending_nearby_bookmark"

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->b:Ljava/lang/String;

    .line 66
    const v0, 0x7f0f03c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 68
    const v0, 0x7f0f03d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->d:Landroid/view/View;

    .line 69
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->e:Lcom/yelp/android/ch/a;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Lcom/yelp/android/ui/activities/feed/viewbinder/f$1;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 79
    const-class v0, Lcom/yelp/android/serializable/FeedBusinessRecommendationActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedBusinessRecommendationActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedBusinessRecommendationActivity;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_1
    return-void

    .line 79
    :sswitch_0
    const-string/jumbo v3, "hot_and_new"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "trending_nearby_bookmark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :pswitch_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->e:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p3, p4}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    goto :goto_1

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->e:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p3, p4}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->c:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 79
    nop

    :sswitch_data_0
    .sparse-switch
        -0x59bd3424 -> :sswitch_1
        -0xf0dd2ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yelp/android/ui/activities/feed/viewbinder/f$a;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    return-void
.end method
