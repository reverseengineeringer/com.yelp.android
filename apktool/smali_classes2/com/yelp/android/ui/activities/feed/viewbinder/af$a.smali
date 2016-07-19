.class Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;
.super Ljava/lang/Object;
.source "VideoFeedViewBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ch/d;

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/yelp/android/ch/c;

.field private final d:Landroid/widget/ImageView;

.field private final e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

.field private final f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

.field private final g:Landroid/widget/TextView;

.field private final h:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/yelp/android/ch/d;

    const v1, 0x7f0f0406

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/d;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a:Lcom/yelp/android/ch/d;

    .line 84
    const v0, 0x7f0f03c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->b:Landroid/widget/TextView;

    .line 85
    new-instance v0, Lcom/yelp/android/ch/c;

    const v1, 0x7f0f03d5

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/ch/c;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->c:Lcom/yelp/android/ch/c;

    .line 87
    const v0, 0x7f0f040a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->h:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    .line 90
    const v0, 0x7f0f040b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->d:Landroid/widget/ImageView;

    .line 91
    const v0, 0x7f0f040c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    .line 92
    const v0, 0x7f0f040d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    .line 93
    const v0, 0x7f0f040e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->g:Landroid/widget/TextView;

    .line 94
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;->HIDE_TOP:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$DisplayFeature;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 96
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Ljava/util/Collection;Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$a;)V

    .line 97
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;)Lcom/yelp/android/ui/widgets/AnimatedToggleButton;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    if-lez p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080042

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, p1, v2}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 183
    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/ci/f;ZLcom/yelp/android/serializable/FeedItem;)V
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {p3, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedVideoActivity;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Video;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(I)V

    .line 175
    new-instance v0, Lcom/yelp/android/ci/j;

    invoke-direct {v0, p3, p2}, Lcom/yelp/android/ci/j;-><init>(Lcom/yelp/android/serializable/FeedItem;Z)V

    invoke-interface {p1, v0}, Lcom/yelp/android/ci/f;->a(Lcom/yelp/android/ci/e;)V

    .line 176
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ci/f;ZLcom/yelp/android/serializable/FeedItem;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ci/f;ZLcom/yelp/android/serializable/FeedItem;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 0

    .prologue
    .line 70
    invoke-direct/range {p0 .. p5}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    return-void
.end method

.method private a(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/FeedItem;Lcom/yelp/android/ui/activities/feed/FeedType;Landroid/content/Context;Lcom/yelp/android/ci/f;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a:Lcom/yelp/android/ch/d;

    invoke-virtual {v0, p2, p4}, Lcom/yelp/android/ch/d;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FeedItem;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->c:Lcom/yelp/android/ch/c;

    invoke-virtual {v0, p2, p4, p5}, Lcom/yelp/android/ch/c;->a(Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Lcom/yelp/android/ci/f;)V

    .line 108
    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->h:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->D()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->h:Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$1;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner;->setHotAndNewClickListener(Lcom/yelp/android/ui/widgets/HotNewBusinessAwardBanner$a;)V

    .line 122
    const-class v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/FeedItem;->a(Ljava/lang/Class;)Lcom/yelp/android/serializable/SingleFeedActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeedVideoActivity;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedVideoActivity;->d()Lcom/yelp/android/serializable/Video;

    move-result-object v6

    .line 123
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Video;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v2, 0x7f02056a

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/u$a;->a(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 127
    invoke-virtual {v6}, Lcom/yelp/android/serializable/Video;->j()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->a(I)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Video;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :cond_0
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->setCaptionVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->e:Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;

    invoke-virtual {v0, v6}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;->a(Lcom/yelp/android/serializable/Media;)V

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Video;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->f:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;

    invoke-direct {v1, p0, v6, p5, p2}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$2;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/serializable/Video;Lcom/yelp/android/ci/f;Lcom/yelp/android/serializable/FeedItem;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-virtual {p2}, Lcom/yelp/android/serializable/FeedItem;->l()Lcom/yelp/android/serializable/FeedGroupedByInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/FeedGroupedByInfo;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v5

    .line 143
    iget-object v7, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->d:Landroid/widget/ImageView;

    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$3;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Video;)V

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v7, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;->g:Landroid/widget/TextView;

    new-instance v0, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/ui/activities/feed/viewbinder/af$a$4;-><init>(Lcom/yelp/android/ui/activities/feed/viewbinder/af$a;Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/serializable/FeedItem;Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Video;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void

    .line 108
    :cond_1
    const/16 v0, 0x8

    goto/16 :goto_0
.end method
