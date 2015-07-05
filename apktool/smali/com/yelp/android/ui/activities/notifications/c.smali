.class Lcom/yelp/android/ui/activities/notifications/c;
.super Ljava/lang/Object;
.source "AlertListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Alert;

.field final synthetic b:Lcom/yelp/android/ui/activities/notifications/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/c;->b:Lcom/yelp/android/ui/activities/notifications/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/notifications/c;->a:Lcom/yelp/android/serializable/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/c;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/a;->a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/c;->a:Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->getVideo()Lcom/yelp/android/serializable/Video;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/notifications/e;->a(Lcom/yelp/android/serializable/Media;)V

    .line 54
    return-void
.end method
