.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;
.super Ljava/lang/Object;
.source "MediaViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->c(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;)Z

    move-result v3

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;

    move-result-object v4

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;->a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$a;Z)V

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$6;->a:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Z)V

    .line 472
    return-void

    :cond_0
    move v0, v2

    .line 470
    goto :goto_0

    :cond_1
    move v1, v2

    .line 471
    goto :goto_1
.end method
