.class Lcom/yelp/android/ui/activities/settings/aa;
.super Ljava/lang/Object;
.source "OnFacebookSettingsChange.java"

# interfaces
.implements Lcom/yelp/android/av/i;
.implements Lcom/yelp/android/ui/activities/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/av/i;",
        "Lcom/yelp/android/ui/activities/fg",
        "<",
        "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/z;

.field private final b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/settings/z;Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/aa;->a:Lcom/yelp/android/ui/activities/settings/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 76
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 77
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 79
    return-void
.end method


# virtual methods
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
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 45
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/aa;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 57
    return-void
.end method

.method public a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/aa;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 63
    return-void
.end method

.method public b(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/activities/settings/aa;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 68
    return-void
.end method

.method public c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ui/activities/FacebookConnectManager",
            "<",
            "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 52
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
    .line 38
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 39
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/aa;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/aa;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/aa;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
