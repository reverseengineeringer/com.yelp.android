.class Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "ReviewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 202
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 204
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/yelp/android/serializable/Photo;

    .line 207
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->b(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/ui/activities/addphoto/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/IdentifiableMedia;)V

    .line 215
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->a(Lcom/yelp/android/serializable/Photo;)V

    .line 216
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment$2;->a:Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;->a(Lcom/yelp/android/ui/activities/reviewpage/ReviewFragment;)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.review.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 221
    :cond_0
    return-void
.end method
