.class public Lcom/yelp/android/ui/activities/nearby/ActivityNearby;
.super Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;
.source "ActivityNearby.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/nearby/ac;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar",
        "<",
        "Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;",
        ">;",
        "Lcom/yelp/android/ui/activities/nearby/ac;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/ab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 54
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 56
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v0}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 108
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/yelp/android/serializable/Category;)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 66
    sget-object v4, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->DEFAULT:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    .line 67
    const-class v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 68
    const-class v0, Lcom/yelp/android/serializable/Filter$BusinessState;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 73
    const-string/jumbo v0, "Everything"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f070123

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move-object v0, v2

    move-object p2, v2

    .line 88
    :goto_0
    invoke-virtual {v3}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;->NEARBY:Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;

    if-eq v4, v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object p2, v2

    .line 92
    :cond_2
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/database/q;->g()Lcom/yelp/android/ax/a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/ax/a;->b()V

    .line 93
    new-instance v5, Lcom/yelp/android/appdata/webrequests/fv;

    invoke-direct {v5}, Lcom/yelp/android/appdata/webrequests/fv;-><init>()V

    invoke-virtual {v5, v0}, Lcom/yelp/android/appdata/webrequests/fv;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Category;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest$SearchMode;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/appdata/webrequests/fv;->a(Ljava/util/EnumSet;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v7

    new-instance v0, Lcom/yelp/android/serializable/Filter;

    sget-object v4, Lcom/yelp/android/serializable/Filter$Sort;->Default:Lcom/yelp/android/serializable/Filter$Sort;

    new-instance v5, Lcom/yelp/android/serializable/AttributeFilters;

    invoke-direct {v5, v6}, Lcom/yelp/android/serializable/AttributeFilters;-><init>(Ljava/util/List;)V

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/Filter;-><init>(Ljava/util/EnumSet;Ljava/util/Calendar;Lcom/yelp/android/serializable/at;Lcom/yelp/android/serializable/Filter$Sort;Lcom/yelp/android/serializable/AttributeFilters;)V

    invoke-virtual {v7, v0}, Lcom/yelp/android/appdata/webrequests/fv;->a(Lcom/yelp/android/serializable/Filter;)Lcom/yelp/android/appdata/webrequests/fv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fv;->a()Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;

    move-result-object v0

    .line 101
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;Lcom/yelp/android/appdata/webrequests/SearchRequest;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 76
    :cond_3
    const-string/jumbo v0, "ActiveDeal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    const v0, 0x7f0701f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_4
    const-string/jumbo v0, "CheckInOffer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 79
    sget-object v0, Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;->CHECK_IN_OFFERS:Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchOption;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    move-object v3, v0

    move-object v0, v2

    goto :goto_0

    .line 80
    :cond_5
    const-string/jumbo v0, "NewBusiness"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 81
    const v0, 0x7f0702ea

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :cond_6
    const-string/jumbo v0, "PlatformDelivery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 83
    const v0, 0x7f0701fd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private f()V
    .locals 11

    .prologue
    .line 183
    const v0, 0x7f0c0302

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 184
    const v0, 0x7f0c047f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 185
    const v0, 0x7f0c0481

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v3

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 188
    const v0, 0x7f0202b2

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    const v1, 0x7f020235

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 196
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 198
    const v4, 0x7f0a0052

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 199
    invoke-static {v0}, Lcom/yelp/android/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    invoke-static {v1}, Lcom/yelp/android/a/a;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    invoke-static {v0, v4}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 202
    invoke-static {v1, v4}, Lcom/yelp/android/a/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 204
    invoke-static {v0}, Lcom/yelp/android/a/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 205
    invoke-static {v1}, Lcom/yelp/android/a/a;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/ab;

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/c;

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object v6, v4, v1

    const/4 v1, 0x1

    const v10, 0x7f0c02e0

    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v10

    aput-object v10, v4, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/yelp/android/ui/activities/nearby/c;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;Landroid/view/View;Landroid/view/View;[Landroid/view/View;Landroid/content/res/Resources;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/ab;

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/ab;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 252
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->m()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 161
    return-void
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 5

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->a(Landroid/widget/ListView;)V

    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->e()Lcom/yelp/android/ui/activities/support/YelpListFragment;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->k()Landroid/support/v4/widget/SwipeRefreshLayout;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->a(ZII)V

    .line 174
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->f()V

    .line 166
    return-void
.end method

.method protected synthetic c()Lcom/yelp/android/ui/activities/support/YelpListFragment;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->d()Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;-><init>()V

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const v0, 0x7f0c016a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 116
    new-instance v1, Lcom/yelp/android/ui/activities/nearby/b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/nearby/b;-><init>(Lcom/yelp/android/ui/activities/nearby/ActivityNearby;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    return-void
.end method

.method public onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onDrawerItemSelected(Landroid/content/Intent;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->hideLogoInToolbar()V

    .line 132
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onResume()V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->setNearbyHotButtonSelected(Z)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->showLogoInToolbar()V

    .line 139
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/ActivitySingleSearchBar;->onStop()V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/ab;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a:Lcom/yelp/android/ui/util/ab;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ab;->b()V

    .line 149
    :cond_0
    return-void
.end method
