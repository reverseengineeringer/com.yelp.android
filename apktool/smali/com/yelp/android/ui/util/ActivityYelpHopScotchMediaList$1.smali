.class Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityYelpHopScotchMediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList$1;->a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 164
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Media;

    .line 165
    sget-object v1, Lcom/yelp/android/serializable/Media$MediaType;->PHOTO:Lcom/yelp/android/serializable/Media$MediaType;

    invoke-interface {v0, v1}, Lcom/yelp/android/serializable/Media;->a(Lcom/yelp/android/serializable/Media$MediaType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList$1;->a:Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;

    iget-object v1, v1, Lcom/yelp/android/ui/util/ActivityYelpHopScotchMediaList;->c:Lcom/yelp/android/ui/activities/addphoto/a;

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/serializable/IdentifiableMedia;)V

    .line 168
    :cond_0
    return-void
.end method
