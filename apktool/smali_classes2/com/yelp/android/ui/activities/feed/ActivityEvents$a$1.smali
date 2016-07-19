.class Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;
.super Ljava/lang/Object;
.source "ActivityEvents.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;I)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;->b:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    iput p2, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;->b:Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;

    iget v3, p0, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a$1;->a:I

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/feed/ActivityEvents$a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event;

    sget-object v3, Lcom/yelp/android/analytics/iris/IriSource;->Feed:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v2, v0, v3}, Lcom/yelp/android/ui/activities/events/ActivityEventPage;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;Lcom/yelp/android/analytics/iris/IriSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    return-void
.end method
