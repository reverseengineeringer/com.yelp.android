.class Lcom/yelp/android/ui/activities/profile/aa;
.super Lcom/yelp/android/analytics/d;
.source "UserProfileView.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Lcom/yelp/android/ui/activities/profile/UserProfileView;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/profile/UserProfileView;Lcom/yelp/android/analytics/iris/EventIri;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/yelp/android/ui/activities/profile/aa;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/profile/aa;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/aa;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/aa;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/profile/aa;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getPhotos()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;->b(Landroid/content/Context;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object v1

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/aa;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v2, 0x404

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v0

    const/16 v2, 0x40d

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    .line 248
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserImageUpload:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 249
    iget-object v0, p0, Lcom/yelp/android/ui/activities/profile/aa;->b:Lcom/yelp/android/ui/activities/profile/UserProfileView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/profile/UserProfileView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    goto :goto_0
.end method
