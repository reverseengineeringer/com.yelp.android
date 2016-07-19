.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;
.super Ljava/lang/Object;
.source "ActivityComboBookmarks.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

.field private b:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->b:Lcom/yelp/android/serializable/YelpBusiness;

    .line 553
    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->b:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 561
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
    .line 565
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->i(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)Lcom/yelp/android/ui/dialogs/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/e;->dismiss()V

    .line 568
    :cond_0
    const v0, 0x7f070299

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 569
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 547
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
