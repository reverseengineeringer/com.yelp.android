.class Lcom/yelp/android/ui/activities/photoviewer/b;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)V
    .locals 0

    .prologue
    .line 882
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/b;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 885
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/b;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/k;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->c(Lcom/yelp/android/ui/activities/photoviewer/k;)Z

    move-result v3

    .line 886
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/b;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->m(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;)Lcom/yelp/android/ui/activities/photoviewer/k;

    move-result-object v4

    if-nez v3, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v4, v0}, Lcom/yelp/android/ui/activities/photoviewer/k;->a(Lcom/yelp/android/ui/activities/photoviewer/k;Z)V

    .line 887
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/b;->a:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    if-nez v3, :cond_1

    :goto_1
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->b(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Z)V

    .line 888
    return-void

    :cond_0
    move v0, v2

    .line 886
    goto :goto_0

    :cond_1
    move v1, v2

    .line 887
    goto :goto_1
.end method
