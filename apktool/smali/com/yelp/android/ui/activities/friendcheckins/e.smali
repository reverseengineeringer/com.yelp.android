.class Lcom/yelp/android/ui/activities/friendcheckins/e;
.super Ljava/lang/Object;
.source "CommentOnCheckIn.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Lcom/yelp/android/appdata/webrequests/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Lcom/yelp/android/appdata/webrequests/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->cancel(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    new-instance v1, Lcom/yelp/android/appdata/webrequests/ao;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->c(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-virtual {v4}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a()Lcom/yelp/android/serializable/Comment;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/ao;-><init>(Lcom/yelp/android/appdata/webrequests/m;Ljava/lang/String;Lcom/yelp/android/serializable/Comment;)V

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->a(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;Lcom/yelp/android/appdata/webrequests/am;)Lcom/yelp/android/appdata/webrequests/am;

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/activities/friendcheckins/e;->a:Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;->b(Lcom/yelp/android/ui/activities/friendcheckins/CommentOnCheckIn;)Lcom/yelp/android/appdata/webrequests/am;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/am;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 152
    :cond_1
    return-void
.end method
