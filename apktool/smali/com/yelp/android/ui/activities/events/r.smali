.class Lcom/yelp/android/ui/activities/events/r;
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
    .line 900
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/r;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/r;->a:Lcom/yelp/android/ui/activities/events/EventFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->b(Lcom/yelp/android/ui/activities/events/EventFragment;)V

    .line 904
    return-void
.end method
