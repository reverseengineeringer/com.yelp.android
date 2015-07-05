.class Lcom/yelp/android/ui/activities/photoviewer/ap;
.super Ljava/lang/Object;
.source "VideoPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/ap;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ap;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/ap;->a:Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;->b(Lcom/yelp/android/ui/activities/photoviewer/VideoPageFragment;)Lcom/yelp/android/ui/activities/photoviewer/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/photoviewer/am;->b()V

    .line 262
    :cond_0
    return-void
.end method
