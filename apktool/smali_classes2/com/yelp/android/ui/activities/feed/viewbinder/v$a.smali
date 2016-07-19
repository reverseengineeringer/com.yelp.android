.class Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;
.super Ljava/lang/Object;
.source "ReviewDraftFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ch/a;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->a:Lcom/yelp/android/ch/d;

    .line 71
    const v0, 0x7f0f03c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->b:Landroid/widget/TextView;

    .line 72
    new-instance v0, Lcom/yelp/android/ch/a;

    const v1, 0x7f0f03c7

    invoke-direct {v0, p2, p1, v1}, Lcom/yelp/android/ch/a;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->c:Lcom/yelp/android/ch/a;

    .line 75
    const v0, 0x7f0f03f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->d:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0f03cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->e:Landroid/widget/ImageView;

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ci/f;)V
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 84
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->c:Lcom/yelp/android/ch/a;

    invoke-virtual {v0, p1, p2, p4}, Lcom/yelp/android/ch/a;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 87
    const-class v0, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {p1, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedReviewDraftActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedReviewDraftActivity;->d()Lcom/yelp/android/serializable/ReviewDraft;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->a()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 90
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewDraft;->d()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/v$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/v$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method
