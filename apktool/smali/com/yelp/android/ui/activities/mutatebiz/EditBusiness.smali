.class public Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;
.super Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;
.source "EditBusiness.java"


# instance fields
.field private A:Z

.field private B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

.field private C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

.field private D:Lcom/yelp/android/appdata/webrequests/ag;

.field private final E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
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
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;-><init>()V

    .line 210
    new-instance v0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$6;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string/jumbo v1, "BUSINESS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "BUSINESS_IS_CLAIMABLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)Lcom/yelp/android/ui/widgets/YelpToggleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)Lcom/yelp/android/ui/widgets/YelpToggleButton;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->enableLoading()V

    .line 205
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ag;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->E:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ag;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->D:Lcom/yelp/android/appdata/webrequests/ag;

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->D:Lcom/yelp/android/appdata/webrequests/ag;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ag;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 208
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 232
    const v0, 0x7f030034

    return v0
.end method

.method protected a(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 263
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    return-object v0
.end method

.method protected a(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 270
    invoke-static {p0, p1, p2}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "\n"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aQ()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditOpenHours;->a(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 273
    return-object v0
.end method

.method protected a(Ljava/util/Map;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/analytics/iris/a;
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
            "Lcom/yelp/android/analytics/iris/a;"
        }
    .end annotation

    .prologue
    .line 312
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/y;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;>;)",
            "Lcom/yelp/android/appdata/webrequests/y;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->getAttachment()Landroid/net/Uri;

    move-result-object v1

    .line 239
    if-eqz v1, :cond_0

    .line 240
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ce;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v4}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/yelp/android/appdata/webrequests/ce;-><init>(Lcom/yelp/android/serializable/YelpBusiness;ZLjava/lang/String;Z)V

    .line 246
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ah;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ah;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;Lcom/yelp/android/serializable/YelpBusiness;ZZ)V

    goto :goto_0
.end method

.method protected b()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 294
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateCancelled:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected d()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessUpdateFail:Lcom/yelp/android/analytics/iris/EventIri;

    return-object v0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 278
    invoke-super {p0}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->e()V

    .line 279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessUpdate:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 2
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
    .line 289
    const-string/jumbo v0, "id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    iput-boolean v5, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->x:Z

    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS_IS_CLAIMABLE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->A:Z

    .line 72
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->t:Lcom/yelp/android/serializable/YelpBusinessAddresses;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->i()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->be()Lcom/yelp/android/serializable/AlternateBusinessNames;

    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aq()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->c:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->q:Lcom/yelp/android/serializable/BusinessAttributes;

    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Ljava/lang/String;)V

    .line 87
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/yelp/android/appdata/LocaleSettings;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->d:Ljava/lang/String;

    .line 90
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->f:Ljava/lang/String;

    .line 97
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->h()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->b:Lcom/yelp/android/ui/activities/mutatebiz/d;

    invoke-interface {v1, v0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->f()Landroid/location/Address;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->g:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const-string/jumbo v2, "\n"

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/mutatebiz/a;->a(Ljava/lang/CharSequence;Landroid/location/Address;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/location/Address;

    aput-object v0, v3, v4

    aput-object v7, v3, v5

    const/4 v0, 0x2

    aput-object v7, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;[Landroid/os/Parcelable;)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->h:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const-string/jumbo v1, ", "

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/serializable/Category$b;

    invoke-direct {v3}, Lcom/yelp/android/serializable/Category$b;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;Lcom/yelp/android/util/StringUtils$c;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aV()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a(Ljava/util/List;)V

    .line 114
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->j:Lcom/yelp/android/ui/activities/mutatebiz/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->as()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->k:Lcom/yelp/android/ui/activities/mutatebiz/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->i:Lcom/yelp/android/ui/activities/mutatebiz/d;

    const-string/jumbo v1, "\n"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aQ()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 122
    iput-boolean v4, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->a:Z

    .line 123
    const v0, 0x7f0f016c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 124
    const v0, 0x7f0f016b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$1;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->C:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$2;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 150
    const v0, 0x7f0f016f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 151
    const v0, 0x7f0f016e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$3;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$3;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->B:Lcom/yelp/android/ui/widgets/YelpToggleButton;

    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$4;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 169
    const v0, 0x7f0f0271

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 170
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->A:Z

    if-eqz v0, :cond_6

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string/jumbo v0, "business_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v3, "prominent_claim_button_edit_bizpage"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->p:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->EditBizpagePopupClaim:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 182
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->p:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 183
    const v0, 0x7f0f0272

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 184
    const v1, 0x7f0701cc

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    new-instance v1, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness$5;-><init>(Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_2
    return-void

    .line 93
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AlternateBusinessNames;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->e:Ljava/lang/String;

    goto/16 :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->n:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aj()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/mutatebiz/d;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mutatebiz/EditBusiness;->l:Lcom/yelp/android/ui/activities/mutatebiz/d;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 196
    :cond_5
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 199
    :cond_6
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 299
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/mutatebiz/ChangeBusinessAttributes;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 300
    const v0, 0x7f0f0607

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0705a6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 301
    const/4 v0, 0x1

    return v0
.end method
