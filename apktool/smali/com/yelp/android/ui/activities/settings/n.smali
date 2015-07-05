.class Lcom/yelp/android/ui/activities/settings/n;
.super Ljava/lang/Object;
.source "ChangeSettings.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/appdata/webrequests/er;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/er;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/er;",
            ")V"
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->f()V

    .line 566
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/er;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/er;->a:Lcom/yelp/android/serializable/Location;

    if-nez v0, :cond_1

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 573
    return-void

    .line 569
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    const v1, 0x7f07031a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/er;->a:Lcom/yelp/android/serializable/Location;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Location;->getDisplay()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1
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
    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a()V

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->f()V

    .line 560
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/n;->a:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 561
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 554
    check-cast p2, Lcom/yelp/android/appdata/webrequests/er;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/n;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/er;)V

    return-void
.end method
