.class public abstract Lcom/yelp/android/ui/activities/ActivityCheckInsList;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityCheckInsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "*",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/widget/SimpleAdapter;

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/yelp/android/serializable/User;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private f:Lcom/yelp/android/ui/util/aw;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/YelpCheckIn;Z)Ljava/util/EnumMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            "Z)",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 183
    new-instance v1, Ljava/util/EnumMap;

    const-class v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-direct {v1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 184
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->l()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v0

    .line 185
    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->badgeIcon:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    sget-object v3, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne v0, v3, :cond_0

    const v0, 0x7f020584

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->actionTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    const v2, 0x7f080006

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->w()I

    move-result v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->locationTitle:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->ratingImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->reviewCount:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080025

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    if-eqz p2, :cond_1

    .line 203
    const v0, 0x7f070366

    new-array v2, v8, [Ljava/lang/Object;

    sget-object v3, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->e()Ljava/util/Date;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :goto_1
    sget-object v2, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->bottomInfoText:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {v1, v2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->itemImage:Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-object v1

    .line 185
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v0

    goto/16 :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a(Ljava/util/Collection;)V

    .line 225
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->disableLoading()V

    .line 226
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->o_()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 229
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Ljava/lang/String;)Z

    move-result v2

    .line 171
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 172
    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a(Lcom/yelp/android/serializable/YelpCheckIn;Z)Ljava/util/EnumMap;

    move-result-object v0

    .line 173
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 174
    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 180
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "*",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->o_()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->d()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 139
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 140
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 145
    :cond_1
    return-void
.end method

.method protected abstract d()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<",
            "Ljava/lang/Void;",
            "*",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation
.end method

.method protected f()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->d:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public g()Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<**",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 1
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
    .line 247
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->d:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->ae()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 252
    const v0, 0x7f07041e

    return v0
.end method

.method protected abstract o_()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    if-eqz p1, :cond_2

    const-string/jumbo v0, "check_ins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string/jumbo v0, "check_ins"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    .line 94
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/util/aw;

    const v1, 0x7f0200bb

    invoke-direct {v0, v1}, Lcom/yelp/android/ui/util/aw;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->f:Lcom/yelp/android/ui/util/aw;

    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->d:Lcom/yelp/android/serializable/User;

    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v6

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->e:Ljava/util/ArrayList;

    .line 102
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCheckInsList$Key;->getIds()Landroid/util/Pair;

    move-result-object v1

    .line 103
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->e:Ljava/util/ArrayList;

    const v3, 0x7f030172

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    .line 110
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->f:Lcom/yelp/android/ui/util/aw;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setDividerHeight(I)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v6, v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a(Ljava/util/Collection;)V

    .line 117
    :cond_1
    return-void

    .line 92
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 233
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->populateError(Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 234
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->enableLoading(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 132
    :cond_0
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->g()Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string/jumbo v0, "check_ins"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 159
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/util/List;)V

    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->b:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetInvalidated()V

    .line 166
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityCheckInsList;->c()V

    .line 167
    return-void
.end method
