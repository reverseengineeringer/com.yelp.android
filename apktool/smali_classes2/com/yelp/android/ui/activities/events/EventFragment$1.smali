.class Lcom/yelp/android/ui/activities/events/EventFragment$1;
.super Ljava/lang/Object;
.source "EventFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/events/EventFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventFragment;)V
    .locals 0

    .prologue
    .line 493
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventFragment$1;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    sget-object v1, Lcom/yelp/android/analytics/iris/IriSource;->Button:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->a(Lcom/yelp/android/ui/activities/events/EventFragment;Lcom/yelp/android/analytics/iris/IriSource;)V

    .line 497
    return-void
.end method
