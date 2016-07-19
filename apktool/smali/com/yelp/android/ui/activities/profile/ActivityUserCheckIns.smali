.class public Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserCheckIns.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cu$a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/User;

.field private b:Lcom/yelp/android/ui/activities/profile/f;

.field private c:Lcom/yelp/android/serializable/OfferSummary;

.field private d:[I

.field private e:Lcom/yelp/android/appdata/webrequests/cu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 56
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    const-string/jumbo v0, "user.xtra"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v2, "known empty"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->P()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    return-object v1

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)Lcom/yelp/android/ui/panels/LeaderboardHeader;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 218
    new-instance v1, Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;-><init>(Landroid/content/Context;)V

    .line 219
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v1, p1, p2, p3}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a(III)V

    .line 221
    return-object v1
.end method

.method private a(Lcom/yelp/android/serializable/OfferSummary;)Lcom/yelp/android/ui/panels/TitleWithSubTitleView;
    .locals 5

    .prologue
    .line 225
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 227
    new-instance v1, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;-><init>(Landroid/content/Context;)V

    .line 228
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0703ed

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->a()I

    move-result v0

    .line 231
    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->b()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v0, v4

    const-string/jumbo v4, ", "

    invoke-static {p0, v2, v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 234
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    return-object v1
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(III)Lcom/yelp/android/ui/panels/LeaderboardHeader;

    move-result-object v1

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getFriendsActiveCount()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    :goto_0
    invoke-virtual {v2, v1, v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferSummary;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/serializable/OfferSummary;)Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {v0, v1, v2, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 272
    :cond_0
    return-void

    .line 262
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 162
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v1, :cond_1

    .line 163
    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/serializable/OfferSummary;

    if-eqz v1, :cond_2

    .line 166
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 167
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    if-eqz v1, :cond_0

    .line 168
    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cu$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cu$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->disableLoading()V

    .line 242
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->d:Lcom/yelp/android/serializable/OfferSummary;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    .line 243
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->c:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    .line 246
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->h()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 248
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 253
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/cu$a;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/f;->a(Ljava/util/Collection;)V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/f;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c(I)V

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/f;->notifyDataSetChanged()V

    .line 256
    return-void

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->f()V

    .line 251
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method a(Lcom/yelp/android/serializable/YelpCheckIn;Z)V
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    .line 175
    if-eqz p2, :cond_0

    .line 176
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 181
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    const-string/jumbo v2, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v2, "check_in_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v2, "is_positive"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "users_check_ins"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 188
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ek;

    invoke-direct {v1, v0, p2}, Lcom/yelp/android/appdata/webrequests/ek;-><init>(Ljava/lang/String;Z)V

    .line 189
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ek;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/f;->b(Ljava/lang/Object;)V

    .line 191
    return-void

    .line 178
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/cu;
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/cu;

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->P()I

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 205
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cu;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->s()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/cu;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/f;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cu;->a(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileCheckIns:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b()Lcom/yelp/android/appdata/webrequests/cu;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 281
    const v0, 0x7f0703ef

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 154
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 124
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    const-string/jumbo v1, "key.checked"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/serializable/YelpCheckIn;Z)V

    goto :goto_0

    .line 130
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 131
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 132
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 133
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 138
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInCommentBubble:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 139
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 140
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->n()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->d()I

    move-result v3

    .line 141
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->u()I

    move-result v4

    .line 142
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 148
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 149
    invoke-static {p3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/f;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 70
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f0703ee

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->setTitle(I)V

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user.xtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "like"

    const-class v2, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;

    invoke-direct {v0, v1, v6, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    const/16 v1, 0x67

    invoke-virtual {p0, v1, v0, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "comment"

    const-class v3, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;

    invoke-direct {v1, v2, v6, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    const/16 v2, 0x66

    invoke-virtual {p0, v2, v1, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "comment_or_like"

    const-class v4, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;

    invoke-direct {v2, v3, v6, p0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const/16 v3, 0x68

    invoke-virtual {p0, v3, v2, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 85
    new-instance v3, Lcom/yelp/android/ui/activities/profile/f;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/f;-><init>(Lcom/yelp/android/serializable/User;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/f;->b(Landroid/os/Bundle;)V

    .line 90
    const-string/jumbo v0, "key.leaderboardArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    .line 91
    const-string/jumbo v0, "key.offer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferSummary;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/f;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    if-eqz v0, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->f()V

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b()Lcom/yelp/android/appdata/webrequests/cu;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c()V

    .line 99
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    .line 277
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/cu;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/f;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/f;->a(Landroid/os/Bundle;)V

    .line 115
    const-string/jumbo v0, "key.leaderboardArray"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 116
    const-string/jumbo v0, "key.offer"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cu$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cu$a;)V

    return-void
.end method
