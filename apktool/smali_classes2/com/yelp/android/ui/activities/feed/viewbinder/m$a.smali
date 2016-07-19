.class Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;
.super Ljava/lang/Object;
.source "EventSubscriptionGroupedByEventFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cg/e;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/yelp/android/cg/e;

    const v1, 0x7f0f03df

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/cg/e;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->a:Lcom/yelp/android/cg/e;

    .line 62
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->b:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f0f0360

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->c:Landroid/widget/TextView;

    .line 64
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/x;

    const v1, 0x7f0f03d9

    invoke-direct {v0, p2, v1, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/x;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Lcom/yelp/android/ui/activities/feed/viewbinder/m$1;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->a:Lcom/yelp/android/cg/e;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->c()Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/e;->a(Lcom/yelp/android/serializable/Event;Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->a:Lcom/yelp/android/cg/e;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/e;->b(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 93
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->c:Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/m$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method
