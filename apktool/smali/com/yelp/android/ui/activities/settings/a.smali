.class public abstract Lcom/yelp/android/ui/activities/settings/a;
.super Ljava/lang/Object;
.source "BaseSaveAccountConfigKeyChangeListener.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0, p2, p3, v0}, Lcom/yelp/android/ui/activities/settings/a;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method abstract a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
.end method

.method abstract a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V
.end method

.method public final a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 23
    new-instance v0, Lcom/yelp/android/ui/activities/settings/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/settings/b;-><init>(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    .line 33
    new-instance v2, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-direct {v2}, Lcom/yelp/android/appdata/RemoteConfigPreferences;-><init>()V

    .line 34
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V

    .line 35
    new-instance v3, Lcom/yelp/android/appdata/webrequests/fl;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v3, v0, v2, v1, v4}, Lcom/yelp/android/appdata/webrequests/fl;-><init>(Lcom/yelp/android/appdata/webrequests/m;Lcom/yelp/android/appdata/RemoteConfigPreferences;Landroid/location/Location;Ljava/lang/String;)V

    new-array v0, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v0}, Lcom/yelp/android/appdata/webrequests/fl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 37
    return v5
.end method
