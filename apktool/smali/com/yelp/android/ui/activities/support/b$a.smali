.class Lcom/yelp/android/ui/activities/support/b$a;
.super Ljava/lang/Object;
.source "YelpActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/ApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/ui/activities/support/b$b;


# direct methods
.method public constructor <init>(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/ui/activities/support/b$b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/b$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 483
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/b$a;->b:Lcom/yelp/android/ui/activities/support/b$b;

    .line 484
    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->a(Z)V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$a;->b:Lcom/yelp/android/ui/activities/support/b$b;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/b$a;->b:Lcom/yelp/android/ui/activities/support/b$b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/b$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/support/b$b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 494
    :cond_1
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b$a;->b:Lcom/yelp/android/ui/activities/support/b$b;

    .line 495
    iput-object v2, p0, Lcom/yelp/android/ui/activities/support/b$a;->a:Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 496
    return-void
.end method
