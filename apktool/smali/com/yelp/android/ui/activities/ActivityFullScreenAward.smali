.class public Lcom/yelp/android/ui/activities/ActivityFullScreenAward;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityFullScreenAward.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;,
        Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/yelp/android/services/ShareService$ShareObjectType;

.field private e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 432
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;-><init>(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/RankTitle$Rank;Ljava/lang/String;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;
    .locals 6

    .prologue
    .line 273
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->w()Z

    move-result v0

    .line 275
    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_CITY_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p1, v1, :cond_1

    .line 276
    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->King:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    :goto_0
    move-object v1, v0

    .line 285
    :goto_1
    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 276
    :cond_0
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Queen:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    goto :goto_0

    .line 277
    :cond_1
    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_HOOD_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p1, v1, :cond_3

    .line 278
    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baron:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Baroness:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    goto :goto_2

    .line 279
    :cond_3
    sget-object v1, Lcom/yelp/android/serializable/RankTitle$Rank;->TOP_USER:Lcom/yelp/android/serializable/RankTitle$Rank;

    if-ne p1, v1, :cond_5

    .line 280
    if-eqz v0, :cond_4

    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duke:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    :goto_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->Duchess:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    goto :goto_3

    .line 282
    :cond_5
    if-eqz v0, :cond_6

    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularMale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    :goto_4
    move-object v1, v0

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->RegularFemale:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    goto :goto_4
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/services/ShareService$ShareObjectType;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string/jumbo v1, "extra.award_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v1, "extra.award_location"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 254
    const-string/jumbo v2, "extra.user_name"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->ac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v1, "share_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string/jumbo v1, "share_object_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 258
    const-string/jumbo v1, "extra.content_share_types"

    invoke-static {p5}, Lcom/yelp/android/util/d;->a(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 260
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 3

    .prologue
    .line 389
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 390
    const-string/jumbo v1, "award_type"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->awardCategory:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string/jumbo v1, "award_title"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->Award:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 393
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 398
    sget-object v2, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    if-eq v0, v2, :cond_0

    .line 402
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 403
    const-string/jumbo v3, "award_type"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget-object v4, v4, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->awardCategory:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardCategory;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v3, "award_title"

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v3, "social_network"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v3, "previous_share"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AwardShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    .line 406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 410
    :cond_2
    return-void
.end method

.method private c()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;
    .locals 2

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.award_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b()V

    return-void
.end method

.method private d()V
    .locals 6

    .prologue
    .line 417
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d:Lcom/yelp/android/services/ShareService$ShareObjectType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 426
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->finish()V

    .line 427
    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected getStatusBarColor(I)I
    .locals 2

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    move-result-object v1

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 348
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 349
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d()V

    .line 351
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const v8, 0x7f0f0193

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 296
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 297
    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->setContentView(I)V

    .line 299
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 300
    const-string/jumbo v0, "share_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c:Ljava/lang/String;

    .line 301
    const-string/jumbo v0, "share_object_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 303
    const-string/jumbo v0, "extra.content_share_types"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yelp/android/util/d;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    .line 307
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c()Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    .line 308
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a()V

    .line 310
    const v0, 0x7f0f0192

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v2, v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->iconId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    const v0, 0x7f0f0191

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v2, v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->starBurstAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 314
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v2, v2, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->textColorId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 315
    const-string/jumbo v0, "extra.award_location"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    const v0, 0x7f0f0190

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 317
    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v4, v4, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->titleId:I

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 320
    const v0, 0x7f0f0194

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 321
    iget-object v4, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->getBodyText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v0, v0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->subTitleId:I

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p0, v8}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :goto_0
    const v0, 0x7f0f018f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v1, v1, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->backgroundColorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 336
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    .line 337
    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 339
    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 341
    const v0, 0x7f0f0196

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0, v8}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->e:Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;

    iget v3, v3, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$AwardType;->subTitleId:I

    new-array v4, v7, [Ljava/lang/Object;

    const-string/jumbo v5, "extra.user_name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 366
    const-string/jumbo v0, "award_share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    .line 369
    const-string/jumbo v0, "content_share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    .line 372
    const-string/jumbo v0, "share_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c:Ljava/lang/String;

    .line 373
    const-string/jumbo v0, "share_object_type"

    const-class v1, Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/ShareService$ShareObjectType;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d:Lcom/yelp/android/services/ShareService$ShareObjectType;

    .line 375
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 357
    const-string/jumbo v0, "award_share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 358
    const-string/jumbo v0, "content_share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 360
    const-string/jumbo v0, "share_id"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v0, "share_object_type"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 362
    return-void
.end method
