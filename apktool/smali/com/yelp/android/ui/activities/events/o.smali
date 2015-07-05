.class Lcom/yelp/android/ui/activities/events/o;
.super Lcom/yelp/android/analytics/d;
.source "EventFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;)V
    .locals 0

    .prologue
    .line 592
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/o;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0, p2}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/o;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Button:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 596
    return-void
.end method
