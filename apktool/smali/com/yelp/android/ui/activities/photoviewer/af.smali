.class Lcom/yelp/android/ui/activities/photoviewer/af;
.super Ljava/lang/Object;
.source "PhotoPageAddMediaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string/jumbo v2, "business_id"

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "extra.business"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v0, "source"

    const-string/jumbo v2, "image_viewer_page"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extra.business"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/af;->a:Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/16 v3, 0x12c

    const v4, 0x7f070352

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/16 v2, 0x40d

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/photoviewer/PhotoPageAddMediaFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    return-void
.end method
