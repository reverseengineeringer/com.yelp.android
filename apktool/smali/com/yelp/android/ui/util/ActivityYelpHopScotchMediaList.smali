.class public abstract Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityYelpHopScotchMediaList.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/serializable/YelpBusiness;

.field protected b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

.field protected c:Lcom/yelp/android/ui/activities/addphoto/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 166
    const-string/jumbo v0, "com.yelp.android.media.update"

    new-instance v1, Lcom/yelp/android/ui/util/a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/util/a;-><init>(Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->registerDirtyEventReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method


# virtual methods
.method protected a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 195
    const-string/jumbo v1, "You can only inflate a Banner View once."

    .line 197
    const v0, 0x7f0c01cb

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 198
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 199
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 202
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 148
    const-string/jumbo v0, "bitmap_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "bitmap_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "caption_extra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string/jumbo v2, "photo_id_extra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 152
    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, ""

    .line 155
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v3, v1, v0, v2}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c(I)V

    .line 158
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
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Ljava/lang/String;)Lcom/yelp/android/ui/activities/addphoto/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0, p4}, Lcom/yelp/android/ui/activities/addphoto/i;->b(Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->showLoadingDialog()V

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 102
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->d()V

    .line 103
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dm;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 125
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

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

    .line 126
    check-cast v0, Lcom/yelp/android/serializable/IdentifiableMedia;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/i;->c(Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/i;->b(I)V

    .line 132
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->notifyDataSetChanged()V

    .line 135
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->e()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c(I)V

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->hideLoadingDialog()V

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->getCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->d()V

    .line 141
    :cond_1
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 222
    const-string/jumbo v1, "You can only inflate a ListView Background View once."

    .line 224
    const v0, 0x7f0c01cc

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 225
    invoke-virtual {v0, p1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 226
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected d()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->r()I

    move-result v3

    invoke-direct {v1, v0, v2, v3, p0}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;-><init>(Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;ILcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 119
    :cond_1
    return-void
.end method

.method public g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setSelection(I)V

    .line 145
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->setContentView(I)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setScrollingCacheEnabled(Z)V

    .line 62
    const v0, 0x7f010049

    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;I)I

    move-result v0

    .line 66
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v1

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v3, v2, v3, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setPadding(IIII)V

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setClipToPadding(Z)V

    .line 73
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->g()Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b:Lcom/yelp/android/appdata/webrequests/UserLocalMediaRequest;

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c()V

    .line 77
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Landroid/os/Bundle;)V

    .line 108
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
