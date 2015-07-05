.class public Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityFirstAwards.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/yelp/android/serializable/User;

.field private d:Lcom/yelp/android/appdata/webrequests/gy;

.field private e:Lcom/yelp/android/appdata/webrequests/gz;

.field private f:Lcom/yelp/android/ui/activities/feed/aq;

.field private final g:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private final i:Lcom/yelp/android/ui/activities/feed/br;

.field private final j:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/FeedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 193
    new-instance v0, Lcom/yelp/android/ui/activities/profile/b;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/b;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/m;

    .line 222
    new-instance v0, Lcom/yelp/android/ui/activities/profile/c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/c;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/m;

    .line 248
    new-instance v0, Lcom/yelp/android/ui/activities/profile/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/d;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->i:Lcom/yelp/android/ui/activities/feed/br;

    .line 288
    new-instance v0, Lcom/yelp/android/ui/activities/profile/e;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/profile/e;-><init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->j:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    return p1
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

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/BusinessInfoProviderFeedEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->j:Ljava/util/Comparator;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/util/Collection;Ljava/util/Comparator;)V

    .line 187
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToReviewCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToTipCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 191
    :cond_0
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z
    .locals 1

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->isCompleted()Z

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
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    return v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/ui/activities/feed/aq;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    return p1
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;I)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    return v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 164
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 165
    instance-of v1, v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    if-eqz v1, :cond_1

    .line 166
    check-cast v0, Lcom/yelp/android/serializable/ReviewFeedEntry;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ReviewFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/serializable/TipFeedEntry;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lcom/yelp/android/serializable/TipFeedEntry;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/TipFeedEntry;->getIntentForClick(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected d()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 145
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->d()V

    .line 146
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToReviewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gy;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e_()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/gy;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gy;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 152
    :cond_0
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToTipCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gz;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/m;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    iget v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e_()I

    move-result v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/gz;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/User;IIZZ)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    .line 155
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gz;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 157
    :cond_1
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserProfileFirsts:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "user_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f070290

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.user"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    .line 82
    if-eqz p1, :cond_1

    .line 83
    const-string/jumbo v0, "tip_and_review_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 84
    const-string/jumbo v2, "review_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    .line 85
    const-string/jumbo v2, "tip_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    .line 88
    :goto_0
    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    :cond_0
    new-instance v2, Lcom/yelp/android/ui/activities/feed/aq;

    new-instance v3, Lcom/yelp/android/ui/activities/feed/v;

    invoke-direct {v3}, Lcom/yelp/android/ui/activities/feed/v;-><init>()V

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/ui/activities/feed/aq;-><init>(Lcom/yelp/android/ui/activities/feed/FeedType;Lcom/yelp/android/ui/activities/feed/at;)V

    iput-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/util/Collection;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v1, Lcom/yelp/android/serializable/ReviewFeedEntry;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/be;

    invoke-direct {v2}, Lcom/yelp/android/ui/activities/feed/be;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    const-class v1, Lcom/yelp/android/ui/activities/feed/UserIdOverridenTipFeedEntry;

    new-instance v2, Lcom/yelp/android/ui/activities/feed/bl;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->i:Lcom/yelp/android/ui/activities/feed/br;

    invoke-direct {v2, v3}, Lcom/yelp/android/ui/activities/feed/bl;-><init>(Lcom/yelp/android/ui/activities/feed/br;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/feed/aq;->a(Ljava/lang/Class;Lcom/yelp/android/ui/activities/feed/at;)V

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 120
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 121
    const-string/jumbo v0, "first_to_tip"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 122
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 106
    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToReviewCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getFirstToTipCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 115
    :goto_0
    return-void

    .line 110
    :cond_0
    const-string/jumbo v0, "first_to_review"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->h:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gy;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d:Lcom/yelp/android/appdata/webrequests/gy;

    .line 112
    const-string/jumbo v0, "first_to_tip"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->g:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gz;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->e:Lcom/yelp/android/appdata/webrequests/gz;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 127
    const-string/jumbo v0, "review_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    const-string/jumbo v0, "tip_count"

    iget v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    const-string/jumbo v0, "tip_and_review_list"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->f:Lcom/yelp/android/ui/activities/feed/aq;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/feed/aq;->b()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 131
    return-void
.end method
