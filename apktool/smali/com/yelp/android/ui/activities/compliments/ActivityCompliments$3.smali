.class Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;
.super Ljava/lang/Object;
.source "ActivityCompliments.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;
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
        "Lcom/yelp/android/serializable/Compliment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

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
    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;-><init>()V

    .line 316
    iput-object p2, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a:Lcom/yelp/android/serializable/Compliment;

    .line 317
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->b(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/Mode;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ui/activities/compliments/Mode;->APPROVE:Lcom/yelp/android/ui/activities/compliments/Mode;

    if-ne v1, v2, :cond_0

    .line 318
    const/4 v1, 0x1

    iput v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    .line 320
    :cond_0
    instance-of v1, p1, Lcom/yelp/android/appdata/webrequests/as$b;

    if-eqz v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/yelp/android/ui/activities/compliments/a;->c(Ljava/lang/Object;)V

    .line 322
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->c(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 323
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/compliments/a;->notifyDataSetChanged()V

    .line 324
    const/4 v1, 0x0

    iput v1, v0, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->b:I

    .line 326
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile$a;->a(Landroid/content/Context;)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->a(Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;)Lcom/yelp/android/ui/activities/compliments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/a;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;->finish()V

    .line 330
    :cond_2
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
    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a:Lcom/yelp/android/ui/activities/compliments/ActivityCompliments;

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 310
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    check-cast p2, Lcom/yelp/android/serializable/Compliment;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/compliments/ActivityCompliments$3;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/Compliment;)V

    return-void
.end method
