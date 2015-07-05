.class Lcom/yelp/android/ui/activities/fd;
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
    .line 412
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 416
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allReadPermissionsGranted(Lcom/facebook/Session;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->hasPublishPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p1, p0}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allPublishPermissionsGranted(Lcom/facebook/Session;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 436
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getPublishPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 438
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h(Lcom/yelp/android/ui/activities/FacebookConnectManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/Session$NewPermissionsRequest;->setRequestCode(I)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/Session$StatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 444
    :cond_4
    invoke-virtual {p2}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v0, :cond_5

    instance-of v0, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_6

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 449
    :cond_6
    if-eqz p3, :cond_0

    .line 452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/fd;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0, p3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
