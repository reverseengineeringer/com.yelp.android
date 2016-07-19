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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Lcom/yelp/android/appdata/webrequests/k$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/k$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/yelp/android/ui/activities/support/b$e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;-><init>()V

    .line 289
    new-instance v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment$1;-><init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    .line 363
    new-instance v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment$2;-><init>(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->k:Lcom/yelp/android/ui/activities/support/b$e;

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    return-object p1
.end method

.method public static a(Lcom/yelp/android/appdata/BusinessContributionType;Landroid/net/Uri;)Lcom/yelp/android/ui/activities/ContributionSearchFragment;
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;-><init>()V

    .line 77
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string/jumbo v2, "contribution_type"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 79
    const-string/jumbo v2, "contribution"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/appdata/BusinessContributionType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/ContributionSearchFragment;)Lcom/yelp/android/ui/activities/support/b$e;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->k:Lcom/yelp/android/ui/activities/support/b$e;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 194
    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 195
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v2, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, v2, :cond_1

    .line 197
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchCheckInSelect:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    const/16 v1, 0x3f4

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 204
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddPhotoSelect:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v4, "contribution"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {v2, v0, v3, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/appdata/BusinessContributionType;->getAddIntent(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 217
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->h:Lcom/yelp/android/util/ErrorType;

    if-nez v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Z)V

    .line 283
    :cond_1
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    .line 284
    iput-object p2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    .line 285
    iput-object p3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->g:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p_()V

    goto :goto_0
.end method

.method protected b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->b()V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v1, :cond_4

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Z)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->B()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    sget-object v1, Lcom/yelp/android/appdata/BusinessContributionType;->CHECK_IN:Lcom/yelp/android/appdata/BusinessContributionType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    const v1, 0x7f070231

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 171
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->b(Landroid/location/Location;)Lcom/yelp/android/appdata/webrequests/k;

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 181
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->g(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(I)V

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v0

    if-nez v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->y()V

    goto :goto_0

    .line 163
    :cond_4
    new-instance v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;-><init>(Lcom/yelp/android/ca/a;Lcom/yelp/android/appdata/webrequests/k$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;->SHORT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$FormatMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_1

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 178
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->e(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    goto :goto_2
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BusinessContributionType;->isMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SearchAddPhoto:Lcom/yelp/android/analytics/iris/ViewIri;

    .line 227
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

    .line 114
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 115
    new-instance v0, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    .line 116
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    new-array v1, v4, [Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;->ADDRESS:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a([Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter$DisplayFeature;)V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 120
    const-string/jumbo v0, "search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->j:Lcom/yelp/android/appdata/webrequests/k$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;Lcom/yelp/android/appdata/webrequests/k$b;)Lcom/yelp/android/appdata/webrequests/k;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->u()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->p()I

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->H_()V

    .line 127
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 233
    sparse-switch p1, :sswitch_data_0

    .line 258
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    :goto_1
    return-void

    .line 235
    :sswitch_0
    if-ne p2, v0, :cond_1

    .line 236
    invoke-static {p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getType(Landroid/content/Intent;)Lcom/yelp/android/appdata/BusinessContributionType;

    move-result-object v0

    .line 237
    invoke-virtual {v0, p3}, Lcom/yelp/android/appdata/BusinessContributionType;->getContribution(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v1

    .line 238
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v2

    .line 241
    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/appdata/BusinessContributionType;->writeToIntent(Landroid/content/Intent;Landroid/os/Parcelable;)V

    .line 242
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->startActivity(Landroid/content/Intent;)V

    .line 245
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Ljava/lang/String;

    goto :goto_1

    .line 247
    :cond_1
    invoke-static {p3}, Lcom/yelp/android/ui/activities/ActivityCheckIn;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Ljava/lang/String;

    goto :goto_1

    .line 254
    :sswitch_1
    if-ne p2, v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f4 -> :sswitch_0
        0x411 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "contribution_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/BusinessContributionType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a:Lcom/yelp/android/appdata/BusinessContributionType;

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const-string/jumbo v0, "selected_business"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    .line 91
    const-string/jumbo v0, "search_term"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, "search_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    .line 93
    const-string/jumbo v0, "contribution_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 97
    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    .line 99
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;

    .line 107
    const v1, 0x102000a

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 109
    :cond_0
    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    const-string/jumbo v0, "selected_business"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->d:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    const-string/jumbo v0, "search_term"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "search_location"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v0, "contribution_text"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpListFragment;->onStop()V

    .line 135
    const-string/jumbo v0, "search"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->a(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/k;)V

    .line 136
    return-void
.end method

.method public p_()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->c:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    .line 265
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->z()V

    .line 266
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(I)V

    .line 267
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b:Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->clear()V

    .line 269
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b(Z)V

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ContributionSearchFragment;->b()V

    .line 271
    return-void
.end method
