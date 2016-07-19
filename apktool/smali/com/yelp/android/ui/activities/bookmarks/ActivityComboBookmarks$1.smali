.class Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityComboBookmarks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 115
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 116
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks$1;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityComboBookmarks;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 117
    return-void
.end method
