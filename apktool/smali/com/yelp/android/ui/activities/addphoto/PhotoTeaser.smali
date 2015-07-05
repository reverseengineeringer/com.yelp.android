.class public Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;
.super Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.source "PhotoTeaser.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dm;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string/jumbo v1, "biz"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 43
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V
    .locals 2
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
    .line 107
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    .line 108
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->d:Landroid/view/View;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->r()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/dm;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->h()V

    .line 115
    :cond_0
    return-void

    .line 108
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 151
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoFinish:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->finish()V

    .line 153
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->finish()V

    .line 147
    const v0, 0x7f040009

    const v1, 0x7f04001e

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->overridePendingTransition(II)V

    .line 148
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoTeaser:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    packed-switch p1, :pswitch_data_0

    .line 101
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 82
    :pswitch_0
    if-ne v2, p2, :cond_2

    .line 83
    const-string/jumbo v0, "is_video_extra"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {p0, v2, p3}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->setResult(ILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->finish()V

    goto :goto_0

    .line 89
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/os/Bundle;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->c()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x40d
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->c()V

    .line 140
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "biz"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 53
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v2, Lcom/yelp/android/ui/activities/addphoto/m;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoAddMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v2, p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/m;-><init>(Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 64
    const v0, 0x7f03015d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->d:Landroid/view/View;

    .line 66
    const v0, 0x7f03018d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 67
    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->setTitle(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;I)V

    .line 71
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x40d

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 125
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
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
    .line 119
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 120
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 130
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0c04fd

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->c()V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 33
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dm;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dm;)V

    return-void
.end method
