.class Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;
.super Ljava/lang/Object;
.source "ActivityFirstAwards.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/profile/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Tip;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v2, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    new-instance v3, Lcom/yelp/android/appdata/webrequests/em;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->g()Lcom/yelp/android/serializable/Feedback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Feedback;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v5}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->c(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/appdata/webrequests/core/c$a;

    move-result-object v5

    invoke-direct {v3, v4, v0, v5}, Lcom/yelp/android/appdata/webrequests/em;-><init>(Ljava/lang/String;ZLcom/yelp/android/appdata/webrequests/core/c$a;)V

    invoke-static {v2, v3}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->a(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;Lcom/yelp/android/appdata/webrequests/em;)Lcom/yelp/android/appdata/webrequests/em;

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards$7;->a:Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;->d(Lcom/yelp/android/ui/activities/profile/ActivityFirstAwards;)Lcom/yelp/android/appdata/webrequests/em;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/em;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 309
    return-void

    :cond_0
    move v0, v1

    .line 303
    goto :goto_0
.end method
