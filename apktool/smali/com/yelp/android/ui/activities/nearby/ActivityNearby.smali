.class public Lcom/yelp/android/ui/activities/nearby/ActivityNearby;
.super Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;
.source "ActivityNearby.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar",
        "<",
        "Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;",
        ">;",
        "Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 56
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 57
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 104
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    sget-object v2, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 71
    const-string/jumbo v0, "Everything"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0701a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move-object v0, v1

    move-object p2, v1

    .line 86
    :goto_0
    sget-object v3, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v2, v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move-object p2, v1

    .line 90
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/database/g;->e()Lcom/yelp/android/ca/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/ca/a;->b()V

    .line 91
    new-instance v3, Lcom/yelp/android/appdata/webrequests/eo;

    invoke-direct {v3}, Lcom/yelp/android/appdata/webrequests/eo;-><init>()V

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/eo;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    new-instance v2, Lcom/yelp/android/serializable/Filter;

    sget-object v3, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    invoke-direct {v2, v1, v3}, Lcom/yelp/android/serializable/Filter;-><init>(Lcom/yelp/android/serializable/Distance;Lcom/yelp/android/serializable/Sort;)V

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/eo;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eo;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 98
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 74
    :cond_3
    const-string/jumbo v0, "ActiveDeal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 75
    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_4
    const-string/jumbo v0, "CheckInOffer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    const v0, 0x7f0701b1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_5
    const-string/jumbo v0, "NewBusiness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    const v0, 0x7f07032b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_6
    const-string/jumbo v0, "PlatformDelivery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    const v0, 0x7f07024b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private f()V
    .locals 11

    .prologue
    .line 202
    const v0, 0x7f0f038a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 203
    const v0, 0x7f0f0586

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 204
    const v0, 0x7f0f0588

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 205
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 207
    new-instance v0, Lcom/yelp/android/cm/c;

    invoke-static {}, Lcom/yelp/android/appdata/j;->a()Lcom/yelp/android/appdata/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/j;->d()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/cm/c;-><init>(Landroid/content/Context;I)V

    .line 211
    const v1, 0x7f020492

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 217
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 218
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 220
    const v4, 0x7f0e008c

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 221
    invoke-static {v0}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 222
    invoke-static {v1}, Lcom/yelp/android/d/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 223
    invoke-static {v0, v4}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 224
    invoke-static {v1, v4}, Lcom/yelp/android/d/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 226
    invoke-static {v0}, Lcom/yelp/android/d/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Lcom/yelp/android/cm/c;

    .line 227
    invoke-static {v1}, Lcom/yelp/android/d/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/r;

    if-nez v0, :cond_0

    .line 230
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v6, v4, v1

    const/4 v1, 0x1

    const v10, 0x7f0f0347

    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v10

    aput-object v10, v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$2;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;Landroid/view/View;Landroid/view/View;[Landroid/view/View;Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/yelp/android/cm/c;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/r;

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/r;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 173
    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 5

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZII)V

    .line 192
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->f()V

    .line 178
    return-void
.end method

.method protected c()Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
    .locals 3

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "show_location_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->a(Z)Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->c()Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    move-result-object v0

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onCreate(Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f0f0589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 118
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby$1;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->hideLogoInToolbar()V

    .line 144
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onResume()V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->setNearbyHotButtonSelected(Z)V

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->showLogoInToolbar()V

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onStop()V

    .line 158
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/r;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/r;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/r;->b()V

    .line 161
    :cond_0
    return-void
.end method
