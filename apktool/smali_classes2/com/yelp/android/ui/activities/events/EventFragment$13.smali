.class Lcom/yelp/android/ui/activities/events/EventFragment$13;
.super Lcom/yelp/android/analytics/d;
.source "EventFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/EventFragment;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 670
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$13;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/events/EventFragment$13;->a:Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$13;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$13;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/events/EventFragment$13;->b:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;)Lcom/yelp/android/serializable/Event;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/talk/EventTalkViewPost;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Event;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivity(Landroid/content/Intent;)V

    .line 674
    return-void
.end method
