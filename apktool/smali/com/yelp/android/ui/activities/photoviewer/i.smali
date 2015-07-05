.class Lcom/yelp/android/ui/activities/photoviewer/i;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/photoviewer/ad;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 840
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v1

    const/16 v2, 0x40d

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;-><init>(Lcom/yelp/android/appdata/n;I)V

    .line 842
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->UserImageUpload:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 843
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    .line 844
    return-void
.end method

.method public a(I)V
    .locals 3

    .prologue
    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x413

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivityForResult(Landroid/content/Intent;I)V

    .line 761
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 7

    .prologue
    const v6, 0x7f04001e

    const v5, 0x7f040019

    .line 765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->k(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 766
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 772
    if-eqz v0, :cond_0

    .line 777
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 778
    const-string/jumbo v1, "id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->l(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->VIDEO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 780
    check-cast v1, Lcom/yelp/android/serializable/Video;

    .line 781
    const-string/jumbo v3, "video_id"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Video;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    const-string/jumbo v3, "video_source"

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Video;->getVideoSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoFeedbackList:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 789
    :goto_1
    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;->a(Lcom/yelp/android/serializable/Media;)Lcom/yelp/android/ui/activities/photoviewer/WhoLikedThisBizPhotoFragment;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v5, v6, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c017b

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 785
    :cond_2
    const-string/jumbo v1, "photo_id"

    invoke-interface {v0}, Lcom/yelp/android/serializable/Media;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    sget-object v1, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessPhotoFeedbackList:Lcom/yelp/android/analytics/iris/ViewIri;

    invoke-static {v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public a(Lcom/yelp/android/serializable/Media;)V
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->c(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V

    .line 810
    :cond_0
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/Photo;)V
    .locals 4

    .prologue
    .line 821
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    instance-of v0, v0, Lcom/yelp/android/ui/activities/photoviewer/UserMediaViewer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->UserPhotoCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    const-string/jumbo v1, "photo_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;Ljava/lang/Object;)V

    .line 826
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    sget-object v1, Lcom/yelp/android/serializable/Compliment$ComplimentType;->PHOTOS:Lcom/yelp/android/serializable/Compliment$ComplimentType;

    invoke-static {v0, p1, v1}, Lcom/yelp/android/ui/activities/compliments/SendCompliment;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Complimentable;Lcom/yelp/android/serializable/Compliment$ComplimentType;)Landroid/content/Intent;

    move-result-object v0

    .line 828
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    const v3, 0x7f070369

    invoke-static {v2, v3, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivity(Landroid/content/Intent;)V

    .line 830
    return-void

    .line 821
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCompliment:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v1, p1}, Lcom/yelp/android/ui/activities/profile/ActivityUserProfile;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivity(Landroid/content/Intent;)V

    .line 754
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Media;)V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0, p1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->d(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V

    .line 817
    :cond_0
    return-void
.end method

.method public b(Lcom/yelp/android/serializable/Photo;)V
    .locals 3

    .prologue
    .line 848
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->BusinessPhotoCaptionEdit:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v1, "photo_id"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 850
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra.business"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 851
    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v2, p1, v0}, Lcom/yelp/android/ui/activities/photoviewer/EditPhotoCaption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Photo;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivity(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method public c(Lcom/yelp/android/serializable/Media;)V
    .locals 3

    .prologue
    .line 834
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/i;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->startActivity(Landroid/content/Intent;)V

    .line 836
    return-void
.end method
