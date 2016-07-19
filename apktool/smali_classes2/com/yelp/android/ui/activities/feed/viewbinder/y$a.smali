.class Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;
.super Ljava/lang/Object;
.source "TalkPostFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/yelp/android/ch/d;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const v0, 0x7f0f03fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->a:Landroid/view/View;

    .line 55
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->b:Lcom/yelp/android/ch/d;

    .line 57
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->c:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0f03fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->d:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f0f03fd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->e:Landroid/widget/TextView;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Lcom/yelp/android/ui/activities/feed/viewbinder/y$1;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 63
    const-class v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedTalkPostActivity;

    .line 65
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->b:Lcom/yelp/android/ch/d;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->d:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->d()Lcom/yelp/android/serializable/TalkTopic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkTopic;->o()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedTalkPostActivity;->e()Lcom/yelp/android/serializable/TalkMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/TalkMessage;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->a:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a$1;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;Lcom/yelp/android/serializable/FeedTalkPostActivity;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/y$a;->a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    return-void
.end method
