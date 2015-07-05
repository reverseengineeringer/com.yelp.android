.class Lcom/yelp/android/ui/util/a;
.super Landroid/content/BroadcastReceiver;
.source "ActivityYelpHopScotchMediaList.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/yelp/android/ui/util/a;->a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 170
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 171
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->isMediaType(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/yelp/android/ui/util/a;->a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;

    iget-object v1, v1, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/i;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/serializable/IdentifiableMedia;)V

    .line 174
    :cond_0
    return-void
.end method
