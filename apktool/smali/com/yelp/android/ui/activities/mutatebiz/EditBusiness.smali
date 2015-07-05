.class public Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;
.super Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.source "EditBusiness.java"


# instance fields
.field private q:Landroid/widget/CheckBox;

.field private r:Lcom/yelp/android/appdata/webrequests/ag;

.field private final s:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessAddresses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;-><init>()V

    .line 131
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/r;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->s:Lcom/yelp/android/appdata/webrequests/m;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const-string/jumbo v1, "BUSINESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->enableLoading()V

    .line 126
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ag;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->s:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ag;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->r:Lcom/yelp/android/appdata/webrequests/ag;

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->r:Lcom/yelp/android/appdata/webrequests/ag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ag;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 129
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 153
    const v0, 0x7f03002a

    return v0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 178
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 180
    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 185
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 186
    const-string/jumbo v1, "\n"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedHours()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 188
    return-object v0
.end method

.method protected a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/b;
    .locals 1
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
    .line 221
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/w;
    .locals 4
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
    .line 159
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->getAttachment()Landroid/net/Uri;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_0

    .line 161
    new-instance v0, Lcom/yelp/android/appdata/webrequests/co;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/yelp/android/appdata/webrequests/co;-><init>(Lcom/yelp/android/serializable/YelpBusiness;ZLjava/lang/String;)V

    .line 164
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/appdata/webrequests/ah;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/serializable/YelpBusiness;Z)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

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
    .line 203
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateCancelled:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected d()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateFail:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessUpdate:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 2
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
    .line 198
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-nez v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->f()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAlternateNames()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->c:Ljava/lang/String;

    .line 68
    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getPrimary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->d:Ljava/lang/String;

    .line 71
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getSecondary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->e:Ljava/lang/String;

    .line 72
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getRomanized()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->f:Ljava/lang/String;

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->e()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->b:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    invoke-interface {v1, v0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress()Landroid/location/Address;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const-string/jumbo v2, "\n"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/f;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/location/Address;

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v5, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const-string/jumbo v1, ", "

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/serializable/w;

    invoke-direct {v3}, Lcom/yelp/android/serializable/w;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/ag;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCategories()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Ljava/util/List;)V

    .line 96
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->j:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPhone()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->k:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getBestUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getBestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->i:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    const-string/jumbo v1, "\n"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedHours()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 104
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a:Z

    .line 105
    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    .line 106
    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/p;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/p;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Landroid/widget/CheckBox;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/q;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/q;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    return-void

    .line 73
    :cond_2
    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->getPrimary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 93
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getMenuUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/ah;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->l:Lcom/yelp/android/ui/activities/mutatebiz/ah;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 208
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 209
    const v0, 0x7f0c04fd

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f070599

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 210
    const/4 v0, 0x1

    return v0
.end method
