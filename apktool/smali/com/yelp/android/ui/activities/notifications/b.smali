.class Lcom/yelp/android/ui/activities/notifications/b;
.super Ljava/lang/Object;
.source "AlertListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Alert;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/notifications/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;I)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/b;->c:Lcom/yelp/android/ui/activities/notifications/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Lcom/yelp/android/serializable/Alert;

    iput p3, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/b;->c:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/a;->a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/b;->a:Lcom/yelp/android/serializable/Alert;

    const/4 v2, 0x0

    iget v3, p0, Lcom/yelp/android/ui/activities/notifications/b;->b:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/notifications/e;->a(Lcom/yelp/android/serializable/Alert;II)V

    .line 45
    return-void
.end method
