.class Lcom/yelp/android/ui/activities/events/h;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/h;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/h;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Button:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 478
    return-void
.end method
