.class Lcom/yelp/android/ui/activities/FacebookConnectManager$2;
.super Ljava/lang/Object;
.source "FacebookConnectManager.java"

# interfaces
.implements Lcom/facebook/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/FacebookConnectManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 458
    return-void
.end method

.method public a(Lcom/facebook/FacebookException;)V
    .locals 1

    .prologue
    .line 449
    instance-of v0, p1, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g()V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/ui/activities/FacebookConnectManager;Ljava/lang/Throwable;)V

    .line 453
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allReadPermissionsGranted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 443
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->hasPublishPermissions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->allPublishPermissionsGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->f(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    goto :goto_0

    .line 434
    :cond_2
    invoke-static {}, Lcom/facebook/login/c;->a()Lcom/facebook/login/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->g(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/d;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->h(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/facebook/f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/c;->a(Lcom/facebook/d;Lcom/facebook/f;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->getPublishPermissions()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 439
    invoke-static {}, Lcom/facebook/login/c;->a()Lcom/facebook/login/c;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/FacebookConnectManager$2;->a:Lcom/yelp/android/ui/activities/FacebookConnectManager;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c(Lcom/yelp/android/ui/activities/FacebookConnectManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/login/c;->b(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_0
.end method
