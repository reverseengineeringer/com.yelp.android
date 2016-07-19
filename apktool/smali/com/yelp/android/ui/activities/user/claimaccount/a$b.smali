.class public Lcom/yelp/android/ui/activities/user/claimaccount/a$b;
.super Ljava/lang/Object;
.source "ClaimPlatformAccountContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/user/claimaccount/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public static a(Landroid/content/Intent;)Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;
    .locals 2

    .prologue
    .line 24
    new-instance v1, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    const-string/jumbo v0, "platform_confirmation"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PlatformConfirmation;

    invoke-direct {v1, v0}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;-><init>(Lcom/yelp/android/serializable/PlatformConfirmation;)V

    return-object v1
.end method
