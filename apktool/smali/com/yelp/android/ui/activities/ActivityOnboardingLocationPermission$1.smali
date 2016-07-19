.class Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;
.super Ljava/lang/Object;
.source "ActivityOnboardingLocationPermission.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->setResult(I)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;->finish()V

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission$1;->a:Lcom/yelp/android/ui/activities/ActivityOnboardingLocationPermission;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    goto :goto_0
.end method
