.class final enum Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet$1;
.super Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;
.source "FacebookConnectManager.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;)V
    .locals 6

    .prologue
    .line 80
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;-><init>(Ljava/lang/String;I[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;[Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;Lcom/yelp/android/ui/activities/fc;)V

    return-void
.end method


# virtual methods
.method public allReadPermissionsGranted(Lcom/facebook/Session;)Z
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->PUBLIC_PROFILE:Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager$FacebookPermission;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/Session;->isPermissionGranted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
