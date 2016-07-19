.class public Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityFirstAwards.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/yelp/android/serializable/User;

.field private d:Lcom/yelp/android/appdata/webrequests/fo;

.field private e:Lcom/yelp/android/appdata/webrequests/fp;

.field private f:Lcom/yelp/android/ui/activities/profile/d;

.field private g:Lcom/yelp/android/appdata/webrequests/em;

.field private final h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Tip;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;>;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/SingleFeedEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final l:Lcom/yelp/android/ui/activities/profile/d$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 227
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$3;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 241
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$4;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 266
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$5;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->j:Ljava/util/Comparator;

    .line 274
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$6;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 299
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->l:Lcom/yelp/android/ui/activities/profile/d$c;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 71
    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 72
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Lcom/yelp/android/appdata/webrequests/em;)Lcom/yelp/android/appdata/webrequests/em;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/em;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/ui/activities/profile/d;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c(Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z
    .locals 1

    .prologue
    .line 206
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/appdata/webrequests/core/c$a;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-object v0
.end method

.method private c(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/SingleFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->j:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->notifyDataSetChanged()V

    .line 221
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->H()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->G()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 225
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/appdata/webrequests/em;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/em;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 178
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_2

    .line 179
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 180
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->t()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusinessReview;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityReviewPager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 196
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/Tip;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 198
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/SingleFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/d;->a(Ljava/util/Collection;)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c(I)V

    .line 259
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/yelp/android/serializable/SingleFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/d;->clear()V

    .line 263
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Ljava/util/List;)V

    .line 264
    return-void
.end method

.method protected c()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 160
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->H()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fo;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->s_()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/User;IIZ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fo;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 167
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->G()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fp;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->s_()I

    move-result v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/fp;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/User;IIZZ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fp;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 173
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserProfileFirsts:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f0702e2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    .line 80
    new-instance v0, Lcom/yelp/android/ui/activities/profile/d;

    invoke-static {p0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->l:Lcom/yelp/android/ui/activities/profile/d$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/profile/d;-><init>(Lcom/yelp/android/ui/util/t;Lcom/yelp/android/serializable/User;Lcom/yelp/android/ui/activities/profile/d$c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    const-string/jumbo v0, "tip_and_review_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 85
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Ljava/util/List;)V

    .line 86
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    .line 87
    const-string/jumbo v0, "tip_count"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    const-string/jumbo v0, "com.yelp.android.tips.update"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$1;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 100
    const-string/jumbo v0, "com.yelp.android.tips.delete"

    new-instance v1, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$2;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 134
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 135
    const-string/jumbo v0, "first_to_tip"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 136
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 137
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 118
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->H()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->G()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 128
    :goto_0
    const-string/jumbo v0, "tip_feedback"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/em;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->k:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 129
    return-void

    .line 122
    :cond_0
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->i:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fo;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/fo;

    .line 125
    const-string/jumbo v0, "first_to_tip"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fp;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/fp;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    const-string/jumbo v0, "review_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string/jumbo v0, "tip_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string/jumbo v0, "tip_and_review_list"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/profile/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/profile/d;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 146
    return-void
.end method
