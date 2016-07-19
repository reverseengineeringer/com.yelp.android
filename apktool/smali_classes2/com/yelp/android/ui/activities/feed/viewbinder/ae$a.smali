.class Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;
.super Ljava/lang/Object;
.source "UserPhotoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae;

.field private final b:Lcom/yelp/android/ch/d;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/yelp/android/ch/b;

.field private final e:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final f:Landroid/view/View$OnClickListener;

.field private final g:Lcom/yelp/android/ui/util/DynamicImageView$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 6

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->a:Lcom/yelp/android/ui/activities/feed/viewbinder/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->f:Landroid/view/View$OnClickListener;

    .line 105
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->g:Lcom/yelp/android/ui/util/DynamicImageView$a;

    .line 67
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p2, p3, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->b:Lcom/yelp/android/ch/d;

    .line 69
    const v0, 0x7f0f03c5

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->c:Landroid/widget/TextView;

    .line 70
    new-instance v0, Lcom/yelp/android/ch/b;

    const v2, 0x7f0f03e8

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;)Landroid/support/v7/widget/RecyclerView$l;

    move-result-object v4

    invoke-static {p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/ae;->b(Lcom/yelp/android/ui/activities/feed/viewbinder/ae;)Lcom/yelp/android/ui/util/t;

    move-result-object v5

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ch/b;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->d:Lcom/yelp/android/ch/b;

    .line 77
    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)Lcom/yelp/android/ch/b;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->d:Lcom/yelp/android/ch/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->e:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ui/activities/feed/FeedType;)V
    .locals 7

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->b:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->d:Lcom/yelp/android/ch/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->f:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/ae$a;->g:Lcom/yelp/android/ui/util/DynamicImageView$a;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/DynamicImageView$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 90
    return-void
.end method
