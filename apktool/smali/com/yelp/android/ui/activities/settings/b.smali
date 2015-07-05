.class Lcom/yelp/android/ui/activities/settings/b;
.super Lcom/yelp/android/ui/activities/settings/s;
.source "BaseSaveAccountConfigKeyChangeListener.java"


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/a;Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/b;->b:Lcom/yelp/android/ui/activities/settings/a;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/settings/b;->a:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/yelp/android/ui/activities/settings/s;-><init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/b;->b:Lcom/yelp/android/ui/activities/settings/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yelp/android/ui/activities/settings/a;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/b;->b:Lcom/yelp/android/ui/activities/settings/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/b;->c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/b;->a:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/a;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;Ljava/lang/String;)V

    .line 30
    return-void
.end method
