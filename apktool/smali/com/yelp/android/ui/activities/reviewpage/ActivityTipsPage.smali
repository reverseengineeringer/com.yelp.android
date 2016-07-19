.class public Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityTipsPage.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
.implements Lcom/yelp/android/ui/activities/reviewpage/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/YelpListActivity;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ck$a;",
        ">;",
        "Lcom/yelp/android/ui/activities/reviewpage/d$a;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/util/aj;

.field private b:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/util/Locale;",
            "Lcom/yelp/android/ui/activities/reviewpage/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yelp/android/appdata/webrequests/ck;

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
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    const-string/jumbo v1, "extra.param.business_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v1, "extra.param.business_name"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v1, "extra.param.hide_view_biz_button"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 180
    const-string/jumbo v0, "Languages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashSet;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    .line 181
    const-string/jumbo v0, "LocaleList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 183
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Ljava/util/Locale;Ljava/util/List;)V

    .line 185
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 186
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

    .line 187
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 188
    const-string/jumbo v4, "TipList.%s"

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 190
    if-eqz v4, :cond_0

    .line 191
    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Ljava/util/List;)V

    .line 192
    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 198
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    .line 203
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 205
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

    .line 282
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->a()Ljava/lang/String;

    move-result-object v1

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {v2, v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/d;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/d$a;)V

    invoke-virtual {v0, p1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
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

    .line 295
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v4, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 296
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    new-instance v5, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-direct {v5, v1, p0}, Lcom/yelp/android/ui/activities/reviewpage/d;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/activities/reviewpage/d$a;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v4, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v4, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
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

    .line 305
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 306
    if-ne p1, v0, :cond_2

    const v4, 0x7f07053b

    move v5, v4

    .line 310
    :goto_2
    iget-object v7, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    add-int/lit8 v4, v2, 0x1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    invoke-virtual {p0, v5, v8}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0, v1}, Lcom/yelp/android/ui/util/aj;->a(ILjava/lang/CharSequence;Landroid/widget/BaseAdapter;)V

    move v2, v4

    .line 314
    goto :goto_1

    .line 306
    :cond_2
    const v4, 0x7f070539

    move v5, v4

    goto :goto_2

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 316
    return-void
.end method

.method private b()Lcom/yelp/android/appdata/webrequests/ck;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ck;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    .line 164
    :goto_0
    return-object v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v4

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    move-object v4, v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 155
    if-nez v0, :cond_2

    move v2, v5

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0xa

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 162
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ck;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/appdata/webrequests/ck;-><init>(Ljava/lang/String;IILjava/util/Locale;ZLcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    new-array v1, v5, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ck;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->c:Lcom/yelp/android/appdata/webrequests/ck;

    goto :goto_0

    .line 155
    :cond_2
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->getCount()I

    move-result v2

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ck$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/ck$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->c()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Ljava/util/Locale;Ljava/util/List;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/d;

    .line 221
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 222
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/d;->a(Ljava/util/Collection;)V

    .line 223
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 226
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->c()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 227
    if-nez v1, :cond_2

    .line 228
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 231
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setFastScrollEnabled(Z)V

    .line 236
    :cond_3
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->getCount()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 237
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->c()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 239
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 243
    :cond_5
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ck$a;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 244
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b()Lcom/yelp/android/appdata/webrequests/ck;

    .line 246
    :cond_6
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 384
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Landroid/widget/Checkable;)V
    .locals 3

    .prologue
    .line 430
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;)Landroid/content/Intent;

    move-result-object v0

    .line 431
    const v1, 0x7f07020b

    const v2, 0x7f070392

    invoke-static {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 437
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/ui/widgets/SpannedImageButton;)V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 395
    new-instance v0, Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 396
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->a()V

    .line 402
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

    .line 403
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->notifyDataSetChanged()V

    goto :goto_1

    .line 399
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->b()V

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->toggle()V

    .line 407
    invoke-virtual {p2}, Lcom/yelp/android/ui/widgets/SpannedImageButton;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070201

    const v2, 0x7f07039c

    invoke-static {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 414
    :cond_2
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Tip;)V
    .locals 1

    .prologue
    .line 388
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 389
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 209
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->c()V

    .line 210
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b()Lcom/yelp/android/appdata/webrequests/ck;

    .line 211
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Tip;)V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->f:Z

    invoke-static {p0, p1, v0, v1}, Lcom/yelp/android/ui/activities/tips/TipComplimentsLikes;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Tip;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 444
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 342
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessTips:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 347
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/yelp/android/analytics/g;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 352
    const/16 v0, 0x64

    if-ne p1, v0, :cond_6

    .line 353
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string/jumbo v0, "tip"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 358
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    .line 359
    iget-object v3, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v3

    .line 360
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Tip;

    .line 361
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 362
    const-string/jumbo v1, "tip_deleted"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 366
    :cond_4
    const-string/jumbo v1, "tip_updated"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 367
    const-string/jumbo v1, "tip_updated"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Tip;

    .line 368
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/Tip;->a(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Tip;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/Tip;->a(Landroid/graphics/Bitmap;)V

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 377
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 117
    const-string/jumbo v2, "extra.param.business_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    .line 118
    const-string/jumbo v2, "extra.param.business_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    .line 119
    const-string/jumbo v2, "extra.param.hide_view_biz_button"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->f:Z

    .line 121
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setItemsCanFocus(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->createLoadingPanel()Lcom/yelp/android/ui/panels/PanelLoading;

    move-result-object v1

    .line 124
    const v2, 0x7f07037e

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/PanelLoading;->a(I)V

    .line 125
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setEmptyView(Landroid/view/View;)V

    .line 127
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    .line 128
    new-instance v1, Ljava/util/TreeMap;

    new-instance v2, Lcom/yelp/android/appdata/LocaleSettings$a;

    invoke-direct {v2}, Lcom/yelp/android/appdata/LocaleSettings$a;-><init>()V

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    .line 130
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/LocaleSettings;->h()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Landroid/os/Bundle;)V

    .line 139
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->registerForContextMenu(Landroid/view/View;)V

    .line 141
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b()Lcom/yelp/android/appdata/webrequests/ck;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 419
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/aj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 421
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    if-eqz v1, :cond_0

    .line 422
    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    .line 423
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->e:Ljava/lang/String;

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 424
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/yelp/android/ui/util/ab;->a(Landroid/content/Context;Landroid/view/ContextMenu;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
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

    const v1, 0x7f10002c

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
    .line 250
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ck;

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 254
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 255
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b()Lcom/yelp/android/appdata/webrequests/ck;

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    goto :goto_0

    .line 261
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

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

    const v1, 0x7f0f05f6

    if-ne v0, v1, :cond_0

    .line 328
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMoreTipsAddTip:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 329
    const v0, 0x7f070200

    const v1, 0x7f07038d

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->d:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->startActivity(Landroid/content/Intent;)V

    .line 335
    const/4 v0, 0x1

    .line 337
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
    .line 169
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string/jumbo v0, "LocaleList"

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
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

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/reviewpage/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviewpage/d;->a()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 173
    const-string/jumbo v1, "TipList.%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 175
    :cond_0
    const-string/jumbo v0, "Languages"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 176
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ck$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/reviewpage/ActivityTipsPage;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ck$a;)V

    return-void
.end method
