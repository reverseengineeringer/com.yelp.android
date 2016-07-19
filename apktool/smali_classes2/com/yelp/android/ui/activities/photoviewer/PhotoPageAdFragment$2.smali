.class Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;
.super Ljava/lang/Object;
.source "PhotoPageAdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)Lcom/yelp/android/serializable/PhotoAdsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/PhotoAdsResponse;->c()Lcom/yelp/android/serializable/BusinessLocalAd;

    move-result-object v1

    .line 146
    new-instance v2, Lcom/yelp/android/g/a;

    invoke-direct {v2}, Lcom/yelp/android/g/a;-><init>()V

    .line 147
    const-string/jumbo v3, "business_id"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string/jumbo v0, "ad_request_id"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v0, "ad_business_id"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v0, "placement"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v0, "slot"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->d()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v3, "photo_ads_seen"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->d()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v3, "photos_seen"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityBusinessMediaViewer;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 178
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "ad_photo"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->AdsBusinessPhotoClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 183
    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->AD_CLICK:Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment$2;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAdFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void

    .line 163
    :sswitch_0
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "button"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :sswitch_1
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "ad_photo"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :sswitch_2
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "ad_title"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :sswitch_3
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "ad_snippet_text"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 175
    :sswitch_4
    const-string/jumbo v0, "source"

    const-string/jumbo v3, "ad_thumbnail_photo"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f025a -> :sswitch_4
        0x7f0f02e7 -> :sswitch_3
        0x7f0f03c8 -> :sswitch_2
        0x7f0f054a -> :sswitch_1
        0x7f0f054d -> :sswitch_0
    .end sparse-switch
.end method
