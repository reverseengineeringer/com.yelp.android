.class public abstract Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityYelpHopScotchMediaList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/MediaPayload;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpBusiness;

.field protected b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

.field protected c:Lcom/yelp/android/ui/activities/addphoto/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 159
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList$1;-><init>(Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 189
    const-string/jumbo v1, "You can only inflate a Banner View once."

    .line 191
    const v0, 0x7f0f01fb

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 192
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 193
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :catch_1
    move-exception v0

    .line 198
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 199
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 144
    const-string/jumbo v0, "extra.images"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-string/jumbo v0, "extra.images"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 147
    iget-object v3, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->b(Lcom/yelp/android/serializable/Photo;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->s()I

    move-result v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c(I)V

    .line 151
    :cond_1
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View$OnClickListener;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/a;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    .line 83
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/activities/addphoto/a;->b(Landroid/os/Bundle;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->showLoadingDialog()V

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c()V

    .line 98
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 121
    check-cast v0, Lcom/yelp/android/serializable/IdentifiableMedia;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/a;->c(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/a;->b(I)V

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->notifyDataSetChanged()V

    .line 131
    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->b()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c(I)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->hideLoadingDialog()V

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->t_()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c()V

    .line 137
    :cond_1
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 216
    const-string/jumbo v1, "You can only inflate a ListView Background View once."

    .line 218
    const v0, 0x7f0f01fc

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 219
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 220
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected c()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->s()I

    move-result v3

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 114
    :cond_1
    return-void
.end method

.method public g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method protected i()V
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 141
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setScrollingCacheEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v3, v2, v3, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPadding(IIII)V

    .line 61
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setClipToPadding(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    .line 67
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b()V

    .line 68
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Landroid/os/Bundle;)V

    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
