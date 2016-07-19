.class Lcom/yelp/android/ui/activities/notifications/a$4;
.super Ljava/lang/Object;
.source "AlertListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/notifications/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Alert;

.field final synthetic b:Lcom/yelp/android/ui/activities/notifications/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/a$4;->b:Lcom/yelp/android/ui/activities/notifications/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/notifications/a$4;->a:Lcom/yelp/android/serializable/Alert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/a$4;->b:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/a;->a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/a$4;->a:Lcom/yelp/android/serializable/Alert;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Alert;->h()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/notifications/a$a;->a(Lcom/yelp/android/serializable/Media;)V

    .line 78
    return-void
.end method
