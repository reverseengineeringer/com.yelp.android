.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;
.super Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;
.source "ActivityMessageTheBusinessBulk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->e(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "original_message_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 388
    iget-object v6, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    new-instance v0, Lcom/yelp/android/appdata/webrequests/messaging/j;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/ui/activities/messaging/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/messaging/b;->c()Ljava/util/Set;

    move-result-object v1

    check-cast p1, Lcom/yelp/android/cc/k;

    invoke-virtual {p1}, Lcom/yelp/android/cc/k;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "message_id"

    iget-object v5, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->h(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/appdata/webrequests/messaging/j;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    invoke-static {v6, v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;Lcom/yelp/android/appdata/webrequests/messaging/j;)Lcom/yelp/android/appdata/webrequests/messaging/j;

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk$5;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;->i(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusinessBulk;)Lcom/yelp/android/appdata/webrequests/messaging/j;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/messaging/j;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 396
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessMessageTheBusinessMultibizSend:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 397
    return-void
.end method
