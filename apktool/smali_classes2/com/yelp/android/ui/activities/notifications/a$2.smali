.class Lcom/yelp/android/ui/activities/notifications/a$2;
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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/notifications/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/notifications/a;Lcom/yelp/android/serializable/Alert;II)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->d:Lcom/yelp/android/ui/activities/notifications/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->a:Lcom/yelp/android/serializable/Alert;

    iput p3, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->b:I

    iput p4, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->d:Lcom/yelp/android/ui/activities/notifications/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/notifications/a;->a(Lcom/yelp/android/ui/activities/notifications/a;)Lcom/yelp/android/ui/activities/notifications/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->a:Lcom/yelp/android/serializable/Alert;

    iget v2, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->b:I

    iget v3, p0, Lcom/yelp/android/ui/activities/notifications/a$2;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/notifications/a$a;->a(Lcom/yelp/android/serializable/Alert;II)V

    .line 60
    return-void
.end method
