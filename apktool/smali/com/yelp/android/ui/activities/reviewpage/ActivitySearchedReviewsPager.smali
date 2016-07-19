.class public Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;
.super Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;
.source "ActivitySearchedReviewsPager.java"


# instance fields
.field private f:I

.field private g:Ljava/lang/String;

.field private h:Lcom/yelp/android/appdata/webrequests/ea;

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ea$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;-><init>()V

    .line 109
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$2;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/ArrayList;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, 0x1

    const-class v7, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;

    move-object v0, p0

    move-object v1, p4

    move-object v2, p3

    move-object v3, p5

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IZLjava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    const-string/jumbo v1, "total"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string/jumbo v1, "search_term"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;Lcom/yelp/android/appdata/webrequests/ea;)Lcom/yelp/android/appdata/webrequests/ea;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)Lcom/yelp/android/appdata/webrequests/ea;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->f:I

    return v0
.end method

.method protected b()Lcom/yelp/android/ui/widgets/ReviewPagerFragment$b;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;)V

    return-object v0
.end method

.method protected e()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ea;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->e()Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    const-string/jumbo v1, "total"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->f:I

    .line 59
    const-string/jumbo v1, "search_term"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->g:Ljava/lang/String;

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onPause()V

    .line 72
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPager;->onResume()V

    .line 65
    const-string/jumbo v0, "search_request"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ea;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivitySearchedReviewsPager;->h:Lcom/yelp/android/appdata/webrequests/ea;

    .line 67
    return-void
.end method
