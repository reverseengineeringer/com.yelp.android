.class Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;
.super Ljava/lang/Object;
.source "ActivityMessageTheBusiness.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;
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
        "Lcom/yelp/android/appdata/webrequests/messaging/k$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/k$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/messaging/k$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->a(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-object v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->b(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Ljava/lang/String;)Ljava/lang/String;

    .line 386
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    iget-boolean v1, p2, Lcom/yelp/android/appdata/webrequests/messaging/k$a;->c:Z

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->c(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;Z)Z

    .line 387
    iget-object v0, p0, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a:Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;->d(Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness;)V

    .line 388
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0
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
    .line 379
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 376
    check-cast p2, Lcom/yelp/android/appdata/webrequests/messaging/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/messaging/ActivityMessageTheBusiness$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/messaging/k$a;)V

    return-void
.end method
