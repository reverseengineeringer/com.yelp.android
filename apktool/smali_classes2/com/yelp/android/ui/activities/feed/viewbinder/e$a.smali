.class public Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;
.super Ljava/lang/Object;
.source "BusinessPhotoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ch/c;

.field private final d:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

.field private final e:Lcom/yelp/android/ch/b;

.field private final f:Lcom/yelp/android/ui/activities/feed/FeedType;

.field private final g:Landroid/view/View$OnClickListener;

.field private final h:Lcom/yelp/android/ui/util/DynamicImageView$a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V
    .locals 6

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->g:Landroid/view/View$OnClickListener;

    .line 152
    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->h:Lcom/yelp/android/ui/util/DynamicImageView$a;

    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    .line 84
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->a:Lcom/yelp/android/ch/d;

    .line 86
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->b:Landroid/widget/TextView;

    .line 87
    new-instance v0, Lcom/yelp/android/ch/c;

    const v1, 0x7f0f03d5

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/c;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->c:Lcom/yelp/android/ch/c;

    .line 89
    const v0, 0x7f0f03c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->d:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 91
    new-instance v0, Lcom/yelp/android/ch/b;

    const v2, 0x7f0f03e8

    const/4 v3, 0x0

    move-object v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ch/b;-><init>(Landroid/view/View;ILcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;Landroid/support/v7/widget/RecyclerView$l;Lcom/yelp/android/ui/util/t;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->e:Lcom/yelp/android/ch/b;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)Lcom/yelp/android/ch/b;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->e:Lcom/yelp/android/ch/b;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;)Lcom/yelp/android/ui/activities/feed/FeedType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->f:Lcom/yelp/android/ui/activities/feed/FeedType;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/FeedItem;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->e:Lcom/yelp/android/ch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ch/b;->b()Lcom/yelp/android/serializable/FeedItem;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 7

    .prologue
    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p1, p3}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->c:Lcom/yelp/android/ch/c;

    invoke-virtual {v0, p1, p3, p4}, Lcom/yelp/android/ch/c;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->d:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->d:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->e:Lcom/yelp/android/ch/b;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->g:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->h:Lcom/yelp/android/ui/util/DynamicImageView$a;

    move-object v1, p1

    move-object v2, p3

    move-object v5, p4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/yelp/android/ch/b;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/ui/util/DynamicImageView$a;Lcom/yelp/android/ci/f;Lcom/yelp/android/ui/activities/feed/FeedType;)V

    .line 129
    return-void

    .line 108
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/e$a;->e:Lcom/yelp/android/ch/b;

    invoke-virtual {v0}, Lcom/yelp/android/ch/b;->a()I

    move-result v0

    return v0
.end method
