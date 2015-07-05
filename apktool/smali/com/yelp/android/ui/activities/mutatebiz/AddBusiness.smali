.class public Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;
.super Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.source "AddBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;
.implements Lcom/yelp/android/ui/activities/mutatebiz/af;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/serializable/YelpBusiness;",
        ">;>;",
        "Lcom/yelp/android/ui/activities/mutatebiz/af",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    const-string/jumbo v1, "categories"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 58
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->a(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 64
    if-eqz p2, :cond_0

    .line 67
    const-string/jumbo v1, "country"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 122
    const v0, 0x7f030017

    return v0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 143
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Lcom/yelp/android/analytics/iris/b;"
        }
    .end annotation

    .prologue
    .line 169
    const-string/jumbo v0, "is_default_business_category_code"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string/jumbo v0, "business_country_code"

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/w;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/w;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v3

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    .line 100
    :cond_0
    new-instance v4, Lcom/yelp/android/appdata/webrequests/u;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    aget-object v0, v3, v2

    check-cast v0, Landroid/location/Address;

    aget-object v3, v3, v1

    if-eqz v3, :cond_1

    :goto_0
    invoke-direct {v4, p1, v5, v0, v1}, Lcom/yelp/android/appdata/webrequests/u;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/CharSequence;Landroid/location/Address;Z)V

    return-object v4

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getParcelableArrayData()[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocaleSettings;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddCancel:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected d()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddFail:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessAdd:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

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
    .line 117
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 148
    const/16 v0, 0x3f9

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->finish()V

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "categories"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "country"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const-string/jumbo v3, ", "

    new-instance v4, Lcom/yelp/android/serializable/w;

    invoke-direct {v4}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v3, v0, v4}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    invoke-static {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditName;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3f9

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/AddBusiness;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 111
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f07007d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 112
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
