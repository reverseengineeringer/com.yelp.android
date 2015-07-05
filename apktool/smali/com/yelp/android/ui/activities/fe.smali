.class Lcom/yelp/android/ui/activities/fe;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 461
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allPublishPermissionsGranted(Lcom/facebook/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 474
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v0, :cond_3

    instance-of v0, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_4

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 477
    :cond_4
    if-eqz p3, :cond_0

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fe;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
