.class public Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;
.super Lcom/yelp/android/appdata/webrequests/core/c;
.source "TrackOfflineAttributionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/serializable/YelpBusiness;

.field private g:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 62
    const-string/jumbo v0, "offline_attribution/track"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/core/c;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 64
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 65
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->g:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "advertiser_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->g:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v0, "business_id"

    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "event_type"

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/ui/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 49
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 50
    new-instance v1, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;

    invoke-direct {v1, p1, p2, p0}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;-><init>(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest$OfflineAttributionEventType;Ljava/lang/String;)V

    .line 52
    invoke-direct {v1}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 54
    const/4 v0, 0x1

    .line 57
    :cond_0
    return v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/TrackOfflineAttributionRequest;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
