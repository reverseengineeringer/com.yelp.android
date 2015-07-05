.class final Lcom/yelp/android/ui/activities/settings/ag;
.super Ljava/lang/Object;
.source "OnTwitterSettingChange.java"

# interfaces
.implements Lcom/yelp/android/av/i;
.implements Lcom/yelp/android/ui/activities/settings/q;


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 23
    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 40
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
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
    .line 28
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->h()Lcom/yelp/android/appdata/RemoteConfigPreferences;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/RemoteConfigPreferences;->h()Z

    move-result v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ag;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/ag;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
