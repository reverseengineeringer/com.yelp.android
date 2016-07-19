.class Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;
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

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/viewbinder/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/serializable/Alert;II)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->a:Lcom/yelp/android/serializable/Alert;

    iput p3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->b:I

    iput p4, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->d:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/viewbinder/q;->a(Lcom/yelp/android/ui/activities/feed/viewbinder/q;)Lcom/yelp/android/ui/activities/notifications/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->a:Lcom/yelp/android/serializable/Alert;

    iget v2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->b:I

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$3;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/yelp/android/ui/activities/notifications/a$a;->a(Lcom/yelp/android/serializable/Alert;II)V

    .line 158
    return-void
.end method
