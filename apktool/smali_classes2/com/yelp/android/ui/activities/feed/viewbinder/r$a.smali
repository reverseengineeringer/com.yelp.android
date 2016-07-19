.class Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;
.super Ljava/lang/Object;
.source "LocalIssueFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7f0f03e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    const v1, 0x7f0f03e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->b:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    const v1, 0x7f0f0366

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->c:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    const v1, 0x7f0f0367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->d:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    const v1, 0x7f0f0113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->e:Landroid/widget/ImageView;

    .line 61
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 3

    .prologue
    .line 64
    const-class v0, Lcom/yelp/android/serializable/FeedLocalActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedLocalActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedLocalActivity;->d()Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalIssue;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 70
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;->a:Landroid/view/View;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;

    invoke-direct {v2, p0, v0, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/r$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/r$a;Lcom/yelp/android/serializable/LocalIssue;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method
