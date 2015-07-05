.class Lcom/yelp/android/ui/activities/settings/k;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/settings/ao;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/k;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/PreferenceView;)V
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v1

    .line 285
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    iget v0, v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->titleRes:I

    .line 286
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v2

    sget-object v3, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    if-eq v2, v3, :cond_0

    .line 288
    invoke-virtual {v1}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    iget v0, v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->titleRes:I

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/k;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yelp/android/ui/activities/settings/PreferenceView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 291
    return-void
.end method
