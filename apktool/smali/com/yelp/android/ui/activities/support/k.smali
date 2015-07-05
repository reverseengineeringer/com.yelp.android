.class Lcom/yelp/android/ui/activities/support/k;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/support/l;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/l;",
            ")V"
        }
    .end annotation

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/k;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 508
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/k;->b:Lcom/yelp/android/ui/activities/support/l;

    .line 509
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 513
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/k;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/k;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->cancel(Z)V

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/k;->b:Lcom/yelp/android/ui/activities/support/l;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/k;->b:Lcom/yelp/android/ui/activities/support/l;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/k;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/l;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 519
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/k;->b:Lcom/yelp/android/ui/activities/support/l;

    .line 520
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/k;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 521
    return-void
.end method
