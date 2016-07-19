.class final enum Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet$1;
.super Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
.source "FacebookConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V
    .locals 6

    .prologue
    .line 77
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;Lcom/yelp/android/ui/activities/FacebookConnectManager$1;)V

    return-void
.end method


# virtual methods
.method public allReadPermissionsGranted()Z
    .locals 2

    .prologue
    .line 90
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->d()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
