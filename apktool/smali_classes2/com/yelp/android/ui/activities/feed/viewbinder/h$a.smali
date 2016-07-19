.class Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;
.super Ljava/lang/Object;
.source "CheckInGroupedByBusinessFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cg/c;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/yelp/android/cg/c;

    const v1, 0x7f0f03c7

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/cg/c;-><init>(Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->a:Lcom/yelp/android/cg/c;

    .line 58
    const v0, 0x7f0f0360

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->b:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->c:Landroid/widget/TextView;

    .line 60
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/i;

    const v1, 0x7f0f03d9

    invoke-direct {v0, p2, v1, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/i;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/feed/FeedType;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Lcom/yelp/android/ui/activities/feed/viewbinder/h$1;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->a:Lcom/yelp/android/cg/c;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/cg/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->a:Lcom/yelp/android/cg/c;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/cg/c;->b(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/ad;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/ad;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 89
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->m()Ljava/util/Date;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/h$a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method
