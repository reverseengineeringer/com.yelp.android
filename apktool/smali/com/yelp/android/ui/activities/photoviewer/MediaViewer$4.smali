.class Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;
.super Ljava/lang/Object;
.source "MediaViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->f(Lcom/yelp/android/serializable/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Media;

.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;->b:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;->a:Lcom/yelp/android/serializable/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;->b:Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer$4;->a:Lcom/yelp/android/serializable/Media;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/MediaViewer;Lcom/yelp/android/serializable/Media;)V

    .line 379
    return-void
.end method
