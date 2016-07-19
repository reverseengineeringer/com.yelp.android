.class public Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;
.super Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;
.source "PhotoTeaser.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/serializable/MediaPayload;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private e:I


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
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 46
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/BusinessContributionType;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    const-string/jumbo v1, "extra.contribution"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "extra.contribution_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 57
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
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/MediaPayload;",
            ")V"
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    .line 131
    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->d:Landroid/view/View;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->s()I

    move-result v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/MediaPayload;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->i()V

    .line 138
    :cond_0
    return-void

    .line 131
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 174
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoFinish:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    iget v1, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->e:I

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->startActivity(Landroid/content/Intent;)V

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->finish()V

    .line 179
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 167
    invoke-super {p0}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->finish()V

    .line 170
    const v0, 0x7f04000b

    const v1, 0x7f040024

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->overridePendingTransition(II)V

    .line 171
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoTeaser:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 108
    packed-switch p1, :pswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    const/4 v0, -0x1

    if-ne v0, p2, :cond_1

    .line 111
    const-string/jumbo v0, "extra.posted_media"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->e:I

    .line 112
    const-string/jumbo v0, "extra.images"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/os/Bundle;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->b()V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x411
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->b()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string/jumbo v0, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v3, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser$1;

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoAddMore:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v3, p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser$1;-><init>(Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    .line 79
    const v0, 0x7f0301c7

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->d:Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->a(Z)V

    .line 84
    const v0, 0x7f030209

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->b(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 86
    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v4, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;I)V

    .line 90
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotos:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {p0, v3, v0, v1, p1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/view/View$OnClickListener;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.contribution"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 93
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "extra.contribution_type"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/appdata/BusinessContributionType;

    .line 97
    iget-object v3, p0, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a:Lcom/yelp/android/serializable/YelpBusiness;

    sget-object v4, Lcom/yelp/android/appdata/BusinessContributionType;->BUSINESS_VIDEO:Lcom/yelp/android/appdata/BusinessContributionType;

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0, v3, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x411

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    return-void

    :cond_0
    move v1, v2

    .line 97
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 148
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
    .line 142
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 143
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0f0607

    if-ne v0, v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->b()V

    .line 155
    const/4 v0, 0x1

    .line 157
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
    check-cast p2, Lcom/yelp/android/serializable/MediaPayload;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/MediaPayload;)V

    return-void
.end method
