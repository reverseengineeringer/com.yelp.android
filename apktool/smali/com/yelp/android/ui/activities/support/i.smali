.class Lcom/yelp/android/ui/activities/support/i;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/l;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/h;)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/i;->a:Lcom/yelp/android/ui/activities/support/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/i;->a:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->f()V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/i;->a:Lcom/yelp/android/ui/activities/support/h;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    .line 406
    return-void
.end method
