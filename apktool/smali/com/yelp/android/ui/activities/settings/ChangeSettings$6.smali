.class Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "ChangeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/settings/ChangeSettings;->b(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/dr$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/settings/ChangeSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/dr$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->f()V

    .line 608
    iget-boolean v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    if-nez v0, :cond_1

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 618
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    .line 619
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->a:Ljava/lang/String;

    iget-object v4, p2, Lcom/yelp/android/appdata/webrequests/dr$a;->a:Lcom/yelp/android/serializable/Location;

    invoke-virtual {v4}, Lcom/yelp/android/serializable/Location;->h()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->a(Landroid/content/Context;Landroid/support/v4/app/l;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x1

    return v0
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
    .line 599
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c()V

    .line 600
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->f()V

    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->b:Lcom/yelp/android/ui/activities/settings/ChangeSettings;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/settings/ChangeSettings;->c(Lcom/yelp/android/ui/activities/settings/ChangeSettings;)V

    .line 602
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 590
    check-cast p2, Lcom/yelp/android/appdata/webrequests/dr$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/settings/ChangeSettings$6;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/dr$a;)V

    return-void
.end method
