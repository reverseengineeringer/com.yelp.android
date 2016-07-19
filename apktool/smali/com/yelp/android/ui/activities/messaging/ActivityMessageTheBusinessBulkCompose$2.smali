.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusinessBulkCompose.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Lcom/yelp/android/appdata/webrequests/messaging/j$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/j$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/j$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->disableLoading()V

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 226
    const-string/jumbo v1, "confirmation_main"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/messaging/j$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v1, "confirmation_sub"

    iget-object v2, p2, Lcom/yelp/android/appdata/webrequests/messaging/j$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->setResult(ILandroid/content/Intent;)V

    .line 231
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->finish()V

    .line 233
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "unclaimed_widget"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 236
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 237
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessMultibizSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 238
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
    .line 217
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose;->disableLoading()V

    .line 219
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 214
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/j$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulkCompose$2;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/j$a;)V

    return-void
.end method
