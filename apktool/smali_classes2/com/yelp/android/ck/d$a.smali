.class Lcom/yelp/android/ck/d$a;
.super Ljava/lang/Object;
.source "OnFacebookSettingsChange.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;
.implements Lcom/yelp/android/ui/activities/FacebookConnectManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ck/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/core/c$a;",
        "Lcom/yelp/android/ui/activities/FacebookConnectManager$a",
        "<",
        "Lcom/yelp/android/ui/activities/settings/ChangeSettings;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ck/d;

.field private final b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ck/d;Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yelp/android/ck/d$a;->a:Lcom/yelp/android/ck/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/yelp/android/ck/d$a;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 34
    return-void
.end method

.method private a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V
    .locals 2
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
    .line 74
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/serializable/User;->c(Z)V

    .line 75
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    .line 76
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 77
    iget-object v1, p0, Lcom/yelp/android/ck/d$a;->a:Lcom/yelp/android/ck/d;

    invoke-static {v1}, Lcom/yelp/android/ck/d;->a(Lcom/yelp/android/ck/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
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
    iget-object v0, p0, Lcom/yelp/android/ck/d$a;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 45
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->c(Z)V

    .line 46
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
    .line 55
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ck/d$a;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 56
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
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ck/d$a;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 62
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
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ck/d$a;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Z)V

    .line 67
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
    .line 50
    invoke-virtual {p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->b()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v1, 0x7f07051c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->showLoadingDialog(I)V

    .line 51
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
    iget-object v0, p0, Lcom/yelp/android/ck/d$a;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->hideLoadingDialog()V

    .line 39
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->c(Z)V

    .line 40
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ck/d$a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
