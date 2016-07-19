.class Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;
.super Ljava/lang/Object;
.source "ActivityUserMediaGrid.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;
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
        "Lcom/yelp/android/appdata/webrequests/fk$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/fk$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fk$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a(Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fk$a;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->a(Lcom/yelp/android/serializable/Media;)V

    .line 176
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->hideLoadingDialog()V

    .line 177
    invoke-static {}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a()Landroid/content/Intent;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->sendBroadcast(Landroid/content/Intent;)V

    .line 180
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->a(Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;)Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/fk$a;->a()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/mediagrid/MediaGridFragment;->b(Lcom/yelp/android/serializable/Media;)V

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
    .line 163
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->hideLoadingDialog()V

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a:Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid;->disableLoading()V

    .line 165
    const v0, 0x7f0702aa

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 166
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 160
    check-cast p2, Lcom/yelp/android/appdata/webrequests/fk$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/mediagrid/ActivityUserMediaGrid$1;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/fk$a;)V

    return-void
.end method
