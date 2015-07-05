.class public Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityUserCheckIns.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dq;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/User;

.field private b:Lcom/yelp/android/ui/activities/profile/t;

.field private c:Lcom/yelp/android/serializable/OfferSummary;

.field private d:[I

.field private e:Lcom/yelp/android/appdata/webrequests/dp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/User;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 58
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    const-string/jumbo v0, "user.xtra"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 60
    const-string/jumbo v2, "known empty"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/User;->getCheckInCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    return-object v1

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(III)Lcom/yelp/android/ui/panels/LeaderboardHeader;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 211
    new-instance v1, Lcom/yelp/android/ui/panels/LeaderboardHeader;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;-><init>(Landroid/content/Context;)V

    .line 212
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    invoke-virtual {v1, p1, p2, p3}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->a(III)V

    .line 214
    return-object v1
.end method

.method private a(Lcom/yelp/android/serializable/OfferSummary;)Lcom/yelp/android/ui/panels/TitleWithSubTitleView;
    .locals 5

    .prologue
    .line 218
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 220
    new-instance v1, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;-><init>(Landroid/content/Context;)V

    .line 221
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getTitle()Landroid/widget/TextView;

    move-result-object v0

    const v2, 0x7f0703b7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 223
    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->getCount()I

    move-result v0

    .line 224
    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->getNames()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/OfferSummary;->getNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v0, v4

    const-string/jumbo v4, ", "

    invoke-static {p0, v2, v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Ljava/util/List;IILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 226
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/TitleWithSubTitleView;->getSubTitle()Landroid/widget/TextView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    return-object v1
.end method

.method private f()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 252
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

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/LeaderboardHeader;->getFriendsActiveCount()I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->WEEK:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    :goto_0
    invoke-virtual {v2, v1, v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/OfferSummary;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-direct {p0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/serializable/OfferSummary;)Lcom/yelp/android/ui/panels/TitleWithSubTitleView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {v0, v1, v2, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 261
    :cond_0
    return-void

    .line 254
    :cond_1
    sget-object v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;->FRIENDS:Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpCheckIn;

    if-eqz v1, :cond_1

    .line 156
    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    instance-of v1, v0, Lcom/yelp/android/serializable/OfferSummary;

    if-eqz v1, :cond_2

    .line 159
    invoke-static {p0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 160
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    if-eqz v1, :cond_0

    .line 161
    check-cast v0, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/leaderboard/ActivityLeaderboard$LeaderboardType;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->disableLoading()V

    .line 234
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dq;->d:Lcom/yelp/android/serializable/OfferSummary;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/dq;->a:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/dq;->b:I

    aput v2, v0, v1

    const/4 v1, 0x2

    iget v2, p2, Lcom/yelp/android/appdata/webrequests/dq;->c:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    .line 239
    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dq;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->i()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 241
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 246
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/dq;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/t;->a(Ljava/util/Collection;)V

    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/t;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c(I)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/t;->notifyDataSetChanged()V

    .line 249
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getHeaderViewsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->f()V

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method a(Lcom/yelp/android/serializable/YelpCheckIn;Z)V
    .locals 4

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v1

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 174
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    const-string/jumbo v2, "business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v2, "check_in_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v2, "is_positive"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "users_check_ins"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->CheckInFeedback:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 181
    new-instance v1, Lcom/yelp/android/appdata/webrequests/fo;

    invoke-direct {v1, v0, p2}, Lcom/yelp/android/appdata/webrequests/fo;-><init>(Ljava/lang/String;Z)V

    .line 182
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/fo;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/t;->a(Ljava/lang/Object;)V

    .line 184
    return-void

    .line 171
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0
.end method

.method public c()Lcom/yelp/android/appdata/webrequests/dp;
    .locals 1

    .prologue
    .line 102
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/dp;

    return-object v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getCheckInCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/dp;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->r()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/appdata/webrequests/dp;-><init>(Lcom/yelp/android/appdata/webrequests/m;I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/t;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dp;->is(Landroid/os/AsyncTask$Status;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->ProfileCheckIns:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c()Lcom/yelp/android/appdata/webrequests/dp;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 270
    const v0, 0x7f0703b9

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 115
    packed-switch p1, :pswitch_data_0

    .line 147
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 117
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 118
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    const-string/jumbo v1, "key.checked"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/serializable/YelpCheckIn;Z)V

    goto :goto_0

    .line 124
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 125
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInComment:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 126
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 127
    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpCheckIn;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 132
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->CheckInCommentBubble:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 133
    const-string/jumbo v0, "key.data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 134
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/Feedback;->getPositiveFeedbackCount()I

    move-result v3

    .line 135
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->getCommentsCount()I

    move-result v4

    .line 136
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

    .line 141
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 142
    invoke-static {p3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Landroid/content/Intent;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/profile/t;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const v0, 0x7f0703b8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->setTitle(I)V

    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user.xtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    .line 75
    const/16 v0, 0x67

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "like"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 77
    const/16 v1, 0x66

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "comment"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 79
    const/16 v2, 0x68

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "comment_or_like"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3, v5}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 81
    new-instance v3, Lcom/yelp/android/ui/activities/profile/t;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {v3, v4, v0, v1, v2}, Lcom/yelp/android/ui/activities/profile/t;-><init>(Lcom/yelp/android/serializable/User;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iput-object v3, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/t;->b(Landroid/os/Bundle;)V

    .line 84
    const-string/jumbo v0, "key.leaderboardArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    .line 85
    const-string/jumbo v0, "key.offer"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferSummary;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/t;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->f()V

    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c()Lcom/yelp/android/appdata/webrequests/dp;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d()V

    .line 93
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
    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Landroid/widget/AdapterView;I)Landroid/view/View;

    .line 266
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->e:Lcom/yelp/android/appdata/webrequests/dp;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->b:Lcom/yelp/android/ui/activities/profile/t;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/profile/t;->a(Landroid/os/Bundle;)V

    .line 109
    const-string/jumbo v0, "key.leaderboardArray"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->d:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 110
    const-string/jumbo v0, "key.offer"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->c:Lcom/yelp/android/serializable/OfferSummary;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 111
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dq;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/profile/ActivityUserCheckIns;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dq;)V

    return-void
.end method
