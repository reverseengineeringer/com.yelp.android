.class Lcom/yelp/android/ui/activities/photoviewer/f;
.super Ljava/lang/Object;
.source "ActivityMediaViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Media;

.field final synthetic b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/yelp/android/ui/activities/photoviewer/f;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/photoviewer/f;->a:Lcom/yelp/android/serializable/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 479
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/f;->b:Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/f;->a:Lcom/yelp/android/serializable/Media;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;->a(Lcom/yelp/android/ui/activities/photoviewer/ActivityMediaViewer;Lcom/yelp/android/serializable/Media;)V

    .line 480
    return-void
.end method
