.class Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;
.super Ljava/lang/Object;
.source "ActivityBackgroundLocationOptIn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BackgroundLocationOptInYes:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 35
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/appdata/ApiPreferences;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->REPORT_BACKGROUND_LOCATION:Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;

    iget-object v1, v1, Lcom/yelp/android/appdata/ApiPreferences$DeviceAwarePreference;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/appdata/ApiPreferences;->a(Ljava/lang/String;Z)V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    const v2, 0x7f0706ef

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->s()Lcom/yelp/android/services/backgroundlocation/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/services/backgroundlocation/a;->a()V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn$1;->a:Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;->a(Lcom/yelp/android/ui/activities/backgroundlocation/ActivityBackgroundLocationOptIn;)V

    .line 58
    return-void
.end method
