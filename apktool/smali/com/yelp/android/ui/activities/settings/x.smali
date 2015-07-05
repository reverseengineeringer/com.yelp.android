.class public Lcom/yelp/android/ui/activities/settings/x;
.super Lcom/yelp/android/ui/activities/settings/a;
.source "OnCheckInNotificationChange.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/settings/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v3

    .line 35
    if-eqz v3, :cond_5

    .line 36
    invoke-virtual {v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    if-ne v0, v4, :cond_2

    :cond_0
    move v0, v2

    .line 38
    :goto_0
    invoke-virtual {v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->b()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    move-result-object v3

    sget-object v4, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;->NONE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationLocation;

    if-ne v3, v4, :cond_3

    :cond_1
    move v3, v2

    :goto_1
    or-int/2addr v0, v3

    .line 40
    if-nez v0, :cond_4

    :goto_2
    invoke-interface {p2, p3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 44
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 36
    goto :goto_0

    :cond_3
    move v3, v1

    .line 38
    goto :goto_1

    :cond_4
    move v2, v1

    .line 40
    goto :goto_2

    .line 42
    :cond_5
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3
.end method

.method a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 20
    return-void

    .line 15
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v0, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->DEFAULT_SCHEDULE:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    invoke-virtual {p1, v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;)Lcom/yelp/android/appdata/RemoteConfigPreferences;

    goto :goto_0
.end method
