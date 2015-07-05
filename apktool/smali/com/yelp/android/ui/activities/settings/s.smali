.class abstract Lcom/yelp/android/ui/activities/settings/s;
.super Ljava/lang/Object;
.source "KeyChangeCallback.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field protected final c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/s;->c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 30
    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/s;->a:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method abstract a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/RemoteConfigPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/s;->c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p2}, Lcom/yelp/android/ui/activities/settings/s;->a(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 42
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 43
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/s;->c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    .line 45
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
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
    .line 35
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/s;->c:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p2, Lcom/yelp/android/appdata/RemoteConfigPreferences;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/s;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/RemoteConfigPreferences;)V

    return-void
.end method
