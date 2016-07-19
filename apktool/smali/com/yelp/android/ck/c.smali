.class public Lcom/yelp/android/ck/c;
.super Lcom/yelp/android/ck/a;
.source "OnBackgroundLocationSettingsChange.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/ck/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 17
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    sget-object v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->REPORT_BACKGROUND_LOCATION:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    iget-object v1, v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->apiKey:Ljava/lang/String;

    invoke-super {p0, p1, v1, p3}, Lcom/yelp/android/ck/a;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->d()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-ne p3, v0, :cond_1

    :goto_0
    invoke-interface {v1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 25
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
