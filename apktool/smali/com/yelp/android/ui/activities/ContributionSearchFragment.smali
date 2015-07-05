.class public Lcom/yelp/android/ui/activities/ContributionSearchFragment;
.super Lcom/yelp/android/ui/activities/support/YelpListFragment;
.source "ContributionSearchFragment.java"


# instance fields
.field private a:Lcom/yelp/android/appdata/BusinessContributionType;

.field private b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

.field private d:Lcom/yelp/android/serializable/YelpBusiness;

.field private e:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:Lcom/yelp/android/appdata/webrequests/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/j",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/yelp/android/ui/activities/support/o;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 263
    new-instance v0, Lcom/yelp/android/ui/activities/ex;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ex;-><init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Lcom/yelp/android/appdata/webrequests/j;

    .line 334
    new-instance v0, Lcom/yelp/android/ui/activities/ey;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ey;-><init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/ui/activities/support/o;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/appdata/BusinessContributionType;)Lcom/yelp/android/ui/activities/ContributionSearchFragment;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;-><init>()V

    .line 72
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 73
    const-string/jumbo v2, "extra.contribution_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 74
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 75
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/activities/support/o;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/ui/activities/support/o;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 186
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, v2, :cond_2

    .line 188
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchCheckInSelect:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/appdata/BusinessContributionType;->getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    .line 196
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    iget-boolean v2, v2, Lcom/yelp/android/appdata/BusinessContributionType;->addIntentReturnsData:Z

    if-eqz v2, :cond_3

    .line 199
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 200
    const/16 v0, 0x3ee

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, v2, :cond_0

    .line 190
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddPhotoSelect:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 203
    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Lcom/yelp/android/util/ErrorType;

    if-nez v0, :cond_0

    .line 261
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->cancel(Z)V

    .line 257
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    .line 258
    iput-object p2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->h:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a_()V

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 239
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->x()V

    .line 240
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(I)V

    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->clear()V

    .line 243
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b()V

    .line 245
    return-void
.end method

.method protected b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->isWaitingForLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v1, :cond_4

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->cancel(Z)V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->copy()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setCallback(Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    const v1, 0x7f0701e6

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setLocation(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/h;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 173
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchTerms(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setOffset(I)V

    .line 176
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v0

    if-nez v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 180
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->search()V

    goto :goto_0

    .line 155
    :cond_4
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Lcom/yelp/android/appdata/webrequests/j;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ax/a;Lcom/yelp/android/appdata/webrequests/j;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 156
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setFormatMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_1

    .line 169
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setSearchMode(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->setTermNear(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_2
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_PHOTO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v0, v1, :cond_0

    .line 212
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchAddPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 214
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchNearbyCheckIn:Lcom/yelp/android/analytics/iris/ViewIri;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 108
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    new-array v1, v4, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 111
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 113
    const-string/jumbo v0, "search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Lcom/yelp/android/appdata/webrequests/j;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;Lcom/yelp/android/appdata/webrequests/j;)Lcom/yelp/android/appdata/webrequests/h;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->isFetching()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->isWaitingForLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i_()V

    .line 120
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 220
    packed-switch p1, :pswitch_data_0

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 222
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 223
    invoke-static {p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 224
    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v1

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v2

    .line 227
    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 228
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 83
    if-eqz p1, :cond_0

    .line 84
    const-string/jumbo v0, "selected_business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 85
    const-string/jumbo v0, "search_term"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    .line 86
    const-string/jumbo v0, "search_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 90
    const v0, 0x7f0701e6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    .line 92
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 100
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 102
    :cond_0
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 134
    const-string/jumbo v0, "selected_business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    const-string/jumbo v0, "search_term"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "search_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Landroid/os/Bundle;)V

    .line 138
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onStop()V

    .line 128
    const-string/jumbo v0, "search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/h;)V

    .line 129
    return-void
.end method
