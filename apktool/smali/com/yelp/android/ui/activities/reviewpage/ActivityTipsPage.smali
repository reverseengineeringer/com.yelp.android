.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityTipsPage.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/reviewpage/bg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/cx;",
        ">;",
        "Lcom/yelp/android/ui/activities/reviewpage/bg;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/bs;

.field private b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/ui/activities/reviewpage/aw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/appdata/webrequests/cw;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string/jumbo v1, "extra.param.business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string/jumbo v1, "extra.param.business_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string/jumbo v1, "extra.param.hide_view_biz_button"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 184
    const-string/jumbo v0, "Languages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    .line 185
    const-string/jumbo v0, "LocaleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 187
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Ljava/util/Locale;Ljava/util/List;)V

    .line 189
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 192
    const-string/jumbo v4, "TipList.%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 194
    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Ljava/util/List;)V

    .line 196
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 202
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 209
    :cond_3
    return-void
.end method

.method private a(Ljava/util/Locale;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 285
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-direct {v2, v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/bg;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 298
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    new-instance v5, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-direct {v5, v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/aw;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/bg;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 308
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 309
    if-ne p1, v0, :cond_2

    const v4, 0x7f07053e

    move v5, v4

    .line 312
    :goto_2
    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    add-int/lit8 v4, v2, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p0, v5, v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v1}, Lcom/yelp/android/ui/util/bs;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    move v2, v4

    .line 314
    goto :goto_1

    .line 309
    :cond_2
    const v4, 0x7f07053a

    move v5, v4

    goto :goto_2

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    return-void
.end method

.method private c()Lcom/yelp/android/appdata/webrequests/cw;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/cw;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    .line 167
    :goto_0
    return-object v0

    .line 152
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    move-object v4, v0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 158
    if-nez v0, :cond_2

    move v2, v5

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 165
    new-instance v0, Lcom/yelp/android/appdata/webrequests/cw;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/cw;-><init>(Ljava/lang/String;IILjava/util/Locale;ZLcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    .line 166
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/cw;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/cw;

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->getCount()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/cx;",
            ")V"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Ljava/util/Locale;Ljava/util/List;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/aw;

    .line 225
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a(Ljava/util/Collection;)V

    .line 227
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 230
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    if-nez v1, :cond_2

    .line 232
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 235
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    .line 236
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 240
    :cond_3
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->getCount()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 241
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 247
    :cond_5
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/cx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 248
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c()Lcom/yelp/android/appdata/webrequests/cw;

    .line 250
    :cond_6
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 385
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Landroid/widget/Checkable;)V
    .locals 3

    .prologue
    .line 435
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 436
    const v1, 0x7f070637

    const v2, 0x7f070356

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V
    .locals 3

    .prologue
    .line 395
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fq;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/fq;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fq;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 398
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->addPositiveFeedback()V

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 405
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->notifyDataSetChanged()V

    goto :goto_1

    .line 401
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getFeedback()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->removePositiveFeedback()V

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->toggle()V

    .line 412
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f070639

    .line 416
    :goto_2
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 419
    :cond_2
    return-void

    .line 412
    :cond_3
    const v0, 0x7f070361

    goto :goto_2
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 390
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 391
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->f:Z

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 444
    const-string/jumbo v1, "changed entry id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 446
    return-void
.end method

.method protected d()V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->d()V

    .line 214
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c()Lcom/yelp/android/appdata/webrequests/cw;

    .line 215
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 340
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessTips:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 1
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
    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 350
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 351
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const-string/jumbo v0, "changed entry id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 356
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 357
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v3

    .line 358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 359
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 360
    const-string/jumbo v1, "did we delete it?"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    :cond_4
    const-string/jumbo v1, "bundle to be passed"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    const-string/jumbo v1, "bundle to be passed"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/TipFeedEntry;->CONTENT_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Tip;

    .line 367
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Tip;->setText(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->getEditedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->setEditedBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 376
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 120
    const-string/jumbo v2, "extra.param.business_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    .line 121
    const-string/jumbo v2, "extra.param.business_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    .line 122
    const-string/jumbo v2, "extra.param.hide_view_biz_button"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->f:Z

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v1

    .line 127
    const v2, 0x7f070343

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->b(I)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 130
    new-instance v1, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    .line 131
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/appdata/y;

    invoke-direct {v2}, Lcom/yelp/android/appdata/y;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    .line 133
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    .line 134
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 136
    if-eqz p1, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Landroid/os/Bundle;)V

    .line 142
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->registerForContextMenu(Landroid/view/View;)V

    .line 144
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 145
    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c()Lcom/yelp/android/appdata/webrequests/cw;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 424
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/bs;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 426
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 427
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 428
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 429
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/yelp/android/ui/util/bf;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 320
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 321
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100028

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 254
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/cw;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 258
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c()Lcom/yelp/android/appdata/webrequests/cw;

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    goto :goto_0

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04ec

    if-ne v0, v1, :cond_0

    .line 328
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreTipsAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 329
    const v0, 0x7f070634

    const v1, 0x7f070351

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 333
    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 173
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    const-string/jumbo v0, "LocaleList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/aw;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/aw;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 177
    const-string/jumbo v1, "TipList.%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 179
    :cond_0
    const-string/jumbo v0, "Languages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 180
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p2, Lcom/yelp/android/appdata/webrequests/cx;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/cx;)V

    return-void
.end method
