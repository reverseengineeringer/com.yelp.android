.class Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;
.super Ljava/lang/Object;
.source "InlineAlertsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/ui/activities/notifications/b;Lcom/yelp/android/serializable/Alert;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/Alert;

.field final synthetic b:I

.field final synthetic c:Lcom/yelp/android/ui/activities/feed/viewbinder/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/serializable/Alert;I)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->a:Lcom/yelp/android/serializable/Alert;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->c:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/q;)Lcom/yelp/android/ui/activities/notifications/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->a:Lcom/yelp/android/serializable/Alert;

    const/4 v2, 0x0

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$2;->b:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/notifications/a$a;->a(Lcom/yelp/android/serializable/Alert;II)V

    .line 144
    return-void
.end method
