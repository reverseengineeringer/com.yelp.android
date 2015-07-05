.class Lcom/yelp/android/ui/activities/compliments/j;
.super Ljava/lang/Object;
.source "ViewCompliments.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/j;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/Compliment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/j;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/compliments/a;->b(Ljava/lang/Object;)V

    .line 81
    new-instance v0, Lcom/yelp/android/ui/activities/profile/j;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/j;-><init>()V

    .line 82
    sget-object v1, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/compliments/j;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/compliments/ViewCompliments;->b(Lcom/yelp/android/ui/activities/compliments/ViewCompliments;)Lcom/yelp/android/ui/activities/compliments/Mode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 83
    iput-object p2, v0, Lcom/yelp/android/ui/activities/profile/j;->a:Lcom/yelp/android/serializable/Compliment;

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/j;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/j;->a(Landroid/content/Context;)V

    .line 90
    return-void

    .line 87
    :cond_0
    const/4 v1, -0x1

    iput v1, v0, Lcom/yelp/android/ui/activities/profile/j;->b:I

    goto :goto_0
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
    .line 75
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/j;->a:Lcom/yelp/android/ui/activities/compliments/ViewCompliments;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 76
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p2, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/j;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method
