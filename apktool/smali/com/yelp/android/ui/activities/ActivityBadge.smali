.class public Lcom/yelp/android/ui/activities/ActivityBadge;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityBadge.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/ActivityBadge$ActivityBadgeDialog;
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

.field private b:Landroid/widget/ToggleButton;

.field private c:Landroid/widget/ToggleButton;

.field private d:Lcom/yelp/android/serializable/Badge;

.field private final e:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 182
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityBadge$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityBadge$1;-><init>(Lcom/yelp/android/ui/activities/ActivityBadge;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->e:Landroid/view/View$OnClickListener;

    .line 227
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBadge;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra.badge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/Badge;Lcom/yelp/android/serializable/YelpCheckIn;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityBadge$ActivityBadgeDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    const-string/jumbo v1, "extra.badge"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "extra.check_in"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityBadge;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    return-object p1
.end method

.method private a()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    .line 149
    sget-object v1, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->YELP:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    if-eq v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "extra.check_in"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 156
    if-eqz v1, :cond_4

    .line 157
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v4

    sget-object v5, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->FACEBOOK:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->o()Ljava/util/List;

    move-result-object v1

    sget-object v4, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->TWITTER:Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 163
    :goto_1
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 164
    const-string/jumbo v5, "award_type"

    const-string/jumbo v6, "Badge"

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v5, "award_title"

    iget-object v6, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/Badge;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v5, "social_network"

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v0, "previous_share"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AwardShare:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v4}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 157
    goto :goto_1

    .line 170
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 174
    const-string/jumbo v1, "award_type"

    const-string/jumbo v2, "Badge"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v1, "award_title"

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->Award:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 177
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityBadge;)Landroid/widget/ToggleButton;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityBadge;)Ljava/util/List;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityBadge;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Badge;)V
    .locals 1

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/serializable/Badge;

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->a(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BadgeDetails:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 106
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 107
    sget-object v1, Lcom/yelp/android/services/ShareService$ShareObjectType;->BADGE:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra.badge"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Badge;->k()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "extra.check_in"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->finish()V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const v6, 0x7f0f00f3

    const/16 v5, 0x8

    .line 69
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.check_in"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpCheckIn;

    .line 72
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "badge_feed"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    .line 74
    if-nez v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra.badge"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/Badge;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;->a(Lcom/yelp/android/serializable/Badge;Lcom/yelp/android/serializable/YelpCheckIn;Landroid/net/Uri;)Lcom/yelp/android/ui/activities/feed/BadgeFeedFragment;

    move-result-object v1

    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v2

    const v3, 0x7f0f00f8

    const-string/jumbo v4, "badge_feed"

    invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()I

    .line 85
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityBadge;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityBadge;->setResult(ILandroid/content/Intent;)V

    .line 86
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v1

    .line 88
    if-eqz v0, :cond_1

    .line 90
    const v0, 0x7f0f00f6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/widget/ToggleButton;

    .line 91
    const v0, 0x7f0f00f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/widget/ToggleButton;

    .line 92
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->b:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->c:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/c;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 94
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    const v0, 0x7f0f00f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityBadge;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "share_types"

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    .line 124
    const-string/jumbo v0, "extra.badge"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Badge;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/serializable/Badge;

    .line 125
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "share_types"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->a:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/yelp/android/util/d;->a(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Collection;)Landroid/os/Bundle;

    .line 132
    const-string/jumbo v0, "extra.badge"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityBadge;->d:Lcom/yelp/android/serializable/Badge;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 133
    return-void
.end method
